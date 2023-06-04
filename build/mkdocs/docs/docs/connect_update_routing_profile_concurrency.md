<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_routing_profile_concurrency</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the channels that agents can handle in the Contact Control Panel (CCP) for a routing profile

### Description

Updates the channels that agents can handle in the Contact Control Panel
(CCP) for a routing profile.

### Usage

    connect_update_routing_profile_concurrency(InstanceId, RoutingProfileId,
      MediaConcurrencies)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_routing_profile_concurrency_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_routing_profile_concurrency_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_routing_profile_concurrency_:_MediaConcurrencies">MediaConcurrencies</code></td>
<td><p>[required] The channels that agents can handle in the Contact
Control Panel (CCP).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_routing_profile_concurrency(
      InstanceId = "string",
      RoutingProfileId = "string",
      MediaConcurrencies = list(
        list(
          Channel = "VOICE"|"CHAT"|"TASK",
          Concurrency = 123,
          CrossChannelBehavior = list(
            BehaviorType = "ROUTE_CURRENT_CHANNEL_ONLY"|"ROUTE_ANY_CHANNEL"
          )
        )
      )
    )
