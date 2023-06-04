<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_start_bot_recommendation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this to provide your transcript data, and to start the bot recommendation process

### Description

Use this to provide your transcript data, and to start the bot
recommendation process.

### Usage

    lexmodelsv2_start_bot_recommendation(botId, botVersion, localeId,
      transcriptSourceSetting, encryptionSetting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_start_bot_recommendation_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot containing the bot
recommendation.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_start_bot_recommendation_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot containing the bot
recommendation.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_start_bot_recommendation_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the bot
recommendation to start. The string must match one of the supported
locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a></p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_start_bot_recommendation_:_transcriptSourceSetting">transcriptSourceSetting</code></td>
<td><p>[required] The object representing the Amazon S3 bucket
containing the transcript, as well as the associated metadata.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_start_bot_recommendation_:_encryptionSetting">encryptionSetting</code></td>
<td><p>The object representing the passwords that will be used to
encrypt the data related to the bot recommendation results, as well as
the KMS key ARN used to encrypt the associated metadata.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationStatus = "Processing"|"Deleting"|"Deleted"|"Downloading"|"Updating"|"Available"|"Failed"|"Stopping"|"Stopped",
      botRecommendationId = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      transcriptSourceSetting = list(
        s3BucketTranscriptSource = list(
          s3BucketName = "string",
          pathFormat = list(
            objectPrefixes = list(
              "string"
            )
          ),
          transcriptFormat = "Lex",
          transcriptFilter = list(
            lexTranscriptFilter = list(
              dateRangeFilter = list(
                startDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                endDateTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          ),
          kmsKeyArn = "string"
        )
      ),
      encryptionSetting = list(
        kmsKeyArn = "string",
        botLocaleExportPassword = "string",
        associatedTranscriptsPassword = "string"
      )
    )

### Request syntax

    svc$start_bot_recommendation(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      transcriptSourceSetting = list(
        s3BucketTranscriptSource = list(
          s3BucketName = "string",
          pathFormat = list(
            objectPrefixes = list(
              "string"
            )
          ),
          transcriptFormat = "Lex",
          transcriptFilter = list(
            lexTranscriptFilter = list(
              dateRangeFilter = list(
                startDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                endDateTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          ),
          kmsKeyArn = "string"
        )
      ),
      encryptionSetting = list(
        kmsKeyArn = "string",
        botLocaleExportPassword = "string",
        associatedTranscriptsPassword = "string"
      )
    )
