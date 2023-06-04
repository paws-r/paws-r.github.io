<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified snapshot

### Description

Deletes the specified snapshot.

When you make periodic snapshots of a volume, the snapshots are
incremental, and only the blocks on the device that have changed since
your last snapshot are saved in the new snapshot. When you delete a
snapshot, only the data not needed for any other snapshot is removed. So
regardless of which prior snapshots have been deleted, all active
snapshots will have access to all the information needed to restore the
volume.

You cannot delete a snapshot of the root device of an EBS volume used by
a registered AMI. You must first de-register the AMI before you can
delete the snapshot.

For more information, see [Delete an Amazon EBS
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_delete_snapshot(SnapshotId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_snapshot_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the EBS snapshot.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_snapshot_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_snapshot(
      SnapshotId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes a snapshot with the snapshot ID of
    # `snap-1234567890abcdef0`. If the command succeeds, no output is
    # returned.
    svc$delete_snapshot(
      SnapshotId = "snap-1234567890abcdef0"
    )

    ## End(Not run)
