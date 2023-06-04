<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing bot

### Description

Updates the configuration of an existing bot.

### Usage

    lexmodelsv2_update_bot(botId, botName, description, roleArn,
      dataPrivacy, idleSessionTTLInSeconds, botType, botMembers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_update_bot_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot to update. This
identifier is returned by the <code>create_bot</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_update_bot_:_botName">botName</code></td>
<td><p>[required] The new name of the bot. The name must be unique in
the account that creates the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_:_description">description</code></td>
<td><p>A description of the bot.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_update_bot_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that has
permissions to access the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_:_dataPrivacy">dataPrivacy</code></td>
<td><p>[required] Provides information on additional privacy protections
Amazon Lex should use with the bot's data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_:_idleSessionTTLInSeconds">idleSessionTTLInSeconds</code></td>
<td><p>[required] The time, in seconds, that Amazon Lex should keep
information about a user's conversation with the bot.</p>
<p>A user interaction remains active for the amount of time specified.
If no conversation occurs during this time, the session expires and
Amazon Lex deletes any data provided before the timeout.</p>
<p>You can specify between 60 (1 minute) and 86,400 (24 hours)
seconds.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_update_bot_:_botType">botType</code></td>
<td><p>The type of the bot to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_:_botMembers">botMembers</code></td>
<td><p>The list of bot members in the network associated with the update
action.</p></td>
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
      )
    )

### Request syntax

    svc$update_bot(
      botId = "string",
      botName = "string",
      description = "string",
      roleArn = "string",
      dataPrivacy = list(
        childDirected = TRUE|FALSE
      ),
      idleSessionTTLInSeconds = 123,
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
