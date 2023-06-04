<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_fast_snapshot_restores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the state of fast snapshot restores for your snapshots

### Description

Describes the state of fast snapshot restores for your snapshots.

### Usage

    ec2_describe_fast_snapshot_restores(Filters, MaxResults, NextToken,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_fast_snapshot_restores_:_Filters">Filters</code></td>
<td><p>The filters. The possible values are:</p>
<ul>
<li><p><code>availability-zone</code>: The Availability Zone of the
snapshot.</p></li>
<li><p><code>owner-id</code>: The ID of the Amazon Web Services account
that enabled fast snapshot restore on the snapshot.</p></li>
<li><p><code>snapshot-id</code>: The ID of the snapshot.</p></li>
<li><p><code>state</code>: The state of fast snapshot restores for the
snapshot (<code>enabling</code> | <code>optimizing</code> |
<code>enabled</code> | <code>disabling</code> |
<code>disabled</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fast_snapshot_restores_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fast_snapshot_restores_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fast_snapshot_restores_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FastSnapshotRestores = list(
        list(
          SnapshotId = "string",
          AvailabilityZone = "string",
          State = "enabling"|"optimizing"|"enabled"|"disabling"|"disabled",
          StateTransitionReason = "string",
          OwnerId = "string",
          OwnerAlias = "string",
          EnablingTime = as.POSIXct(
            "2015-01-01"
          ),
          OptimizingTime = as.POSIXct(
            "2015-01-01"
          ),
          EnabledTime = as.POSIXct(
            "2015-01-01"
          ),
          DisablingTime = as.POSIXct(
            "2015-01-01"
          ),
          DisabledTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_fast_snapshot_restores(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
