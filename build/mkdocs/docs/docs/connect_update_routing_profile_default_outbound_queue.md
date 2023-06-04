<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_routing_profile_default_outbound_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the default outbound queue of a routing profile

### Description

Updates the default outbound queue of a routing profile.

### Usage

    connect_update_routing_profile_default_outbound_queue(InstanceId,
      RoutingProfileId, DefaultOutboundQueueId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_routing_profile_default_outbound_queue_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_routing_profile_default_outbound_queue_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_routing_profile_default_outbound_queue_:_DefaultOutboundQueueId">DefaultOutboundQueueId</code></td>
<td><p>[required] The identifier for the default outbound
queue.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_routing_profile_default_outbound_queue(
      InstanceId = "string",
      RoutingProfileId = "string",
      DefaultOutboundQueueId = "string"
    )
