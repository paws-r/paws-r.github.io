<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_instance_event_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates one or more targets with an event window

### Description

Associates one or more targets with an event window. Only one type of
target (instance IDs, Dedicated Host IDs, or tags) can be specified with
an event window.

For more information, see [Define event windows for scheduled
events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_associate_instance_event_window(DryRun, InstanceEventWindowId,
      AssociationTarget)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_instance_event_window_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_instance_event_window_:_InstanceEventWindowId">InstanceEventWindowId</code></td>
<td><p>[required] The ID of the event window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_instance_event_window_:_AssociationTarget">AssociationTarget</code></td>
<td><p>[required] One or more targets associated with the specified
event window.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceEventWindow = list(
        InstanceEventWindowId = "string",
        TimeRanges = list(
          list(
            StartWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
            StartHour = 123,
            EndWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
            EndHour = 123
          )
        ),
        Name = "string",
        CronExpression = "string",
        AssociationTarget = list(
          InstanceIds = list(
            "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          DedicatedHostIds = list(
            "string"
          )
        ),
        State = "creating"|"deleting"|"active"|"deleted",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$associate_instance_event_window(
      DryRun = TRUE|FALSE,
      InstanceEventWindowId = "string",
      AssociationTarget = list(
        InstanceIds = list(
          "string"
        ),
        InstanceTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        DedicatedHostIds = list(
          "string"
        )
      )
    )
