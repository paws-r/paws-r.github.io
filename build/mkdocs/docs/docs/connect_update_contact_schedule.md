<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the scheduled time of a task contact that is already scheduled

### Description

Updates the scheduled time of a task contact that is already scheduled.

### Usage

    connect_update_contact_schedule(InstanceId, ContactId, ScheduledTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_schedule_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_schedule_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_schedule_:_ScheduledTime">ScheduledTime</code></td>
<td><p>[required] The timestamp, in Unix Epoch seconds format, at which
to start running the inbound flow. The scheduled time cannot be in the
past. It must be within up to 6 days in future.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_schedule(
      InstanceId = "string",
      ContactId = "string",
      ScheduledTime = as.POSIXct(
        "2015-01-01"
      )
    )
