<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_disable_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the state of a KMS key to disabled

### Description

Sets the state of a KMS key to disabled. This change temporarily
prevents use of the KMS key for [cryptographic
operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).

For more information about how key state affects the use of a KMS key,
see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide* .

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:DisableKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `enable_key`

### Usage

    kms_disable_key(KeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_disable_key_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key to disable.</p>
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

An empty list.

### Request syntax

    svc$disable_key(
      KeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example disables the specified KMS key.
    svc$disable_key(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
