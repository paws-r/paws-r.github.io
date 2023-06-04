<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_delete_segment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a segment

### Description

Deletes a segment. You can't delete a segment that is being used in a
launch or experiment, even if that launch or experiment is not currently
running.

### Usage

    cloudwatchevidently_delete_segment(segment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_delete_segment_:_segment">segment</code></td>
<td><p>[required] Specifies the segment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_segment(
      segment = "string"
    )
