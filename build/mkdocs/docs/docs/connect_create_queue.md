<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Creates a new queue for the specified Amazon Connect instance.

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

    connect_create_queue(InstanceId, Name, Description,
      OutboundCallerConfig, HoursOfOperationId, MaxContacts, QuickConnectIds,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_create_queue_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_queue_:_Name">Name</code></td>
<td><p>[required] The name of the queue.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_queue_:_Description">Description</code></td>
<td><p>The description of the queue.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_queue_:_OutboundCallerConfig">OutboundCallerConfig</code></td>
<td><p>The outbound caller ID name, number, and outbound whisper
flow.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_queue_:_HoursOfOperationId">HoursOfOperationId</code></td>
<td><p>[required] The identifier for the hours of operation.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_queue_:_MaxContacts">MaxContacts</code></td>
<td><p>The maximum number of contacts that can be in the queue before it
is considered full.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_queue_:_QuickConnectIds">QuickConnectIds</code></td>
<td><p>The quick connects available to agents who are working the
queue.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_queue_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueueArn = "string",
      QueueId = "string"
    )

### Request syntax

    svc$create_queue(
      InstanceId = "string",
      Name = "string",
      Description = "string",
      OutboundCallerConfig = list(
        OutboundCallerIdName = "string",
        OutboundCallerIdNumberId = "string",
        OutboundFlowId = "string"
      ),
      HoursOfOperationId = "string",
      MaxContacts = 123,
      QuickConnectIds = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
