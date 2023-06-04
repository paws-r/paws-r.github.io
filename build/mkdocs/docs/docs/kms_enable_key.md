<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_enable_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the key state of a KMS key to enabled

### Description

Sets the key state of a KMS key to enabled. This allows you to use the
KMS key for [cryptographic
operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:EnableKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `disable_key`

### Usage

    kms_enable_key(KeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_enable_key_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key to enable.</p>
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

    svc$enable_key(
      KeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example enables the specified KMS key.
    svc$enable_key(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
