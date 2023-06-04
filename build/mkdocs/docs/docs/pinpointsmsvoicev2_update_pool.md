<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_update_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing pool

### Description

Updates the configuration of an existing pool. You can update the
opt-out list, enable or disable two-way messaging, change the
`TwoWayChannelArn`, enable or disable self-managed opt-outs, enable or
disable deletion protection, and enable or disable shared routes.

### Usage

    pinpointsmsvoicev2_update_pool(PoolId, TwoWayEnabled, TwoWayChannelArn,
      SelfManagedOptOutsEnabled, OptOutListName, SharedRoutesEnabled,
      DeletionProtectionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_pool_:_PoolId">PoolId</code></td>
<td><p>[required] The unique identifier of the pool to update. Valid
values are either the PoolId or PoolArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_pool_:_TwoWayEnabled">TwoWayEnabled</code></td>
<td><p>By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_pool_:_TwoWayChannelArn">TwoWayChannelArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the two way channel.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_pool_:_SelfManagedOptOutsEnabled">SelfManagedOptOutsEnabled</code></td>
<td><p>By default this is set to false. When an end recipient sends a
message that begins with HELP or STOP to one of your dedicated numbers,
Amazon Pinpoint automatically replies with a customizable message and
adds the end recipient to the OptOutList. When set to true you're
responsible for responding to HELP and STOP requests. You're also
responsible for tracking and honoring opt-out requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_pool_:_OptOutListName">OptOutListName</code></td>
<td><p>The OptOutList to associate with the pool. Valid values are
either OptOutListName or OptOutListArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_pool_:_SharedRoutesEnabled">SharedRoutesEnabled</code></td>
<td><p>Indicates whether shared routes are enabled for the
pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_pool_:_DeletionProtectionEnabled">DeletionProtectionEnabled</code></td>
<td><p>When set to true the pool can't be deleted.</p></td>
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
      DeletionProtectionEnabled = TRUE|FALSE,
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_pool(
      PoolId = "string",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      SharedRoutesEnabled = TRUE|FALSE,
      DeletionProtectionEnabled = TRUE|FALSE
    )
