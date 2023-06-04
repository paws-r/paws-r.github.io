<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_delete_dedicated_ip_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a dedicated IP pool

### Description

Delete a dedicated IP pool.

### Usage

    pinpointemail_delete_dedicated_ip_pool(PoolName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_delete_dedicated_ip_pool_:_PoolName">PoolName</code></td>
<td><p>[required] The name of the dedicated IP pool that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dedicated_ip_pool(
      PoolName = "string"
    )
