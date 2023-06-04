<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_assign_tape_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns a tape to a tape pool for archiving

### Description

Assigns a tape to a tape pool for archiving. The tape assigned to a pool
is archived in the S3 storage class that is associated with the pool.
When you use your backup application to eject the tape, the tape is
archived directly into the S3 storage class (S3 Glacier or S3 Glacier
Deep Archive) that corresponds to the pool.

### Usage

    storagegateway_assign_tape_pool(TapeARN, PoolId,
      BypassGovernanceRetention)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_assign_tape_pool_:_TapeARN">TapeARN</code></td>
<td><p>[required] The unique Amazon Resource Name (ARN) of the virtual
tape that you want to add to the tape pool.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_assign_tape_pool_:_PoolId">PoolId</code></td>
<td><p>[required] The ID of the pool that you want to add your tape to
for archiving. The tape in this pool is archived in the S3 storage class
that is associated with the pool. When you use your backup application
to eject the tape, the tape is archived directly into the storage class
(S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_assign_tape_pool_:_BypassGovernanceRetention">BypassGovernanceRetention</code></td>
<td><p>Set permissions to bypass governance retention. If the lock type
of the archived tape is <code>Governance</code>, the tape's archived age
is not older than <code>RetentionLockInDays</code>, and the user does
not already have <code>BypassGovernanceRetention</code>, setting this to
TRUE enables the user to bypass the retention lock. This parameter is
set to true by default for calls from the console.</p>
<p>Valid values: <code>TRUE</code> | <code>FALSE</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeARN = "string"
    )

### Request syntax

    svc$assign_tape_pool(
      TapeARN = "string",
      PoolId = "string",
      BypassGovernanceRetention = TRUE|FALSE
    )
