<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_delete_access_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified access point

### Description

Deletes the specified access point. After deletion is complete, new
clients can no longer connect to the access points. Clients connected to
the access point at the time of deletion will continue to function until
they terminate their connection.

This operation requires permissions for the
`elasticfilesystem:DeleteAccessPoint` action.

### Usage

    efs_delete_access_point(AccessPointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_delete_access_point_:_AccessPointId">AccessPointId</code></td>
<td><p>[required] The ID of the access point that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_access_point(
      AccessPointId = "string"
    )
