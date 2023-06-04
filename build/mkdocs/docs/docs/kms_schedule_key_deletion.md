<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_schedule_key_deletion</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Schedules the deletion of a KMS key

### Description

Schedules the deletion of a KMS key. By default, KMS applies a waiting
period of 30 days, but you can specify a waiting period of 7-30 days.
When this operation is successful, the key state of the KMS key changes
to `PendingDeletion` and the key can't be used in any cryptographic
operations. It remains in this state for the duration of the waiting
period. Before the waiting period ends, you can use
`cancel_key_deletion` to cancel the deletion of the KMS key. After the
waiting period ends, KMS deletes the KMS key, its key material, and all
KMS data associated with it, including all aliases that refer to it.

Deleting a KMS key is a destructive and potentially dangerous operation.
When a KMS key is deleted, all data that was encrypted under the KMS key
is unrecoverable. (The only exception is a multi-Region replica key.) To
prevent the use of a KMS key without deleting it, use `disable_key`.

You can schedule the deletion of a multi-Region primary key and its
replica keys at any time. However, KMS will not delete a multi-Region
primary key with existing replica keys. If you schedule the deletion of
a primary key with replicas, its key state changes to
`PendingReplicaDeletion` and it cannot be replicated or used in
cryptographic operations. This status can continue indefinitely. When
the last of its replicas keys is deleted (not just scheduled), the key
state of the primary key changes to `PendingDeletion` and its waiting
period (`PendingWindowInDays`) begins. For details, see [Deleting
multi-Region
keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html)
in the *Key Management Service Developer Guide*.

When KMS [deletes a KMS key from an CloudHSM key
store](https://docs.aws.amazon.com/kms/latest/developerguide/delete-cmk-keystore.html),
it makes a best effort to delete the associated key material from the
associated CloudHSM cluster. However, you might need to manually [delete
the orphaned key
material](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
from the cluster and its backups. [Deleting a KMS key from an external
key
store](https://docs.aws.amazon.com/kms/latest/developerguide/delete-xks-key.html)
has no effect on the associated external key. However, for both types of
custom key stores, deleting a KMS key is destructive and irreversible.
You cannot decrypt ciphertext encrypted under the KMS key by using only
its associated external key or CloudHSM key. Also, you cannot recreate a
KMS key in an external key store by creating a new KMS key with the same
key material.

For more information about scheduling a KMS key for deletion, see
[Deleting KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the *Key Management Service Developer Guide*.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**: kms:ScheduleKeyDeletion (key policy)

**Related operations**

-   `cancel_key_deletion`

-   `disable_key`

### Usage

    kms_schedule_key_deletion(KeyId, PendingWindowInDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_schedule_key_deletion_:_KeyId">KeyId</code></td>
<td><p>[required] The unique identifier of the KMS key to delete.</p>
<p>Specify the key ID or key ARN of the KMS key.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_schedule_key_deletion_:_PendingWindowInDays">PendingWindowInDays</code></td>
<td><p>The waiting period, specified in number of days. After the
waiting period ends, KMS deletes the KMS key.</p>
<p>If the KMS key is a multi-Region primary key with replica keys, the
waiting period begins when the last of its replica keys is deleted.
Otherwise, the waiting period begins immediately.</p>
<p>This value is optional. If you include a value, it must be between 7
and 30, inclusive. If you do not include a value, it defaults to
30.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyId = "string",
      DeletionDate = as.POSIXct(
        "2015-01-01"
      ),
      KeyState = "Creating"|"Enabled"|"Disabled"|"PendingDeletion"|"PendingImport"|"PendingReplicaDeletion"|"Unavailable"|"Updating",
      PendingWindowInDays = 123
    )

### Request syntax

    svc$schedule_key_deletion(
      KeyId = "string",
      PendingWindowInDays = 123
    )

### Examples

    ## Not run: 
    # The following example schedules the specified KMS key for deletion.
    svc$schedule_key_deletion(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      PendingWindowInDays = 7L
    )

    ## End(Not run)
