<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ebs_get_snapshot_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data in a block in an Amazon Elastic Block Store snapshot

### Description

Returns the data in a block in an Amazon Elastic Block Store snapshot.

### Usage

    ebs_get_snapshot_block(SnapshotId, BlockIndex, BlockToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ebs_get_snapshot_block_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot containing the block from which
to get data.</p>
<p>If the specified snapshot is encrypted, you must have permission to
use the KMS key that was used to encrypt the snapshot. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">Using
encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ebs_get_snapshot_block_:_BlockIndex">BlockIndex</code></td>
<td><p>[required] The block index of the block in which to read the
data. A block index is a logical index in units of <code>512</code> KiB
blocks. To identify the block index, divide the logical offset of the
data in the logical volume by the block size (logical offset of
data/<code>524288</code>). The logical offset of the data must be
<code>512</code> KiB aligned.</p></td>
</tr>
<tr class="odd">
<td><code
id="ebs_get_snapshot_block_:_BlockToken">BlockToken</code></td>
<td><p>[required] The block token of the block from which to get data.
You can obtain the <code>BlockToken</code> by running the
<code>list_changed_blocks</code> or <code>list_snapshot_blocks</code>
operations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataLength = 123,
      BlockData = raw,
      Checksum = "string",
      ChecksumAlgorithm = "SHA256"
    )

### Request syntax

    svc$get_snapshot_block(
      SnapshotId = "string",
      BlockIndex = 123,
      BlockToken = "string"
    )
