<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_routing_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new routing profile

### Description

Creates a new routing profile.

### Usage

    connect_create_routing_profile(InstanceId, Name, Description,
      DefaultOutboundQueueId, QueueConfigs, MediaConcurrencies, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_routing_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_routing_profile_:_Name">Name</code></td>
<td><p>[required] The name of the routing profile. Must not be more than
127 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_routing_profile_:_Description">Description</code></td>
<td><p>[required] Description of the routing profile. Must not be more
than 250 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_routing_profile_:_DefaultOutboundQueueId">DefaultOutboundQueueId</code></td>
<td><p>[required] The default outbound queue for the routing
profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_routing_profile_:_QueueConfigs">QueueConfigs</code></td>
<td><p>The inbound queues associated with the routing profile. If no
queue is added, the agent can make only outbound calls.</p>
<p>The limit of 10 array members applies to the maximum number of
<code>RoutingProfileQueueConfig</code> objects that can be passed during
a CreateRoutingProfile API request. It is different from the quota of 50
queues per routing profile per instance that is listed in <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon
Connect service quotas</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_routing_profile_:_MediaConcurrencies">MediaConcurrencies</code></td>
<td><p>[required] The channels that agents can handle in the Contact
Control Panel (CCP) for this routing profile.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_routing_profile_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RoutingProfileArn = "string",
      RoutingProfileId = "string"
    )

### Request syntax

    svc$create_routing_profile(
      InstanceId = "string",
      Name = "string",
      Description = "string",
      DefaultOutboundQueueId = "string",
      QueueConfigs = list(
        list(
          QueueReference = list(
            QueueId = "string",
            Channel = "VOICE"|"CHAT"|"TASK"
          ),
          Priority = 123,
          Delay = 123
        )
      ),
      MediaConcurrencies = list(
        list(
          Channel = "VOICE"|"CHAT"|"TASK",
          Concurrency = 123,
          CrossChannelBehavior = list(
            BehaviorType = "ROUTE_CURRENT_CHANNEL_ONLY"|"ROUTE_ANY_CHANNEL"
          )
        )
      ),
      Tags = list(
        "string"
      )
    )
