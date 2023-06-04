<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_exports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the exports for a bot, bot locale, or custom vocabulary

### Description

Lists the exports for a bot, bot locale, or custom vocabulary. Exports
are kept in the list for 7 days.

### Usage

    lexmodelsv2_list_exports(botId, botVersion, sortBy, filters, maxResults,
      nextToken, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_exports_:_botId">botId</code></td>
<td><p>The unique identifier that Amazon Lex assigned to the
bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_exports_:_botVersion">botVersion</code></td>
<td><p>The version of the bot to list exports for.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_exports_:_sortBy">sortBy</code></td>
<td><p>Determines the field that the list of exports is sorted by. You
can sort by the <code>LastUpdatedDateTime</code> field in ascending or
descending order.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_exports_:_filters">filters</code></td>
<td><p>Provides the specification of a filter used to limit the exports
in the response to only those that match the filter specification. You
can only specify one filter and one string to filter on.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_exports_:_maxResults">maxResults</code></td>
<td><p>The maximum number of exports to return in each page of results.
If there are fewer results than the max page size, only the actual
number of results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_exports_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_exports</code> operation
contains more results that specified in the <code>maxResults</code>
parameter, a token is returned in the response.</p>
<p>Use the returned token in the <code>nextToken</code> parameter of a
<code>list_exports</code> request to return the next page of results.
For a complete set of results, call the <code>list_exports</code>
operation until the <code>nextToken</code> returned in the response is
null.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_exports_:_localeId">localeId</code></td>
<td><p>Specifies the resources that should be exported. If you don't
specify a resource type in the <code>filters</code> parameter, both bot
locales and custom vocabularies are exported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      exportSummaries = list(
        list(
          exportId = "string",
          resourceSpecification = list(
            botExportSpecification = list(
              botId = "string",
              botVersion = "string"
            ),
            botLocaleExportSpecification = list(
              botId = "string",
              botVersion = "string",
              localeId = "string"
            ),
            customVocabularyExportSpecification = list(
              botId = "string",
              botVersion = "string",
              localeId = "string"
            )
          ),
          fileFormat = "LexJson"|"TSV",
          exportStatus = "InProgress"|"Completed"|"Failed"|"Deleting",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string",
      localeId = "string"
    )

### Request syntax

    svc$list_exports(
      botId = "string",
      botVersion = "string",
      sortBy = list(
        attribute = "LastUpdatedDateTime",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "ExportResourceType",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"
        )
      ),
      maxResults = 123,
      nextToken = "string",
      localeId = "string"
    )
