<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_bot_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides metadata about a version of a bot

### Description

Provides metadata about a version of a bot.

### Usage

    lexmodelsv2_describe_bot_version(botId, botVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_bot_version_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot containing the version to
return metadata for.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_describe_bot_version_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot to return metadata
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botName = "string",
      botVersion = "string",
      description = "string",
      roleArn = "string",
      dataPrivacy = list(
        childDirected = TRUE|FALSE
      ),
      idleSessionTTLInSeconds = 123,
      botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating",
      failureReasons = list(
        "string"
      ),
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      parentBotNetworks = list(
        list(
          botId = "string",
          botVersion = "string"
        )
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
      )
    )

### Request syntax

    svc$describe_bot_version(
      botId = "string",
      botVersion = "string"
    )
