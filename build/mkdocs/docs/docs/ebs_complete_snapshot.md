<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ebs_complete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Seals and completes the snapshot after all of the required blocks of data have been written to it

### Description

Seals and completes the snapshot after all of the required blocks of
data have been written to it. Completing the snapshot changes the status
to `completed`. You cannot write new blocks to a snapshot after it has
been completed.

### Usage

    ebs_complete_snapshot(SnapshotId, ChangedBlocksCount, Checksum,
      ChecksumAlgorithm, ChecksumAggregationMethod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ebs_complete_snapshot_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="ebs_complete_snapshot_:_ChangedBlocksCount">ChangedBlocksCount</code></td>
<td><p>[required] The number of blocks that were written to the
snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="ebs_complete_snapshot_:_Checksum">Checksum</code></td>
<td><p>An aggregated Base-64 SHA256 checksum based on the checksums of
each written block.</p>
<p>To generate the aggregated checksum using the linear aggregation
method, arrange the checksums for each written block in ascending order
of their block index, concatenate them to form a single string, and then
generate the checksum on the entire string using the SHA256
algorithm.</p></td>
</tr>
<tr class="even">
<td><code
id="ebs_complete_snapshot_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>The algorithm used to generate the checksum. Currently, the only
supported algorithm is <code>SHA256</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ebs_complete_snapshot_:_ChecksumAggregationMethod">ChecksumAggregationMethod</code></td>
<td><p>The aggregation method used to generate the checksum. Currently,
the only supported aggregation method is <code>LINEAR</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "completed"|"pending"|"error"
    )

### Request syntax

    svc$complete_snapshot(
      SnapshotId = "string",
      ChangedBlocksCount = 123,
      Checksum = "string",
      ChecksumAlgorithm = "SHA256",
      ChecksumAggregationMethod = "LINEAR"
    )
