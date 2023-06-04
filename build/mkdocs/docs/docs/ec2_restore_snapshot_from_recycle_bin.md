<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_restore_snapshot_from_recycle_bin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a snapshot from the Recycle Bin

### Description

Restores a snapshot from the Recycle Bin. For more information, see
[Restore snapshots from the Recycle
Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-snaps.html#recycle-bin-restore-snaps)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_restore_snapshot_from_recycle_bin(SnapshotId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_restore_snapshot_from_recycle_bin_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot to restore.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_restore_snapshot_from_recycle_bin_:_DryRun">DryRun</code></td>
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
      OutpostArn = "string",
      Description = "string",
      Encrypted = TRUE|FALSE,
      OwnerId = "string",
      Progress = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      State = "pending"|"completed"|"error"|"recoverable"|"recovering",
      VolumeId = "string",
      VolumeSize = 123
    )

### Request syntax

    svc$restore_snapshot_from_recycle_bin(
      SnapshotId = "string",
      DryRun = TRUE|FALSE
    )
