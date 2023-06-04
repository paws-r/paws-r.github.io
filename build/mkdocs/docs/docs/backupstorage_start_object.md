<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_start_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Start upload containing one or many chunks

### Description

Start upload containing one or many chunks.

### Usage

    backupstorage_start_object(BackupJobId, ObjectName, ThrowOnDuplicate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_start_object_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Backup job Id for the in-progress backup</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_start_object_:_ObjectName">ObjectName</code></td>
<td><p>[required] Name for the object.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupstorage_start_object_:_ThrowOnDuplicate">ThrowOnDuplicate</code></td>
<td><p>Throw an exception if Object name is already exist.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UploadId = "string"
    )

### Request syntax

    svc$start_object(
      BackupJobId = "string",
      ObjectName = "string",
      ThrowOnDuplicate = TRUE|FALSE
    )
