<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_queue_max_contacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Updates the maximum number of contacts allowed in a queue before it is
considered full.

### Usage

    connect_update_queue_max_contacts(InstanceId, QueueId, MaxContacts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_queue_max_contacts_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_queue_max_contacts_:_QueueId">QueueId</code></td>
<td><p>[required] The identifier for the queue.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_queue_max_contacts_:_MaxContacts">MaxContacts</code></td>
<td><p>The maximum number of contacts that can be in the queue before it
is considered full.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_queue_max_contacts(
      InstanceId = "string",
      QueueId = "string",
      MaxContacts = 123
    )
