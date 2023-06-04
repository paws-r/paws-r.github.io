<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_bot_locales</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of locales for the specified bot

### Description

Gets a list of locales for the specified bot.

### Usage

    lexmodelsv2_list_bot_locales(botId, botVersion, sortBy, filters,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_bot_locales_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to list locales
for.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_locales_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot to list locales for.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_bot_locales_:_sortBy">sortBy</code></td>
<td><p>Specifies sorting parameters for the list of locales. You can
sort by locale name in ascending or descending order.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_locales_:_filters">filters</code></td>
<td><p>Provides the specification for a filter used to limit the
response to only those locales that match the filter specification. You
can only specify one filter and one value to filter on.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_bot_locales_:_maxResults">maxResults</code></td>
<td><p>The maximum number of aliases to return in each page of results.
If there are fewer results than the max page size, only the actual
number of results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_locales_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_bot_locales</code> operation
contains more results than specified in the <code>maxResults</code>
parameter, a token is returned in the response. Use that token as the
<code>nextToken</code> parameter to return the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      nextToken = "string",
      botLocaleSummaries = list(
        list(
          localeId = "string",
          localeName = "string",
          description = "string",
          botLocaleStatus = "Creating"|"Building"|"Built"|"ReadyExpressTesting"|"Failed"|"Deleting"|"NotBuilt"|"Importing"|"Processing",
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastBuildSubmittedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_bot_locales(
      botId = "string",
      botVersion = "string",
      sortBy = list(
        attribute = "BotLocaleName",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "BotLocaleName",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
