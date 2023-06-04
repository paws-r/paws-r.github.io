<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bot_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about all of the versions of a bot

### Description

Gets information about all of the versions of a bot.

The `get_bot_versions` operation returns a `BotMetadata` object for each
version of a bot. For example, if a bot has three numbered versions, the
`get_bot_versions` operation returns four `BotMetadata` objects in the
response, one for each numbered version and one for the `⁠$LATEST⁠`
version.

The `get_bot_versions` operation always returns at least one version,
the `⁠$LATEST⁠` version.

This operation requires permissions for the `lex:GetBotVersions` action.

### Usage

    lexmodelbuildingservice_get_bot_versions(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_versions_:_name">name</code></td>
<td><p>[required] The name of the bot for which versions should be
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_versions_:_nextToken">nextToken</code></td>
<td><p>A pagination token for fetching the next page of bot versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of bot versions to return in the response. The
default is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bots = list(
        list(
          name = "string",
          description = "string",
          status = "BUILDING"|"READY"|"READY_BASIC_TESTING"|"FAILED"|"NOT_BUILT",
          lastUpdatedDate = as.POSIXct(
            "2015-01-01"
          ),
          createdDate = as.POSIXct(
            "2015-01-01"
          ),
          version = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_bot_versions(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
