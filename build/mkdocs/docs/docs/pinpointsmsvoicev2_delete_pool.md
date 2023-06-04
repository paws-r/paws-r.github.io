<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing pool

### Description

Deletes an existing pool. Deleting a pool disassociates all origination
identities from that pool.

If the pool status isn't active or if deletion protection is enabled, an
Error is returned.

A pool is a collection of phone numbers and SenderIds. A pool can
include one or more phone numbers and SenderIds that are associated with
your Amazon Web Services account.

### Usage

    pinpointsmsvoicev2_delete_pool(PoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_pool_:_PoolId">PoolId</code></td>
<td><p>[required] The PoolId or PoolArn of the pool to delete. You can
use <code>describe_pools</code> to find the values for PoolId and
PoolArn .</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolArn = "string",
      PoolId = "string",
      Status = "CREATING"|"ACTIVE"|"DELETING",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      SharedRoutesEnabled = TRUE|FALSE,
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$delete_pool(
      PoolId = "string"
    )
