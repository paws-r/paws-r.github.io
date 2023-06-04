<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_list_snapshots_in_recycle_bin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists one or more snapshots that are currently in the Recycle Bin

### Description

Lists one or more snapshots that are currently in the Recycle Bin.

### Usage

    ec2_list_snapshots_in_recycle_bin(MaxResults, NextToken, SnapshotIds,
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
id="ec2_list_snapshots_in_recycle_bin_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_list_snapshots_in_recycle_bin_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_list_snapshots_in_recycle_bin_:_SnapshotIds">SnapshotIds</code></td>
<td><p>The IDs of the snapshots to list. Omit this parameter to list all
of the snapshots that are in the Recycle Bin.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_list_snapshots_in_recycle_bin_:_DryRun">DryRun</code></td>
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
      Snapshots = list(
        list(
          SnapshotId = "string",
          RecycleBinEnterTime = as.POSIXct(
            "2015-01-01"
          ),
          RecycleBinExitTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          VolumeId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_snapshots_in_recycle_bin(
      MaxResults = 123,
      NextToken = "string",
      SnapshotIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
