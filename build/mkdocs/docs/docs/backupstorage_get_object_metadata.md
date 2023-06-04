<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_get_object_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get metadata associated with an Object

### Description

Get metadata associated with an Object.

### Usage

    backupstorage_get_object_metadata(StorageJobId, ObjectToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_get_object_metadata_:_StorageJobId">StorageJobId</code></td>
<td><p>[required] Backup job id for the in-progress backup.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_get_object_metadata_:_ObjectToken">ObjectToken</code></td>
<td><p>[required] Object token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetadataString = "string",
      MetadataBlob = raw,
      MetadataBlobLength = 123,
      MetadataBlobChecksum = "string",
      MetadataBlobChecksumAlgorithm = "SHA256"
    )

### Request syntax

    svc$get_object_metadata(
      StorageJobId = "string",
      ObjectToken = "string"
    )
