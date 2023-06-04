<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_get_terminology</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a custom terminology

### Description

Retrieves a custom terminology.

### Usage

    translate_get_terminology(Name, TerminologyDataFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_get_terminology_:_Name">Name</code></td>
<td><p>[required] The name of the custom terminology being
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_get_terminology_:_TerminologyDataFormat">TerminologyDataFormat</code></td>
<td><p>The data format of the custom terminology being retrieved.</p>
<p>If you don't specify this parameter, Amazon Translate returns a file
with the same format as the file that was imported to create the
terminology.</p>
<p>If you specify this parameter when you retrieve a multi-directional
terminology resource, you must specify the same format as the input file
that was imported to create it. Otherwise, Amazon Translate throws an
error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TerminologyProperties = list(
        Name = "string",
        Description = "string",
        Arn = "string",
        SourceLanguageCode = "string",
        TargetLanguageCodes = list(
          "string"
        ),
        EncryptionKey = list(
          Type = "KMS",
          Id = "string"
        ),
        SizeBytes = 123,
        TermCount = 123,
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        Directionality = "UNI"|"MULTI",
        Message = "string",
        SkippedTermCount = 123,
        Format = "CSV"|"TMX"|"TSV"
      ),
      TerminologyDataLocation = list(
        RepositoryType = "string",
        Location = "string"
      ),
      AuxiliaryDataLocation = list(
        RepositoryType = "string",
        Location = "string"
      )
    )

### Request syntax

    svc$get_terminology(
      Name = "string",
      TerminologyDataFormat = "CSV"|"TMX"|"TSV"
    )
