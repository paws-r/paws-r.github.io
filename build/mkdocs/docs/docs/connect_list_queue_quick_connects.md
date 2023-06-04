<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_queue_quick_connects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Lists the quick connects associated with a queue.

### Usage

    connect_list_queue_quick_connects(InstanceId, QueueId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_queue_quick_connects_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_queue_quick_connects_:_QueueId">QueueId</code></td>
<td><p>[required] The identifier for the queue.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_queue_quick_connects_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_queue_quick_connects_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. The default
MaxResult size is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      QuickConnectSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          QuickConnectType = "USER"|"QUEUE"|"PHONE_NUMBER"
        )
      )
    )

### Request syntax

    svc$list_queue_quick_connects(
      InstanceId = "string",
      QueueId = "string",
      NextToken = "string",
      MaxResults = 123
    )
