<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_get_query_suggestions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Fetches the queries that are suggested to your users

### Description

Fetches the queries that are suggested to your users.

`get_query_suggestions` is currently not supported in the Amazon Web
Services GovCloud (US-West) region.

### Usage

    kendra_get_query_suggestions(IndexId, QueryText, MaxSuggestionsCount,
      SuggestionTypes, AttributeSuggestionsConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_get_query_suggestions_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index you want to get query
suggestions from.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_get_query_suggestions_:_QueryText">QueryText</code></td>
<td><p>[required] The text of a user's query to generate query
suggestions.</p>
<p>A query is suggested if the query prefix matches what a user starts
to type as their query.</p>
<p>Amazon Kendra does not show any suggestions if a user types fewer
than two characters or more than 60 characters. A query must also have
at least one search result and contain at least one word of more than
four characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_get_query_suggestions_:_MaxSuggestionsCount">MaxSuggestionsCount</code></td>
<td><p>The maximum number of query suggestions you want to show to your
users.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_get_query_suggestions_:_SuggestionTypes">SuggestionTypes</code></td>
<td><p>The suggestions type to base query suggestions on. The suggestion
types are query history or document fields/attributes. You can set one
type or the other.</p>
<p>If you set query history as your suggestions type, Amazon Kendra
suggests queries relevant to your users based on popular queries in the
query history.</p>
<p>If you set document fields/attributes as your suggestions type,
Amazon Kendra suggests queries relevant to your users based on the
contents of document fields.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_get_query_suggestions_:_AttributeSuggestionsConfig">AttributeSuggestionsConfig</code></td>
<td><p>Configuration information for the document fields/attributes that
you want to base query suggestions on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QuerySuggestionsId = "string",
      Suggestions = list(
        list(
          Id = "string",
          Value = list(
            Text = list(
              Text = "string",
              Highlights = list(
                list(
                  BeginOffset = 123,
                  EndOffset = 123
                )
              )
            )
          ),
          SourceDocuments = list(
            list(
              DocumentId = "string",
              SuggestionAttributes = list(
                "string"
              ),
              AdditionalAttributes = list(
                list(
                  Key = "string",
                  Value = list(
                    StringValue = "string",
                    StringListValue = list(
                      "string"
                    ),
                    LongValue = 123,
                    DateValue = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_query_suggestions(
      IndexId = "string",
      QueryText = "string",
      MaxSuggestionsCount = 123,
      SuggestionTypes = list(
        "QUERY"|"DOCUMENT_ATTRIBUTES"
      ),
      AttributeSuggestionsConfig = list(
        SuggestionAttributes = list(
          "string"
        ),
        AdditionalResponseAttributes = list(
          "string"
        ),
        AttributeFilter = list(
          AndAllFilters = list(
            list()
          ),
          OrAllFilters = list(
            list()
          ),
          NotFilter = list(),
          EqualsTo = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          ContainsAll = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          ContainsAny = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          GreaterThan = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          GreaterThanOrEquals = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          LessThan = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          LessThanOrEquals = list(
            Key = "string",
            Value = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        ),
        UserContext = list(
          Token = "string",
          UserId = "string",
          Groups = list(
            "string"
          ),
          DataSourceGroups = list(
            list(
              GroupId = "string",
              DataSourceId = "string"
            )
          )
        )
      )
    )
