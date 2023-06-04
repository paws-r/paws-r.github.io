<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides metadata information about a bot

### Description

Provides metadata information about a bot.

### Usage

    lexmodelsv2_describe_bot(botId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_describe_bot_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botName = "string",
      description = "string",
      roleArn = "string",
      dataPrivacy = list(
        childDirected = TRUE|FALSE
      ),
      idleSessionTTLInSeconds = 123,
      botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      botType = "Bot"|"BotNetwork",
      botMembers = list(
        list(
          botMemberId = "string",
          botMemberName = "string",
          botMemberAliasId = "string",
          botMemberAliasName = "string",
          botMemberVersion = "string"
        )
      ),
      failureReasons = list(
        "string"
      )
    )

### Request syntax

    svc$describe_bot(
      botId = "string"
    )
