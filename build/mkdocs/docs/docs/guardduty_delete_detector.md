<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon GuardDuty detector that is specified by the detector ID

### Description

Deletes an Amazon GuardDuty detector that is specified by the detector
ID.

### Usage

    guardduty_delete_detector(DetectorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_detector_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_detector(
      DetectorId = "string"
    )
