<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches an active index

### Description

Searches an active index. Use this API to search your documents using
query. The `query` API enables to do faceted search and to filter
results based on document attributes.

It also enables you to provide user context that Amazon Kendra uses to
enforce document access control in the search results.

Amazon Kendra searches your index for text content and question and
answer (FAQ) content. By default the response contains three types of
results.

-   Relevant passages

-   Matching FAQs

-   Relevant documents

You can specify that the query return only one type of result using the
`QueryResultTypeFilter` parameter.

Each query returns the 100 most relevant results.

### Usage

    kendra_query(IndexId, QueryText, AttributeFilter, Facets,
      RequestedDocumentAttributes, QueryResultTypeFilter,
      DocumentRelevanceOverrideConfigurations, PageNumber, PageSize,
      SortingConfiguration, UserContext, VisitorId,
      SpellCorrectionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_query_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index to search. The identifier
is returned in the response from the <code>create_index</code>
API.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_query_:_QueryText">QueryText</code></td>
<td><p>The input query text for the search. Amazon Kendra truncates
queries at 30 token words, which excludes punctuation and stop words.
Truncation still applies if you use Boolean or more advanced, complex
queries.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_query_:_AttributeFilter">AttributeFilter</code></td>
<td><p>Enables filtered searches based on document attributes. You can
only provide one attribute filter; however, the
<code>AndAllFilters</code>, <code>NotFilter</code>, and
<code>OrAllFilters</code> parameters contain a list of other
filters.</p>
<p>The <code>AttributeFilter</code> parameter enables you to create a
set of filtering rules that a document must satisfy to be included in
the query results.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_query_:_Facets">Facets</code></td>
<td><p>An array of documents attributes. Amazon Kendra returns a count
for each attribute key specified. This helps your users narrow their
search.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_query_:_RequestedDocumentAttributes">RequestedDocumentAttributes</code></td>
<td><p>An array of document attributes to include in the response. You
can limit the response to include certain document attributes. By
default all document attributes are included in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_query_:_QueryResultTypeFilter">QueryResultTypeFilter</code></td>
<td><p>Sets the type of query. Only results for the specified query type
are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_query_:_DocumentRelevanceOverrideConfigurations">DocumentRelevanceOverrideConfigurations</code></td>
<td><p>Overrides relevance tuning configurations of fields or attributes
set at the index level.</p>
<p>If you use this API to override the relevance tuning configured at
the index level, but there is no relevance tuning configured at the
index level, then Amazon Kendra does not apply any relevance tuning.</p>
<p>If there is relevance tuning configured at the index level, but you
do not use this API to override any relevance tuning in the index, then
Amazon Kendra uses the relevance tuning that is configured at the index
level.</p>
<p>If there is relevance tuning configured for fields at the index
level, but you use this API to override only some of these fields, then
for the fields you did not override, the importance is set to
1.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_query_:_PageNumber">PageNumber</code></td>
<td><p>Query results are returned in pages the size of the
<code>PageSize</code> parameter. By default, Amazon Kendra returns the
first page of results. Use this parameter to get result pages after the
first one.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_query_:_PageSize">PageSize</code></td>
<td><p>Sets the number of results that are returned in each page of
results. The default page size is 10. The maximum number of results
returned is 100. If you ask for more than 100 results, only 100 are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_query_:_SortingConfiguration">SortingConfiguration</code></td>
<td><p>Provides information that determines how the results of the query
are sorted. You can set the field that Amazon Kendra should sort the
results on, and specify whether the results should be sorted in
ascending or descending order. In the case of ties in sorting the
results, the results are sorted by relevance.</p>
<p>If you don't provide sorting configuration, the results are sorted by
the relevance that Amazon Kendra determines for the result.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_query_:_UserContext">UserContext</code></td>
<td><p>The user context token or user and group information.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_query_:_VisitorId">VisitorId</code></td>
<td><p>Provides an identifier for a specific user. The
<code>VisitorId</code> should be a unique identifier, such as a GUID.
Don't use personally identifiable information, such as the user's email
address, as the <code>VisitorId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_query_:_SpellCorrectionConfiguration">SpellCorrectionConfiguration</code></td>
<td><p>Enables suggested spell corrections for queries.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryId = "string",
      ResultItems = list(
        list(
          Id = "string",
          Type = "DOCUMENT"|"QUESTION_ANSWER"|"ANSWER",
          Format = "TABLE"|"TEXT",
          AdditionalAttributes = list(
            list(
              Key = "string",
              ValueType = "TEXT_WITH_HIGHLIGHTS_VALUE",
              Value = list(
                TextWithHighlightsValue = list(
                  Text = "string",
                  Highlights = list(
                    list(
                      BeginOffset = 123,
                      EndOffset = 123,
                      TopAnswer = TRUE|FALSE,
                      Type = "STANDARD"|"THESAURUS_SYNONYM"
                    )
                  )
                )
              )
            )
          ),
          DocumentId = "string",
          DocumentTitle = list(
            Text = "string",
            Highlights = list(
              list(
                BeginOffset = 123,
                EndOffset = 123,
                TopAnswer = TRUE|FALSE,
                Type = "STANDARD"|"THESAURUS_SYNONYM"
              )
            )
          ),
          DocumentExcerpt = list(
            Text = "string",
            Highlights = list(
              list(
                BeginOffset = 123,
                EndOffset = 123,
                TopAnswer = TRUE|FALSE,
                Type = "STANDARD"|"THESAURUS_SYNONYM"
              )
            )
          ),
          DocumentURI = "string",
          DocumentAttributes = list(
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
          ),
          ScoreAttributes = list(
            ScoreConfidence = "VERY_HIGH"|"HIGH"|"MEDIUM"|"LOW"|"NOT_AVAILABLE"
          ),
          FeedbackToken = "string",
          TableExcerpt = list(
            Rows = list(
              list(
                Cells = list(
                  list(
                    Value = "string",
                    TopAnswer = TRUE|FALSE,
                    Highlighted = TRUE|FALSE,
                    Header = TRUE|FALSE
                  )
                )
              )
            ),
            TotalNumberOfRows = 123
          )
        )
      ),
      FacetResults = list(
        list(
          DocumentAttributeKey = "string",
          DocumentAttributeValueType = "STRING_VALUE"|"STRING_LIST_VALUE"|"LONG_VALUE"|"DATE_VALUE",
          DocumentAttributeValueCountPairs = list(
            list(
              DocumentAttributeValue = list(
                StringValue = "string",
                StringListValue = list(
                  "string"
                ),
                LongValue = 123,
                DateValue = as.POSIXct(
                  "2015-01-01"
                )
              ),
              Count = 123,
              FacetResults = list()
            )
          )
        )
      ),
      TotalNumberOfResults = 123,
      Warnings = list(
        list(
          Message = "string",
          Code = "QUERY_LANGUAGE_INVALID_SYNTAX"
        )
      ),
      SpellCorrectedQueries = list(
        list(
          SuggestedQueryText = "string",
          Corrections = list(
            list(
              BeginOffset = 123,
              EndOffset = 123,
              Term = "string",
              CorrectedTerm = "string"
            )
          )
        )
      ),
      FeaturedResultsItems = list(
        list(
          Id = "string",
          Type = "DOCUMENT"|"QUESTION_ANSWER"|"ANSWER",
          AdditionalAttributes = list(
            list(
              Key = "string",
              ValueType = "TEXT_WITH_HIGHLIGHTS_VALUE",
              Value = list(
                TextWithHighlightsValue = list(
                  Text = "string",
                  Highlights = list(
                    list(
                      BeginOffset = 123,
                      EndOffset = 123,
                      TopAnswer = TRUE|FALSE,
                      Type = "STANDARD"|"THESAURUS_SYNONYM"
                    )
                  )
                )
              )
            )
          ),
          DocumentId = "string",
          DocumentTitle = list(
            Text = "string",
            Highlights = list(
              list(
                BeginOffset = 123,
                EndOffset = 123,
                TopAnswer = TRUE|FALSE,
                Type = "STANDARD"|"THESAURUS_SYNONYM"
              )
            )
          ),
          DocumentExcerpt = list(
            Text = "string",
            Highlights = list(
              list(
                BeginOffset = 123,
                EndOffset = 123,
                TopAnswer = TRUE|FALSE,
                Type = "STANDARD"|"THESAURUS_SYNONYM"
              )
            )
          ),
          DocumentURI = "string",
          DocumentAttributes = list(
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
          ),
          FeedbackToken = "string"
        )
      )
    )

### Request syntax

    svc$query(
      IndexId = "string",
      QueryText = "string",
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
      Facets = list(
        list(
          DocumentAttributeKey = "string",
          Facets = list(),
          MaxResults = 123
        )
      ),
      RequestedDocumentAttributes = list(
        "string"
      ),
      QueryResultTypeFilter = "DOCUMENT"|"QUESTION_ANSWER"|"ANSWER",
      DocumentRelevanceOverrideConfigurations = list(
        list(
          Name = "string",
          Relevance = list(
            Freshness = TRUE|FALSE,
            Importance = 123,
            Duration = "string",
            RankOrder = "ASCENDING"|"DESCENDING",
            ValueImportanceMap = list(
              123
            )
          )
        )
      ),
      PageNumber = 123,
      PageSize = 123,
      SortingConfiguration = list(
        DocumentAttributeKey = "string",
        SortOrder = "DESC"|"ASC"
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
      ),
      VisitorId = "string",
      SpellCorrectionConfiguration = list(
        IncludeQuerySpellCheckSuggestions = TRUE|FALSE
      )
    )
