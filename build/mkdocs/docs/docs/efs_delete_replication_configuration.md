<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_delete_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing replication configuration

### Description

Deletes an existing replication configuration. To delete a replication
configuration, you must make the request from the Amazon Web Services
Region in which the destination file system is located. Deleting a
replication configuration ends the replication process. After a
replication configuration is deleted, the destination file system is no
longer read-only. You can write to the destination file system after its
status becomes `Writeable`.

### Usage

    efs_delete_replication_configuration(SourceFileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_delete_replication_configuration_:_SourceFileSystemId">SourceFileSystemId</code></td>
<td><p>[required] The ID of the source file system in the replication
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_replication_configuration(
      SourceFileSystemId = "string"
    )
