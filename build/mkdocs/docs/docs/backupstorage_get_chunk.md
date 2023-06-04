<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_get_chunk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified object's chunk

### Description

Gets the specified object's chunk.

### Usage

    backupstorage_get_chunk(StorageJobId, ChunkToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_get_chunk_:_StorageJobId">StorageJobId</code></td>
<td><p>[required] Storage job id</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_get_chunk_:_ChunkToken">ChunkToken</code></td>
<td><p>[required] Chunk token</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Data = raw,
      Length = 123,
      Checksum = "string",
      ChecksumAlgorithm = "SHA256"
    )

### Request syntax

    svc$get_chunk(
      StorageJobId = "string",
      ChunkToken = "string"
    )
