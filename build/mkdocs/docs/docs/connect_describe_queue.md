<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified queue.

### Usage

    connect_describe_queue(InstanceId, QueueId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_queue_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_describe_queue_:_QueueId">QueueId</code></td>
<td><p>[required] The identifier for the queue.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Queue = list(
        Name = "string",
        QueueArn = "string",
        QueueId = "string",
        Description = "string",
        OutboundCallerConfig = list(
          OutboundCallerIdName = "string",
          OutboundCallerIdNumberId = "string",
          OutboundFlowId = "string"
        ),
        HoursOfOperationId = "string",
        MaxContacts = 123,
        Status = "ENABLED"|"DISABLED",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_queue(
      InstanceId = "string",
      QueueId = "string"
    )
