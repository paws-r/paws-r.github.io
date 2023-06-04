<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_start_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts importing a bot, bot locale, or custom vocabulary from a zip archive that you uploaded to an S3 bucket

### Description

Starts importing a bot, bot locale, or custom vocabulary from a zip
archive that you uploaded to an S3 bucket.

### Usage

    lexmodelsv2_start_import(importId, resourceSpecification, mergeStrategy,
      filePassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_start_import_:_importId">importId</code></td>
<td><p>[required] The unique identifier for the import. It is included
in the response from the <code>create_upload_url</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_start_import_:_resourceSpecification">resourceSpecification</code></td>
<td><p>[required] Parameters for creating the bot, bot locale or custom
vocabulary.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_start_import_:_mergeStrategy">mergeStrategy</code></td>
<td><p>[required] The strategy to use when there is a name conflict
between the imported resource and an existing resource. When the merge
strategy is <code>FailOnConflict</code> existing resources are not
overwritten and the import fails.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_start_import_:_filePassword">filePassword</code></td>
<td><p>The password used to encrypt the zip archive that contains the
resource definition. You should always encrypt the zip archive to
protect it during transit between your site and Amazon Lex.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      importId = "string",
      resourceSpecification = list(
        botImportSpecification = list(
          botName = "string",
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
          )
        ),
        botLocaleImportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string",
          nluIntentConfidenceThreshold = 123.0,
          voiceSettings = list(
            voiceId = "string",
            engine = "standard"|"neural"
          )
        ),
        customVocabularyImportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        )
      ),
      mergeStrategy = "Overwrite"|"FailOnConflict"|"Append",
      importStatus = "InProgress"|"Completed"|"Failed"|"Deleting",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_import(
      importId = "string",
      resourceSpecification = list(
        botImportSpecification = list(
          botName = "string",
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
          )
        ),
        botLocaleImportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string",
          nluIntentConfidenceThreshold = 123.0,
          voiceSettings = list(
            voiceId = "string",
            engine = "standard"|"neural"
          )
        ),
        customVocabularyImportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        )
      ),
      mergeStrategy = "Overwrite"|"FailOnConflict"|"Append",
      filePassword = "string"
    )
