<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_archive_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Archives GuardDuty findings that are specified by the list of finding IDs

### Description

Archives GuardDuty findings that are specified by the list of finding
IDs.

Only the administrator account can archive findings. Member accounts
don't have permission to archive findings from their accounts.

### Usage

    guardduty_archive_findings(DetectorId, FindingIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_archive_findings_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector that specifies the GuardDuty
service whose findings you want to archive.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_archive_findings_:_FindingIds">FindingIds</code></td>
<td><p>[required] The IDs of the findings that you want to
archive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$archive_findings(
      DetectorId = "string",
      FindingIds = list(
        "string"
      )
    )
