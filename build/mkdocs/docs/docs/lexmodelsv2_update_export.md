<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the password used to protect an export zip archive

### Description

Updates the password used to protect an export zip archive.

The password is not required. If you don't supply a password, Amazon Lex
generates a zip file that is not protected by a password. This is the
archive that is available at the pre-signed S3 URL provided by the
`describe_export` operation.

### Usage

    lexmodelsv2_update_export(exportId, filePassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_update_export_:_exportId">exportId</code></td>
<td><p>[required] The unique identifier Amazon Lex assigned to the
export.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_export_:_filePassword">filePassword</code></td>
<td><p>The new password to use to encrypt the export zip
archive.</p></td>
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
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_export(
      exportId = "string",
      filePassword = "string"
    )
