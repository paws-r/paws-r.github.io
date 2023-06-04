<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_bot_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about all of the versions of a bot

### Description

Gets information about all of the versions of a bot.

The `list_bot_versions` operation returns a summary of each version of a
bot. For example, if a bot has three numbered versions, the
`list_bot_versions` operation returns for summaries, one for each
numbered version and one for the `DRAFT` version.

The `list_bot_versions` operation always returns at least one version,
the `DRAFT` version.

### Usage

    lexmodelsv2_list_bot_versions(botId, sortBy, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_bot_versions_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to list versions
for.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_bot_versions_:_sortBy">sortBy</code></td>
<td><p>Specifies sorting parameters for the list of versions. You can
specify that the list be sorted by version name in either ascending or
descending order.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_bot_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of versions to return in each page of results.
If there are fewer results than the max page size, only the actual
number of results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_versions_:_nextToken">nextToken</code></td>
<td><p>If the response to the <code>ListBotVersion</code> operation
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
      botId = "string",
      botVersionSummaries = list(
        list(
          botName = "string",
          botVersion = "string",
          description = "string",
          botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_bot_versions(
      botId = "string",
      sortBy = list(
        attribute = "BotVersion",
        order = "Ascending"|"Descending"
      ),
      maxResults = 123,
      nextToken = "string"
    )
