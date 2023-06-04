<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_associate_queue_quick_connects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Associates a set of quick connects with a queue.

### Usage

    connect_associate_queue_quick_connects(InstanceId, QueueId,
      QuickConnectIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_associate_queue_quick_connects_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_associate_queue_quick_connects_:_QueueId">QueueId</code></td>
<td><p>[required] The identifier for the queue.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_associate_queue_quick_connects_:_QuickConnectIds">QuickConnectIds</code></td>
<td><p>[required] The quick connects to associate with this
queue.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_queue_quick_connects(
      InstanceId = "string",
      QueueId = "string",
      QuickConnectIds = list(
        "string"
      )
    )
