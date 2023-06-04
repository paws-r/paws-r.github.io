<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_put_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an alias for the specified version of the bot or replaces an alias for the specified bot

### Description

Creates an alias for the specified version of the bot or replaces an
alias for the specified bot. To change the version of the bot that the
alias points to, replace the alias. For more information about aliases,
see versioning-aliases.

This operation requires permissions for the `lex:PutBotAlias` action.

### Usage

    lexmodelbuildingservice_put_bot_alias(name, description, botVersion,
      botName, checksum, conversationLogs, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_name">name</code></td>
<td><p>[required] The name of the alias. The name is <em>not</em> case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_description">description</code></td>
<td><p>A description of the alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_botName">botName</code></td>
<td><p>[required] The name of the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_checksum">checksum</code></td>
<td><p>Identifies a specific revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version.</p>
<p>When you create a new bot alias, leave the <code>checksum</code>
field blank. If you specify a checksum you get a
<code>BadRequestException</code> exception.</p>
<p>When you want to update a bot alias, set the <code>checksum</code>
field to the checksum of the most recent revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version. If you don't specify
the <code> checksum</code> field, or if the checksum does not match the
<code style="white-space: pre;">⁠$LATEST⁠</code> version, you get a
<code>PreconditionFailedException</code> exception.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_conversationLogs">conversationLogs</code></td>
<td><p>Settings for conversation logs for the alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_alias_:_tags">tags</code></td>
<td><p>A list of tags to add to the bot alias. You can only add tags
when you create an alias, you can't use the <code>put_bot_alias</code>
operation to update the tags on a bot alias. To update tags, use the
<code>tag_resource</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$put_bot_alias(
      name = "string",
      description = "string",
      botVersion = "string",
      botName = "string",
      checksum = "string",
      conversationLogs = list(
        logSettings = list(
          list(
            logType = "AUDIO"|"TEXT",
            destination = "CLOUDWATCH_LOGS"|"S3",
            kmsKeyArn = "string",
            resourceArn = "string"
          )
        ),
        iamRoleArn = "string"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
