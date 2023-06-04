<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_traffic_mirror_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Traffic Mirror target

### Description

Deletes the specified Traffic Mirror target.

You cannot delete a Traffic Mirror target that is in use by a Traffic
Mirror session.

### Usage

    ec2_delete_traffic_mirror_target(TrafficMirrorTargetId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_traffic_mirror_target_:_TrafficMirrorTargetId">TrafficMirrorTargetId</code></td>
<td><p>[required] The ID of the Traffic Mirror target.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_traffic_mirror_target_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorTargetId = "string"
    )

### Request syntax

    svc$delete_traffic_mirror_target(
      TrafficMirrorTargetId = "string",
      DryRun = TRUE|FALSE
    )
