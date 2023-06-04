<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specific export

### Description

Gets information about a specific export.

### Usage

    lexmodelsv2_describe_export(exportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_export_:_exportId">exportId</code></td>
<td><p>[required] The unique identifier of the export to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      exportId = "string",
      resourceSpecification = list(
        botExportSpecification = list(
          botId = "string",
          botVersion = "string"
        ),
        botLocaleExportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        ),
        customVocabularyExportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        )
      ),
      fileFormat = "LexJson"|"TSV",
      exportStatus = "InProgress"|"Completed"|"Failed"|"Deleting",
      failureReasons = list(
        "string"
      ),
      downloadUrl = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_export(
      exportId = "string"
    )
