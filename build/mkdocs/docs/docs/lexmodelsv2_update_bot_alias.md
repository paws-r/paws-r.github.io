<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing bot alias

### Description

Updates the configuration of an existing bot alias.

### Usage

    lexmodelsv2_update_bot_alias(botAliasId, botAliasName, description,
      botVersion, botAliasLocaleSettings, conversationLogSettings,
      sentimentAnalysisSettings, botId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_alias_:_botAliasId">botAliasId</code></td>
<td><p>[required] The unique identifier of the bot alias.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_alias_:_botAliasName">botAliasName</code></td>
<td><p>[required] The new name to assign to the bot alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_alias_:_description">description</code></td>
<td><p>The new description to assign to the bot alias.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_alias_:_botVersion">botVersion</code></td>
<td><p>The new bot version to assign to the bot alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_alias_:_botAliasLocaleSettings">botAliasLocaleSettings</code></td>
<td><p>The new Lambda functions to use in each locale for the bot
alias.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_alias_:_conversationLogSettings">conversationLogSettings</code></td>
<td><p>The new settings for storing conversation logs in Amazon
CloudWatch Logs and Amazon S3 buckets.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_alias_:_sentimentAnalysisSettings">sentimentAnalysisSettings</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_update_bot_alias_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot with the updated
alias.</p></td>
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
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_bot_alias(
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
      botId = "string"
    )
