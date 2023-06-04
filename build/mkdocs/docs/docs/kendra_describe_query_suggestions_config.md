<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_query_suggestions_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information on the settings of query suggestions for an index

### Description

Gets information on the settings of query suggestions for an index.

This is used to check the current settings applied to query suggestions.

`describe_query_suggestions_config` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_describe_query_suggestions_config(IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_describe_query_suggestions_config_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index with query suggestions
that you want to get information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Mode = "ENABLED"|"LEARN_ONLY",
      Status = "ACTIVE"|"UPDATING",
      QueryLogLookBackWindowInDays = 123,
      IncludeQueriesWithoutUserInformation = TRUE|FALSE,
      MinimumNumberOfQueryingUsers = 123,
      MinimumQueryCount = 123,
      LastSuggestionsBuildTime = as.POSIXct(
        "2015-01-01"
      ),
      LastClearTime = as.POSIXct(
        "2015-01-01"
      ),
      TotalSuggestionsCount = 123,
      AttributeSuggestionsConfig = list(
        SuggestableConfigList = list(
          list(
            AttributeName = "string",
            Suggestable = TRUE|FALSE
          )
        ),
        AttributeSuggestionsMode = "ACTIVE"|"INACTIVE"
      )
    )

### Request syntax

    svc$describe_query_suggestions_config(
      IndexId = "string"
    )
