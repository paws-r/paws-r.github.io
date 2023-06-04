<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List lens notifications

### Description

List lens notifications.

### Usage

    wellarchitected_list_notifications(WorkloadId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_notifications_:_WorkloadId">WorkloadId</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_notifications_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_notifications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotificationSummaries = list(
        list(
          Type = "LENS_VERSION_UPGRADED"|"LENS_VERSION_DEPRECATED",
          LensUpgradeSummary = list(
            WorkloadId = "string",
            WorkloadName = "string",
            LensAlias = "string",
            LensArn = "string",
            CurrentLensVersion = "string",
            LatestLensVersion = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_notifications(
      WorkloadId = "string",
      NextToken = "string",
      MaxResults = 123
    )
