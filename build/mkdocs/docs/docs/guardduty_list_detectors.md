<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_detectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists detectorIds of all the existing Amazon GuardDuty detector resources

### Description

Lists detectorIds of all the existing Amazon GuardDuty detector
resources.

### Usage

    guardduty_list_detectors(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_detectors_:_MaxResults">MaxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items that you want in the response. The default value is 50. The
maximum value is 50.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_detectors_:_NextToken">NextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the list action. For
subsequent calls to the action, fill nextToken in the request with the
value of NextToken from the previous response to continue listing
data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DetectorIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_detectors(
      MaxResults = 123,
      NextToken = "string"
    )
