<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an alias for the specified version of a bot

### Description

Creates an alias for the specified version of a bot. Use an alias to
enable you to change the version of a bot without updating applications
that use the bot.

For example, you can create an alias called "PROD" that your
applications use to call the Amazon Lex bot.

### Usage

    lexmodelsv2_create_bot_alias(botAliasName, description, botVersion,
      botAliasLocaleSettings, conversationLogSettings,
      sentimentAnalysisSettings, botId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_alias_:_botAliasName">botAliasName</code></td>
<td><p>[required] The alias to create. The name must be unique for the
bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_alias_:_description">description</code></td>
<td><p>A description of the alias. Use this description to help identify
the alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_alias_:_botVersion">botVersion</code></td>
<td><p>The version of the bot that this alias points to. You can use the
<code>update_bot_alias</code> operation to change the bot version
associated with the alias.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_alias_:_botAliasLocaleSettings">botAliasLocaleSettings</code></td>
<td><p>Maps configuration information to a specific locale. You can use
this parameter to specify a specific Lambda function to run different
functions in different locales.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_alias_:_conversationLogSettings">conversationLogSettings</code></td>
<td><p>Specifies whether Amazon Lex logs text and audio for a
conversation with the bot. When you enable conversation logs, text logs
store text input, transcripts of audio input, and associated metadata in
Amazon CloudWatch Logs. Audio logs store audio input in Amazon
S3.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_alias_:_sentimentAnalysisSettings">sentimentAnalysisSettings</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_create_bot_alias_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that the alias
applies to.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_create_bot_alias_:_tags">tags</code></td>
<td><p>A list of tags to add to the bot alias. You can only add tags
when you create an alias, you can't use the
<code>update_bot_alias</code> operation to update the tags on a bot
alias. To update tags, use the <code>tag_resource</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botAliasId = "string",
      botAliasName = "string",
      description = "string",
      botVersion = "string",
      botAliasLocaleSettings = list(
        list(
          enabled = TRUE|FALSE,
          codeHookSpecification = list(
            lambdaCodeHook = list(
              lambdaARN = "string",
              codeHookInterfaceVersion = "string"
            )
          )
        )
      ),
      conversationLogSettings = list(
        textLogSettings = list(
          list(
            enabled = TRUE|FALSE,
            destination = list(
              cloudWatch = list(
                cloudWatchLogGroupArn = "string",
                logPrefix = "string"
              )
            )
          )
        ),
        audioLogSettings = list(
          list(
            enabled = TRUE|FALSE,
            destination = list(
              s3Bucket = list(
                kmsKeyArn = "string",
                s3BucketArn = "string",
                logPrefix = "string"
              )
            )
          )
        )
      ),
      sentimentAnalysisSettings = list(
        detectSentiment = TRUE|FALSE
      ),
      botAliasStatus = "Creating"|"Available"|"Deleting"|"Failed",
      botId = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_bot_alias(
      botAliasName = "string",
      description = "string",
      botVersion = "string",
      botAliasLocaleSettings = list(
        list(
          enabled = TRUE|FALSE,
          codeHookSpecification = list(
            lambdaCodeHook = list(
              lambdaARN = "string",
              codeHookInterfaceVersion = "string"
            )
          )
        )
      ),
      conversationLogSettings = list(
        textLogSettings = list(
          list(
            enabled = TRUE|FALSE,
            destination = list(
              cloudWatch = list(
                cloudWatchLogGroupArn = "string",
                logPrefix = "string"
              )
            )
          )
        ),
        audioLogSettings = list(
          list(
            enabled = TRUE|FALSE,
            destination = list(
              s3Bucket = list(
                kmsKeyArn = "string",
                s3BucketArn = "string",
                logPrefix = "string"
              )
            )
          )
        )
      ),
      sentimentAnalysisSettings = list(
        detectSentiment = TRUE|FALSE
      ),
      botId = "string",
      tags = list(
        "string"
      )
    )
