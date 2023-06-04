<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about a specific bot alias

### Description

Get information about a specific bot alias.

### Usage

    lexmodelsv2_describe_bot_alias(botAliasId, botId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_bot_alias_:_botAliasId">botAliasId</code></td>
<td><p>[required] The identifier of the bot alias to describe.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_describe_bot_alias_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with the bot
alias to describe.</p></td>
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
      botAliasHistoryEvents = list(
        list(
          botVersion = "string",
          startDate = as.POSIXct(
            "2015-01-01"
          ),
          endDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      botAliasStatus = "Creating"|"Available"|"Deleting"|"Failed",
      botId = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      parentBotNetworks = list(
        list(
          botId = "string",
          botVersion = "string"
        )
      )
    )

### Request syntax

    svc$describe_bot_alias(
      botAliasId = "string",
      botId = "string"
    )
