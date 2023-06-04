<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_routing_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified routing profile

### Description

Describes the specified routing profile.

### Usage

    connect_describe_routing_profile(InstanceId, RoutingProfileId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_routing_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_routing_profile_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RoutingProfile = list(
        InstanceId = "string",
        Name = "string",
        RoutingProfileArn = "string",
        RoutingProfileId = "string",
        Description = "string",
        MediaConcurrencies = list(
          list(
            Channel = "VOICE"|"CHAT"|"TASK",
            Concurrency = 123,
            CrossChannelBehavior = list(
              BehaviorType = "ROUTE_CURRENT_CHANNEL_ONLY"|"ROUTE_ANY_CHANNEL"
            )
          )
        ),
        DefaultOutboundQueueId = "string",
        Tags = list(
          "string"
        ),
        NumberOfAssociatedQueues = 123,
        NumberOfAssociatedUsers = 123
      )
    )

### Request syntax

    svc$describe_routing_profile(
      InstanceId = "string",
      RoutingProfileId = "string"
    )
