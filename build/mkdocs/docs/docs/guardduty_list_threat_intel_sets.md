<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_threat_intel_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID

### Description

Lists the ThreatIntelSets of the GuardDuty service specified by the
detector ID. If you use this operation from a member account, the
ThreatIntelSets associated with the administrator account are returned.

### Usage

    guardduty_list_threat_intel_sets(DetectorId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_threat_intel_sets_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that the threatIntelSet
is associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_threat_intel_sets_:_MaxResults">MaxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items that you want in the response. The default value is 50. The
maximum value is 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_list_threat_intel_sets_:_NextToken">NextToken</code></td>
<td><p>You can use this parameter to paginate results in the response.
Set the value of this parameter to null on your first call to the list
action. For subsequent calls to the action, fill nextToken in the
request with the value of NextToken from the previous response to
continue listing data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThreatIntelSetIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_threat_intel_sets(
      DetectorId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
