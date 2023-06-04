<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_cancel_key_deletion</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the deletion of a KMS key

### Description

Cancels the deletion of a KMS key. When this operation succeeds, the key
state of the KMS key is `Disabled`. To enable the KMS key, use
`enable_key`.

For more information about scheduling and canceling deletion of a KMS
key, see [Deleting KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the *Key Management Service Developer Guide*.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:CancelKeyDeletion](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `schedule_key_deletion`

### Usage

    kms_cancel_key_deletion(KeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_cancel_key_deletion_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key whose deletion is being
canceled.</p>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyId = "string"
    )

### Request syntax

    svc$cancel_key_deletion(
      KeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example cancels deletion of the specified KMS key.
    svc$cancel_key_deletion(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
