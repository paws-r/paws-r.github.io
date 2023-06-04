<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified contact.

Contact information remains available in Amazon Connect for 24 months,
and then it is deleted.

Only data from November 12, 2021, and later is returned by this API.

### Usage

    connect_describe_contact(InstanceId, ContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Contact = list(
        Arn = "string",
        Id = "string",
        InitialContactId = "string",
        PreviousContactId = "string",
        InitiationMethod = "INBOUND"|"OUTBOUND"|"TRANSFER"|"QUEUE_TRANSFER"|"CALLBACK"|"API"|"DISCONNECT"|"MONITOR"|"EXTERNAL_OUTBOUND",
        Name = "string",
        Description = "string",
        Channel = "VOICE"|"CHAT"|"TASK",
        QueueInfo = list(
          Id = "string",
          EnqueueTimestamp = as.POSIXct(
            "2015-01-01"
          )
        ),
        AgentInfo = list(
          Id = "string",
          ConnectedToAgentTimestamp = as.POSIXct(
            "2015-01-01"
          )
        ),
        InitiationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        DisconnectTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ScheduledTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        RelatedContactId = "string",
        WisdomInfo = list(
          SessionArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_contact(
      InstanceId = "string",
      ContactId = "string"
    )
