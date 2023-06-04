<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_threat_intel_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the ThreatIntelSet specified by the ThreatIntelSet ID

### Description

Updates the ThreatIntelSet specified by the ThreatIntelSet ID.

### Usage

    guardduty_update_threat_intel_set(DetectorId, ThreatIntelSetId, Name,
      Location, Activate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_threat_intel_set_:_DetectorId">DetectorId</code></td>
<td><p>[required] The detectorID that specifies the GuardDuty service
whose ThreatIntelSet you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_threat_intel_set_:_ThreatIntelSetId">ThreatIntelSetId</code></td>
<td><p>[required] The unique ID that specifies the ThreatIntelSet that
you want to update.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_update_threat_intel_set_:_Name">Name</code></td>
<td><p>The unique ID that specifies the ThreatIntelSet that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_threat_intel_set_:_Location">Location</code></td>
<td><p>The updated URI of the file that contains the
ThreateIntelSet.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_threat_intel_set_:_Activate">Activate</code></td>
<td><p>The updated Boolean value that specifies whether the
ThreateIntelSet is active or not.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_threat_intel_set(
      DetectorId = "string",
      ThreatIntelSetId = "string",
      Name = "string",
      Location = "string",
      Activate = TRUE|FALSE
    )
