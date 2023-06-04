<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_event_start_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the start time for a scheduled Amazon EC2 instance event

### Description

Modifies the start time for a scheduled Amazon EC2 instance event.

### Usage

    ec2_modify_instance_event_start_time(DryRun, InstanceId,
      InstanceEventId, NotBefore)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_event_start_time_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_event_start_time_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance with the scheduled
event.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_event_start_time_:_InstanceEventId">InstanceEventId</code></td>
<td><p>[required] The ID of the event whose date and time you are
modifying.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_event_start_time_:_NotBefore">NotBefore</code></td>
<td><p>[required] The new date and time when the event will take
place.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Event = list(
        InstanceEventId = "string",
        Code = "instance-reboot"|"system-reboot"|"system-maintenance"|"instance-retirement"|"instance-stop",
        Description = "string",
        NotAfter = as.POSIXct(
          "2015-01-01"
        ),
        NotBefore = as.POSIXct(
          "2015-01-01"
        ),
        NotBeforeDeadline = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$modify_instance_event_start_time(
      DryRun = TRUE|FALSE,
      InstanceId = "string",
      InstanceEventId = "string",
      NotBefore = as.POSIXct(
        "2015-01-01"
      )
    )
