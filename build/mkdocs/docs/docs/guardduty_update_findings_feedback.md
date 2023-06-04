<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_findings_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Marks the specified GuardDuty findings as useful or not useful

### Description

Marks the specified GuardDuty findings as useful or not useful.

### Usage

    guardduty_update_findings_feedback(DetectorId, FindingIds, Feedback,
      Comments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_findings_feedback_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector associated with the findings to
update feedback for.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_findings_feedback_:_FindingIds">FindingIds</code></td>
<td><p>[required] The IDs of the findings that you want to mark as
useful or not useful.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_findings_feedback_:_Feedback">Feedback</code></td>
<td><p>[required] The feedback for the finding.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_findings_feedback_:_Comments">Comments</code></td>
<td><p>Additional feedback about the GuardDuty findings.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_findings_feedback(
      DetectorId = "string",
      FindingIds = list(
        "string"
      ),
      Feedback = "USEFUL"|"NOT_USEFUL",
      Comments = "string"
    )
