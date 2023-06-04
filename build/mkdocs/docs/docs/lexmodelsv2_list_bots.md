<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_bots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of available bots

### Description

Gets a list of available bots.

### Usage

    lexmodelsv2_list_bots(sortBy, filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_bots_:_sortBy">sortBy</code></td>
<td><p>Specifies sorting parameters for the list of bots. You can
specify that the list be sorted by bot name in ascending or descending
order.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_bots_:_filters">filters</code></td>
<td><p>Provides the specification of a filter used to limit the bots in
the response to only those that match the filter specification. You can
only specify one filter and one string to filter on.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_bots_:_maxResults">maxResults</code></td>
<td><p>The maximum number of bots to return in each page of results. If
there are fewer results than the maximum page size, only the actual
number of results are returned.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_bots_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_bots</code> operation
contains more results than specified in the <code>maxResults</code>
parameter, a token is returned in the response.</p>
<p>Use the returned token in the <code>nextToken</code> parameter of a
<code>list_bots</code> request to return the next page of results. For a
complete set of results, call the <code>list_bots</code> operation until
the <code>nextToken</code> returned in the response is null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botSummaries = list(
        list(
          botId = "string",
          botName = "string",
          description = "string",
          botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating",
          latestBotVersion = "string",
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          botType = "Bot"|"BotNetwork"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_bots(
      sortBy = list(
        attribute = "BotName",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "BotName"|"BotType",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"|"NE"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
