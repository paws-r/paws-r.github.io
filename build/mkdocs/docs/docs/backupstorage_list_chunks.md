<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_list_chunks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List chunks in a given Object

### Description

List chunks in a given Object

### Usage

    backupstorage_list_chunks(StorageJobId, ObjectToken, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_list_chunks_:_StorageJobId">StorageJobId</code></td>
<td><p>[required] Storage job id</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_list_chunks_:_ObjectToken">ObjectToken</code></td>
<td><p>[required] Object token</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_list_chunks_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of chunks</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_list_chunks_:_NextToken">NextToken</code></td>
<td><p>Pagination token</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChunkList = list(
        list(
          Index = 123,
          Length = 123,
          Checksum = "string",
          ChecksumAlgorithm = "SHA256",
          ChunkToken = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_chunks(
      StorageJobId = "string",
      ObjectToken = "string",
      MaxResults = 123,
      NextToken = "string"
    )
