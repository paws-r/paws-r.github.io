<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_traffic_mirror_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Traffic Mirror filter

### Description

Deletes the specified Traffic Mirror filter.

You cannot delete a Traffic Mirror filter that is in use by a Traffic
Mirror session.

### Usage

    ec2_delete_traffic_mirror_filter(TrafficMirrorFilterId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_traffic_mirror_filter_:_TrafficMirrorFilterId">TrafficMirrorFilterId</code></td>
<td><p>[required] The ID of the Traffic Mirror filter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_traffic_mirror_filter_:_DryRun">DryRun</code></td>
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
      TrafficMirrorFilterId = "string"
    )

### Request syntax

    svc$delete_traffic_mirror_filter(
      TrafficMirrorFilterId = "string",
      DryRun = TRUE|FALSE
    )
