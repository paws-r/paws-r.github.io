<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_put_chunk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Upload chunk

### Description

Upload chunk.

### Usage

    backupstorage_put_chunk(BackupJobId, UploadId, ChunkIndex, Data, Length,
      Checksum, ChecksumAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_put_chunk_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Backup job Id for the in-progress backup.</p></td>
</tr>
<tr class="even">
<td><code id="backupstorage_put_chunk_:_UploadId">UploadId</code></td>
<td><p>[required] Upload Id for the in-progress upload.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_put_chunk_:_ChunkIndex">ChunkIndex</code></td>
<td><p>[required] Describes this chunk's position relative to the other
chunks</p></td>
</tr>
<tr class="even">
<td><code id="backupstorage_put_chunk_:_Data">Data</code></td>
<td><p>[required] Data to be uploaded</p></td>
</tr>
<tr class="odd">
<td><code id="backupstorage_put_chunk_:_Length">Length</code></td>
<td><p>[required] Data length</p></td>
</tr>
<tr class="even">
<td><code id="backupstorage_put_chunk_:_Checksum">Checksum</code></td>
<td><p>[required] Data checksum</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_put_chunk_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>[required] Checksum algorithm</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChunkChecksum = "string",
      ChunkChecksumAlgorithm = "SHA256"
    )

### Request syntax

    svc$put_chunk(
      BackupJobId = "string",
      UploadId = "string",
      ChunkIndex = 123,
      Data = raw,
      Length = 123,
      Checksum = "string",
      ChecksumAlgorithm = "SHA256"
    )
