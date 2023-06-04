<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_list_objects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all Objects in a given Backup

### Description

List all Objects in a given Backup.

### Usage

    backupstorage_list_objects(StorageJobId, StartingObjectName,
      StartingObjectPrefix, MaxResults, NextToken, CreatedBefore,
      CreatedAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_list_objects_:_StorageJobId">StorageJobId</code></td>
<td><p>[required] Storage job id</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_list_objects_:_StartingObjectName">StartingObjectName</code></td>
<td><p>Optional, specifies the starting Object name to list from.
Ignored if NextToken is not NULL</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_list_objects_:_StartingObjectPrefix">StartingObjectPrefix</code></td>
<td><p>Optional, specifies the starting Object prefix to list from.
Ignored if NextToken is not NULL</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_list_objects_:_MaxResults">MaxResults</code></td>
<td><p>Maximum objects count</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_list_objects_:_NextToken">NextToken</code></td>
<td><p>Pagination token</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_list_objects_:_CreatedBefore">CreatedBefore</code></td>
<td><p>(Optional) Created before filter</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_list_objects_:_CreatedAfter">CreatedAfter</code></td>
<td><p>(Optional) Created after filter</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectList = list(
        list(
          Name = "string",
          ChunksCount = 123,
          MetadataString = "string",
          ObjectChecksum = "string",
          ObjectChecksumAlgorithm = "SUMMARY",
          ObjectToken = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_objects(
      StorageJobId = "string",
      StartingObjectName = "string",
      StartingObjectPrefix = "string",
      MaxResults = 123,
      NextToken = "string",
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      )
    )
