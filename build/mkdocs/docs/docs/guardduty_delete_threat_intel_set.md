<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_threat_intel_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the ThreatIntelSet specified by the ThreatIntelSet ID

### Description

Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.

### Usage

    guardduty_delete_threat_intel_set(DetectorId, ThreatIntelSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_threat_intel_set_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that the threatIntelSet
is associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_delete_threat_intel_set_:_ThreatIntelSetId">ThreatIntelSetId</code></td>
<td><p>[required] The unique ID of the threatIntelSet that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_threat_intel_set(
      DetectorId = "string",
      ThreatIntelSetId = "string"
    )
