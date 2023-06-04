<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_enable_key_rotation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables automatic rotation of the key material of the specified symmetric encryption KMS key

### Description

Enables [automatic rotation of the key
material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
of the specified symmetric encryption KMS key.

When you enable automatic rotation of a[customer managed KMS
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
KMS rotates the key material of the KMS key one year (approximately 365
days) from the enable date and every year thereafter. You can monitor
rotation of the key material for your KMS keys in CloudTrail and Amazon
CloudWatch. To disable rotation of the key material in a customer
managed KMS key, use the `disable_key_rotation` operation.

Automatic key rotation is supported only on [symmetric encryption KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
You cannot enable automatic rotation of [asymmetric KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
[HMAC KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html),
KMS keys with [imported key
material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or KMS keys in a [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
To enable or disable automatic rotation of a set of related
[multi-Region
keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
set the property on the primary key.

You cannot enable or disable automatic rotation [Amazon Web Services
managed KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
KMS always rotates the key material of Amazon Web Services managed keys
every year. Rotation of [Amazon Web Services owned KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
varies.

In May 2022, KMS changed the rotation schedule for Amazon Web Services
managed keys from every three years (approximately 1,095 days) to every
year (approximately 365 days).

New Amazon Web Services managed keys are automatically rotated one year
after they are created, and approximately every year thereafter.

Existing Amazon Web Services managed keys are automatically rotated one
year after their most recent rotation, and every year thereafter.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:EnableKeyRotation](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `disable_key_rotation`

-   `get_key_rotation_status`

### Usage

    kms_enable_key_rotation(KeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_enable_key_rotation_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies a symmetric encryption KMS key. You cannot
enable automatic rotation of <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric
KMS keys</a>, <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC
KMS keys</a>, KMS keys with <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported
key material</a>, or KMS keys in a <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
key store</a>. To enable or disable automatic rotation of a set of
related <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate">multi-Region
keys</a>, set the property on the primary key.</p>
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

    svc$enable_key_rotation(
      KeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example enables automatic annual rotation of the key
    # material for the specified KMS key.
    svc$enable_key_rotation(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
