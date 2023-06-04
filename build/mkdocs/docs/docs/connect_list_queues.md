<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_queues</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the queues for the specified Amazon Connect instance

### Description

Provides information about the queues for the specified Amazon Connect
instance.

If you do not specify a `QueueTypes` parameter, both standard and agent
queues are returned. This might cause an unexpected truncation of
results if you have more than 1000 agents and you limit the number of
results of the API call in code.

For more information about queues, see [Queues: Standard and
Agent](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_list_queues(InstanceId, QueueTypes, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_list_queues_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_queues_:_QueueTypes">QueueTypes</code></td>
<td><p>The type of queue.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_list_queues_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_queues_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. The default
MaxResult size is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueueSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          QueueType = "STANDARD"|"AGENT"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_queues(
      InstanceId = "string",
      QueueTypes = list(
        "STANDARD"|"AGENT"
      ),
      NextToken = "string",
      MaxResults = 123
    )
