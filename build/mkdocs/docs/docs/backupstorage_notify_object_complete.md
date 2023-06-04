<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_notify_object_complete</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Complete upload

### Description

Complete upload

### Usage

    backupstorage_notify_object_complete(BackupJobId, UploadId,
      ObjectChecksum, ObjectChecksumAlgorithm, MetadataString, MetadataBlob,
      MetadataBlobLength, MetadataBlobChecksum, MetadataBlobChecksumAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_notify_object_complete_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Backup job Id for the in-progress backup</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_notify_object_complete_:_UploadId">UploadId</code></td>
<td><p>[required] Upload Id for the in-progress upload</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_notify_object_complete_:_ObjectChecksum">ObjectChecksum</code></td>
<td><p>[required] Object checksum</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_notify_object_complete_:_ObjectChecksumAlgorithm">ObjectChecksumAlgorithm</code></td>
<td><p>[required] Checksum algorithm</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_notify_object_complete_:_MetadataString">MetadataString</code></td>
<td><p>Optional metadata associated with an Object. Maximum string
length is 256 bytes.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_notify_object_complete_:_MetadataBlob">MetadataBlob</code></td>
<td><p>Optional metadata associated with an Object. Maximum length is
4MB.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_notify_object_complete_:_MetadataBlobLength">MetadataBlobLength</code></td>
<td><p>The size of MetadataBlob.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_notify_object_complete_:_MetadataBlobChecksum">MetadataBlobChecksum</code></td>
<td><p>Checksum of MetadataBlob.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_notify_object_complete_:_MetadataBlobChecksumAlgorithm">MetadataBlobChecksumAlgorithm</code></td>
<td><p>Checksum algorithm.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectChecksum = "string",
      ObjectChecksumAlgorithm = "SUMMARY"
    )

### Request syntax

    svc$notify_object_complete(
      BackupJobId = "string",
      UploadId = "string",
      ObjectChecksum = "string",
      ObjectChecksumAlgorithm = "SUMMARY",
      MetadataString = "string",
      MetadataBlob = raw,
      MetadataBlobLength = 123,
      MetadataBlobChecksum = "string",
      MetadataBlobChecksumAlgorithm = "SHA256"
    )
