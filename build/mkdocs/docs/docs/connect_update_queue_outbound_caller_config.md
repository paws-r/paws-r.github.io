<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_queue_outbound_caller_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Updates the outbound caller ID name, number, and outbound whisper flow
for a specified queue.

If the number being used in the input is claimed to a traffic
distribution group, and you are calling this API using an instance in
the Amazon Web Services Region where the traffic distribution group was
created, you can use either a full phone number ARN or UUID value for
the `OutboundCallerIdNumberId` value of the
[OutboundCallerConfig](https://docs.aws.amazon.com/connect/latest/APIReference/API_OutboundCallerConfig.html)
request body parameter. However, if the number is claimed to a traffic
distribution group and you are calling this API using an instance in the
alternate Amazon Web Services Region associated with the traffic
distribution group, you must provide a full phone number ARN. If a UUID
is provided in this scenario, you will receive a
`ResourceNotFoundException`.

### Usage

    connect_update_queue_outbound_caller_config(InstanceId, QueueId,
      OutboundCallerConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_queue_outbound_caller_config_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_queue_outbound_caller_config_:_QueueId">QueueId</code></td>
<td><p>[required] The identifier for the queue.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_queue_outbound_caller_config_:_OutboundCallerConfig">OutboundCallerConfig</code></td>
<td><p>[required] The outbound caller ID name, number, and outbound
whisper flow.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_queue_outbound_caller_config(
      InstanceId = "string",
      QueueId = "string",
      OutboundCallerConfig = list(
        OutboundCallerIdName = "string",
        OutboundCallerIdNumberId = "string",
        OutboundFlowId = "string"
      )
    )
