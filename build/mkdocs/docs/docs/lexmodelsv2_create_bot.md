<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Lex conversational bot

### Description

Creates an Amazon Lex conversational bot.

### Usage

    lexmodelsv2_create_bot(botName, description, roleArn, dataPrivacy,
      idleSessionTTLInSeconds, botTags, testBotAliasTags, botType, botMembers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_create_bot_:_botName">botName</code></td>
<td><p>[required] The name of the bot. The bot name must be unique in
the account that creates the bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_:_description">description</code></td>
<td><p>A description of the bot. It appears in lists to help you
identify a particular bot.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_create_bot_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that has
permission to access the bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_:_dataPrivacy">dataPrivacy</code></td>
<td><p>[required] Provides information on additional privacy protections
Amazon Lex should use with the bot's data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_:_idleSessionTTLInSeconds">idleSessionTTLInSeconds</code></td>
<td><p>[required] The time, in seconds, that Amazon Lex should keep
information about a user's conversation with the bot.</p>
<p>A user interaction remains active for the amount of time specified.
If no conversation occurs during this time, the session expires and
Amazon Lex deletes any data provided before the timeout.</p>
<p>You can specify between 60 (1 minute) and 86,400 (24 hours)
seconds.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_create_bot_:_botTags">botTags</code></td>
<td><p>A list of tags to add to the bot. You can only add tags when you
create a bot. You can't use the <code>update_bot</code> operation to
update tags. To update tags, use the <code>tag_resource</code>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_:_testBotAliasTags">testBotAliasTags</code></td>
<td><p>A list of tags to add to the test alias for a bot. You can only
add tags when you create a bot. You can't use the
<code>UpdateAlias</code> operation to update tags. To update tags on the
test alias, use the <code>tag_resource</code> operation.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_create_bot_:_botType">botType</code></td>
<td><p>The type of a bot to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_:_botMembers">botMembers</code></td>
<td><p>The list of bot members in a network to be created.</p></td>
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
      botTags = list(
        "string"
      ),
      testBotAliasTags = list(
        "string"
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

    svc$create_bot(
      botName = "string",
      description = "string",
      roleArn = "string",
      dataPrivacy = list(
        childDirected = TRUE|FALSE
      ),
      idleSessionTTLInSeconds = 123,
      botTags = list(
        "string"
      ),
      testBotAliasTags = list(
        "string"
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
