<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_instance_event_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified event window

### Description

Deletes the specified event window.

For more information, see [Define event windows for scheduled
events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_delete_instance_event_window(DryRun, ForceDelete,
      InstanceEventWindowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_instance_event_window_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_instance_event_window_:_ForceDelete">ForceDelete</code></td>
<td><p>Specify <code>true</code> to force delete the event window. Use
the force delete parameter if the event window is currently associated
with targets.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_instance_event_window_:_InstanceEventWindowId">InstanceEventWindowId</code></td>
<td><p>[required] The ID of the event window.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceEventWindowState = list(
        InstanceEventWindowId = "string",
        State = "creating"|"deleting"|"active"|"deleted"
      )
    )

### Request syntax

    svc$delete_instance_event_window(
      DryRun = TRUE|FALSE,
      ForceDelete = TRUE|FALSE,
      InstanceEventWindowId = "string"
    )
