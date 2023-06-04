<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_disable_key_rotation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables automatic rotation of the key material of the specified symmetric encryption KMS key

### Description

Disables [automatic rotation of the key
material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
of the specified symmetric encryption KMS key.

Automatic key rotation is supported only on symmetric encryption KMS
keys. You cannot enable automatic rotation of [asymmetric KMS
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

You can enable (`enable_key_rotation`) and disable automatic rotation of
the key material in [customer managed KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
Key material rotation of [Amazon Web Services managed KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
is not configurable. KMS always rotates the key material for every year.
Rotation of [Amazon Web Services owned KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
varies.

In May 2022, KMS changed the rotation schedule for Amazon Web Services
managed keys from every three years to every year. For details, see
`enable_key_rotation`.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:DisableKeyRotation](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `enable_key_rotation`

-   `get_key_rotation_status`

### Usage

    kms_disable_key_rotation(KeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_disable_key_rotation_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies a symmetric encryption KMS key. You cannot
enable or disable automatic rotation of <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks">asymmetric
KMS keys</a>, <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC
KMS keys</a>, KMS keys with <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported
key material</a>, or KMS keys in a <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
key store</a>.</p>
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

    svc$disable_key_rotation(
      KeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example disables automatic annual rotation of the key
    # material for the specified KMS key.
    svc$disable_key_rotation(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
