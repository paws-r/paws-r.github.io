<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bot_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of aliases for a specified Amazon Lex bot

### Description

Returns a list of aliases for a specified Amazon Lex bot.

This operation requires permissions for the `lex:GetBotAliases` action.

### Usage

    lexmodelbuildingservice_get_bot_aliases(botName, nextToken, maxResults,
      nameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_aliases_:_botName">botName</code></td>
<td><p>[required] The name of the bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_aliases_:_nextToken">nextToken</code></td>
<td><p>A pagination token for fetching the next page of aliases. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of aliases, specify the
pagination token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_aliases_:_maxResults">maxResults</code></td>
<td><p>The maximum number of aliases to return in the response. The
default is 50. .</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_aliases_:_nameContains">nameContains</code></td>
<td><p>Substring to match in bot alias names. An alias will be returned
if any part of its name matches the substring. For example, "xyz"
matches both "xyzabc" and "abcxyz."</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BotAliases = list(
        list(
          name = "string",
          description = "string",
          botVersion = "string",
          botName = "string",
          lastUpdatedDate = as.POSIXct(
            "2015-01-01"
          ),
          createdDate = as.POSIXct(
            "2015-01-01"
          ),
          checksum = "string",
          conversationLogs = list(
            logSettings = list(
              list(
                logType = "AUDIO"|"TEXT",
                destination = "CLOUDWATCH_LOGS"|"S3",
                kmsKeyArn = "string",
                resourceArn = "string",
                resourcePrefix = "string"
              )
            ),
            iamRoleArn = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_bot_aliases(
      botName = "string",
      nextToken = "string",
      maxResults = 123,
      nameContains = "string"
    )
