<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_routing_profile_queues</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the properties associated with a set of queues for a routing profile

### Description

Updates the properties associated with a set of queues for a routing
profile.

### Usage

    connect_update_routing_profile_queues(InstanceId, RoutingProfileId,
      QueueConfigs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_routing_profile_queues_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_routing_profile_queues_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_routing_profile_queues_:_QueueConfigs">QueueConfigs</code></td>
<td><p>[required] The queues to be updated for this routing profile.
Queues must first be associated to the routing profile. You can do this
using AssociateRoutingProfileQueues.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_routing_profile_queues(
      InstanceId = "string",
      RoutingProfileId = "string",
      QueueConfigs = list(
        list(
          QueueReference = list(
            QueueId = "string",
            Channel = "VOICE"|"CHAT"|"TASK"
          ),
          Priority = 123,
          Delay = 123
        )
      )
    )
