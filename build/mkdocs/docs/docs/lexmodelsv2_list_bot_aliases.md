<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_bot_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of aliases for the specified bot

### Description

Gets a list of aliases for the specified bot.

### Usage

    lexmodelsv2_list_bot_aliases(botId, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_bot_aliases_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to list aliases
for.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_aliases_:_maxResults">maxResults</code></td>
<td><p>The maximum number of aliases to return in each page of results.
If there are fewer results than the max page size, only the actual
number of results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_bot_aliases_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_bot_aliases</code> operation
contains more results than specified in the <code>maxResults</code>
parameter, a token is returned in the response. Use that token in the
<code>nextToken</code> parameter to return the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botAliasSummaries = list(
        list(
          botAliasId = "string",
          botAliasName = "string",
          description = "string",
          botVersion = "string",
          botAliasStatus = "Creating"|"Available"|"Deleting"|"Failed",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string",
      botId = "string"
    )

### Request syntax

    svc$list_bot_aliases(
      botId = "string",
      maxResults = 123,
      nextToken = "string"
    )
