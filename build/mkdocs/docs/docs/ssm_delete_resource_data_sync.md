<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_resource_data_sync</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource data sync configuration

### Description

Deletes a resource data sync configuration. After the configuration is
deleted, changes to data on managed nodes are no longer synced to or
from the target. Deleting a sync configuration doesn't delete data.

### Usage

    ssm_delete_resource_data_sync(SyncName, SyncType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_delete_resource_data_sync_:_SyncName">SyncName</code></td>
<td><p>[required] The name of the configuration to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_delete_resource_data_sync_:_SyncType">SyncType</code></td>
<td><p>Specify the type of resource data sync to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_data_sync(
      SyncName = "string",
      SyncType = "string"
    )
