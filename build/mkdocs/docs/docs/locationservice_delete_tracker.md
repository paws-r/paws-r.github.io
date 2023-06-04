<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_delete_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a tracker resource from your Amazon Web Services account

### Description

Deletes a tracker resource from your Amazon Web Services account.

This operation deletes the resource permanently. If the tracker resource
is in use, you may encounter an error. Make sure that the target
resource isn't a dependency for your applications.

### Usage

    locationservice_delete_tracker(TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_delete_tracker_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name of the tracker resource to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tracker(
      TrackerName = "string"
    )
