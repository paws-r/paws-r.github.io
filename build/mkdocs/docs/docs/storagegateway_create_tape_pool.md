<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_tape_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom tape pool

### Description

Creates a new custom tape pool. You can use custom tape pool to enable
tape retention lock on tapes that are archived in the custom pool.

### Usage

    storagegateway_create_tape_pool(PoolName, StorageClass,
      RetentionLockType, RetentionLockTimeInDays, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_tape_pool_:_PoolName">PoolName</code></td>
<td><p>[required] The name of the new custom tape pool.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tape_pool_:_StorageClass">StorageClass</code></td>
<td><p>[required] The storage class that is associated with the new
custom pool. When you use your backup application to eject the tape, the
tape is archived directly into the storage class (S3 Glacier or S3
Glacier Deep Archive) that corresponds to the pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_tape_pool_:_RetentionLockType">RetentionLockType</code></td>
<td><p>Tape retention lock can be configured in two modes. When
configured in governance mode, Amazon Web Services accounts with
specific IAM permissions are authorized to remove the tape retention
lock from archived virtual tapes. When configured in compliance mode,
the tape retention lock cannot be removed by any user, including the
root Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tape_pool_:_RetentionLockTimeInDays">RetentionLockTimeInDays</code></td>
<td><p>Tape retention lock time is set in days. Tape retention lock can
be enabled for up to 100 years (36,500 days).</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_create_tape_pool_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to tape pool. Each
tag is a key-value pair.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: + -
= . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolARN = "string"
    )

### Request syntax

    svc$create_tape_pool(
      PoolName = "string",
      StorageClass = "DEEP_ARCHIVE"|"GLACIER",
      RetentionLockType = "COMPLIANCE"|"GOVERNANCE"|"NONE",
      RetentionLockTimeInDays = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
