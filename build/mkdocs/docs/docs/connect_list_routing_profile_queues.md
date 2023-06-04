<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_routing_profile_queues</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the queues associated with a routing profile

### Description

Lists the queues associated with a routing profile.

### Usage

    connect_list_routing_profile_queues(InstanceId, RoutingProfileId,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_routing_profile_queues_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_routing_profile_queues_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_routing_profile_queues_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_routing_profile_queues_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. The default
MaxResult size is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      RoutingProfileQueueConfigSummaryList = list(
        list(
          QueueId = "string",
          QueueArn = "string",
          QueueName = "string",
          Priority = 123,
          Delay = 123,
          Channel = "VOICE"|"CHAT"|"TASK"
        )
      )
    )

### Request syntax

    svc$list_routing_profile_queues(
      InstanceId = "string",
      RoutingProfileId = "string",
      NextToken = "string",
      MaxResults = 123
    )
