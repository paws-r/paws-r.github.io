<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_snapshot_tier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Archives an Amazon EBS snapshot

### Description

Archives an Amazon EBS snapshot. When you archive a snapshot, it is
converted to a full snapshot that includes all of the blocks of data
that were written to the volume at the time the snapshot was created,
and moved from the standard tier to the archive tier. For more
information, see [Archive Amazon EBS
snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-archive.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_modify_snapshot_tier(SnapshotId, StorageTier, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_snapshot_tier_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_snapshot_tier_:_StorageTier">StorageTier</code></td>
<td><p>The name of the storage tier. You must specify
<code>archive</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_snapshot_tier_:_DryRun">DryRun</code></td>
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
      SnapshotId = "string",
      TieringStartTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$modify_snapshot_tier(
      SnapshotId = "string",
      StorageTier = "archive",
      DryRun = TRUE|FALSE
    )
