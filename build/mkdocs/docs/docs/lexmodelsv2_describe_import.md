<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specific import

### Description

Gets information about a specific import.

### Usage

    lexmodelsv2_describe_import(importId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_import_:_importId">importId</code></td>
<td><p>[required] The unique identifier of the import to
describe.</p></td>
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
      importedResourceId = "string",
      importedResourceName = "string",
      mergeStrategy = "Overwrite"|"FailOnConflict"|"Append",
      importStatus = "InProgress"|"Completed"|"Failed"|"Deleting",
      failureReasons = list(
        "string"
      ),
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_import(
      importId = "string"
    )
