<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupstorage_delete_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete Object from the incremental base Backup

### Description

Delete Object from the incremental base Backup.

### Usage

    backupstorage_delete_object(BackupJobId, ObjectName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupstorage_delete_object_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Backup job Id for the in-progress backup.</p></td>
</tr>
<tr class="even">
<td><code
id="backupstorage_delete_object_:_ObjectName">ObjectName</code></td>
<td><p>[required] The name of the Object.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_object(
      BackupJobId = "string",
      ObjectName = "string"
    )
