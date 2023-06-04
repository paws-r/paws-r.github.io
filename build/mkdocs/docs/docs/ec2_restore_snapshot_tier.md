<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_restore_snapshot_tier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores an archived Amazon EBS snapshot for use temporarily or permanently, or modifies the restore period or restore type for a snapshot that was previously temporarily restored

### Description

Restores an archived Amazon EBS snapshot for use temporarily or
permanently, or modifies the restore period or restore type for a
snapshot that was previously temporarily restored.

For more information see [Restore an archived
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-snapshot-archiving.html#restore-archived-snapshot)
and [modify the restore period or restore type for a temporarily
restored
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-snapshot-archiving.html#modify-temp-restore-period)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_restore_snapshot_tier(SnapshotId, TemporaryRestoreDays,
      PermanentRestore, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_restore_snapshot_tier_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot to restore.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_restore_snapshot_tier_:_TemporaryRestoreDays">TemporaryRestoreDays</code></td>
<td><p>Specifies the number of days for which to temporarily restore an
archived snapshot. Required for temporary restores only. The snapshot
will be automatically re-archived after this period.</p>
<p>To temporarily restore an archived snapshot, specify the number of
days and omit the <strong>PermanentRestore</strong> parameter or set it
to <code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_restore_snapshot_tier_:_PermanentRestore">PermanentRestore</code></td>
<td><p>Indicates whether to permanently restore an archived snapshot. To
permanently restore an archived snapshot, specify <code>true</code> and
omit the
<strong>RestoreSnapshotTierRequest$TemporaryRestoreDays</strong>
parameter.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_restore_snapshot_tier_:_DryRun">DryRun</code></td>
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
      RestoreStartTime = as.POSIXct(
        "2015-01-01"
      ),
      RestoreDuration = 123,
      IsPermanentRestore = TRUE|FALSE
    )

### Request syntax

    svc$restore_snapshot_tier(
      SnapshotId = "string",
      TemporaryRestoreDays = 123,
      PermanentRestore = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
