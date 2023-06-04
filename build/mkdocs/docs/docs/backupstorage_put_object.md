<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_put_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Upload object that can store object metadata String and data blob in single API call using inline chunk field

### Description

Upload object that can store object metadata String and data blob in
single API call using inline chunk field.

### Usage

    backupstorage_put_object(BackupJobId, ObjectName, MetadataString,
      InlineChunk, InlineChunkLength, InlineChunkChecksum,
      InlineChunkChecksumAlgorithm, ObjectChecksum, ObjectChecksumAlgorithm,
      ThrowOnDuplicate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_put_object_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Backup job Id for the in-progress backup.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_put_object_:_ObjectName">ObjectName</code></td>
<td><p>[required] The name of the Object to be uploaded.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_put_object_:_MetadataString">MetadataString</code></td>
<td><p>Store user defined metadata like backup checksum, disk ids,
restore metadata etc.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_put_object_:_InlineChunk">InlineChunk</code></td>
<td><p>Inline chunk data to be uploaded.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_put_object_:_InlineChunkLength">InlineChunkLength</code></td>
<td><p>Length of the inline chunk data.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_put_object_:_InlineChunkChecksum">InlineChunkChecksum</code></td>
<td><p>Inline chunk checksum</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_put_object_:_InlineChunkChecksumAlgorithm">InlineChunkChecksumAlgorithm</code></td>
<td><p>Inline chunk checksum algorithm</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_put_object_:_ObjectChecksum">ObjectChecksum</code></td>
<td><p>object checksum</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_put_object_:_ObjectChecksumAlgorithm">ObjectChecksumAlgorithm</code></td>
<td><p>object checksum algorithm</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_put_object_:_ThrowOnDuplicate">ThrowOnDuplicate</code></td>
<td><p>Throw an exception if Object name is already exist.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InlineChunkChecksum = "string",
      InlineChunkChecksumAlgorithm = "SHA256",
      ObjectChecksum = "string",
      ObjectChecksumAlgorithm = "SUMMARY"
    )

### Request syntax

    svc$put_object(
      BackupJobId = "string",
      ObjectName = "string",
      MetadataString = "string",
      InlineChunk = raw,
      InlineChunkLength = 123,
      InlineChunkChecksum = "string",
      InlineChunkChecksumAlgorithm = "string",
      ObjectChecksum = "string",
      ObjectChecksumAlgorithm = "SUMMARY",
      ThrowOnDuplicate = TRUE|FALSE
    )
