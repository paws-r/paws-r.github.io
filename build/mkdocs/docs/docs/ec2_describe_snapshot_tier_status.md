<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_snapshot_tier_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the storage tier status of one or more Amazon EBS snapshots

### Description

Describes the storage tier status of one or more Amazon EBS snapshots.

### Usage

    ec2_describe_snapshot_tier_status(Filters, DryRun, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_snapshot_tier_status_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>snapshot-id</code> - The snapshot ID.</p></li>
<li><p><code>volume-id</code> - The ID of the volume the snapshot is
for.</p></li>
<li><p><code>last-tiering-operation</code> - The state of the last
archive or restore action. (<code
style="white-space: pre;">⁠archival-in-progress⁠</code> |
<code>archival-completed</code> | <code>archival-failed</code> | <code
style="white-space: pre;">⁠permanent-restore-in-progress⁠</code> |
<code>permanent-restore-completed</code> |
<code>permanent-restore-failed</code> | <code
style="white-space: pre;">⁠temporary-restore-in-progress⁠</code> |
<code>temporary-restore-completed</code> |
<code>temporary-restore-failed</code>)</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_snapshot_tier_status_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_snapshot_tier_status_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_snapshot_tier_status_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotTierStatuses = list(
        list(
          SnapshotId = "string",
          VolumeId = "string",
          Status = "pending"|"completed"|"error"|"recoverable"|"recovering",
          OwnerId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          StorageTier = "archive"|"standard",
          LastTieringStartTime = as.POSIXct(
            "2015-01-01"
          ),
          LastTieringProgress = 123,
          LastTieringOperationStatus = "archival-in-progress"|"archival-completed"|"archival-failed"|"temporary-restore-in-progress"|"temporary-restore-completed"|"temporary-restore-failed"|"permanent-restore-in-progress"|"permanent-restore-completed"|"permanent-restore-failed",
          LastTieringOperationStatusDetail = "string",
          ArchivalCompleteTime = as.POSIXct(
            "2015-01-01"
          ),
          RestoreExpiryTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_snapshot_tier_status(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
