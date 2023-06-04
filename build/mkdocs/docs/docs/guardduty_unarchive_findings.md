<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_unarchive_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unarchives GuardDuty findings specified by the findingIds

### Description

Unarchives GuardDuty findings specified by the `findingIds`.

### Usage

    guardduty_unarchive_findings(DetectorId, FindingIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_unarchive_findings_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector associated with the findings to
unarchive.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_unarchive_findings_:_FindingIds">FindingIds</code></td>
<td><p>[required] The IDs of the findings to unarchive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unarchive_findings(
      DetectorId = "string",
      FindingIds = list(
        "string"
      )
    )
