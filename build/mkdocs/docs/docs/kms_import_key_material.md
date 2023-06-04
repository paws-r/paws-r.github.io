<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_import_key_material</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports key material into an existing symmetric encryption KMS key that was created without key material

### Description

Imports key material into an existing symmetric encryption KMS key that
was created without key material. After you successfully import key
material into a KMS key, you can [reimport the same key
material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
into that KMS key, but you cannot import different key material.

You cannot perform this operation on an asymmetric KMS key, an HMAC KMS
key, or on any KMS key in a different Amazon Web Services account. For
more information about creating KMS keys with no key material and then
importing key material, see [Importing Key
Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the *Key Management Service Developer Guide*.

Before using this operation, call `get_parameters_for_import`. Its
response includes a public key and an import token. Use the public key
to encrypt the key material. Then, submit the import token from the same
`get_parameters_for_import` response.

When calling this operation, you must specify the following values:

-   The key ID or key ARN of a KMS key with no key material. Its
    `Origin` must be `EXTERNAL`.

    To create a KMS key with no key material, call `create_key` and set
    the value of its `Origin` parameter to `EXTERNAL`. To get the
    `Origin` of a KMS key, call `describe_key`.)

-   The encrypted key material. To get the public key to encrypt the key
    material, call `get_parameters_for_import`.

-   The import token that `get_parameters_for_import` returned. You must
    use a public key and token from the same `get_parameters_for_import`
    response.

-   Whether the key material expires (`ExpirationModel`) and, if so,
    when (`ValidTo`). If you set an expiration date, on the specified
    date, KMS deletes the key material from the KMS key, making the KMS
    key unusable. To use the KMS key in cryptographic operations again,
    you must reimport the same key material. The only way to change the
    expiration model or expiration date is by reimporting the same key
    material and specifying a new expiration date.

When this operation is successful, the key state of the KMS key changes
from `PendingImport` to `Enabled`, and you can use the KMS key.

If this operation fails, use the exception to help determine the
problem. If the error is related to the key material, the import token,
or wrapping key, use `get_parameters_for_import` to get a new public key
and import token for the KMS key and repeat the import procedure. For
help, see [How To Import Key
Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview)
in the *Key Management Service Developer Guide*.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:ImportKeyMaterial](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `delete_imported_key_material`

-   `get_parameters_for_import`

### Usage

    kms_import_key_material(KeyId, ImportToken, EncryptedKeyMaterial,
      ValidTo, ExpirationModel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_import_key_material_:_KeyId">KeyId</code></td>
<td><p>[required] The identifier of the symmetric encryption KMS key
that receives the imported key material. This must be the same KMS key
specified in the <code>KeyID</code> parameter of the corresponding
<code>get_parameters_for_import</code> request. The <code>Origin</code>
of the KMS key must be <code>EXTERNAL</code>. You cannot perform this
operation on an asymmetric KMS key, an HMAC KMS key, a KMS key in a
custom key store, or on a KMS key in a different Amazon Web Services
account</p>
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
id="kms_import_key_material_:_ImportToken">ImportToken</code></td>
<td><p>[required] The import token that you received in the response to
a previous <code>get_parameters_for_import</code> request. It must be
from the same response that contained the public key that you used to
encrypt the key material.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_import_key_material_:_EncryptedKeyMaterial">EncryptedKeyMaterial</code></td>
<td><p>[required] The encrypted key material to import. The key material
must be encrypted with the public wrapping key that
<code>get_parameters_for_import</code> returned, using the wrapping
algorithm that you specified in the same
<code>get_parameters_for_import</code> request.</p></td>
</tr>
<tr class="even">
<td><code id="kms_import_key_material_:_ValidTo">ValidTo</code></td>
<td><p>The date and time when the imported key material expires. This
parameter is required when the value of the <code>ExpirationModel</code>
parameter is <code>KEY_MATERIAL_EXPIRES</code>. Otherwise it is not
valid.</p>
<p>The value of this parameter must be a future date and time. The
maximum value is 365 days from the request date.</p>
<p>When the key material expires, KMS deletes the key material from the
KMS key. Without its key material, the KMS key is unusable. To use the
KMS key in cryptographic operations, you must reimport the same key
material.</p>
<p>You cannot change the <code>ExpirationModel</code> or
<code>ValidTo</code> values for the current import after the request
completes. To change either value, you must delete
(<code>delete_imported_key_material</code>) and reimport the key
material.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_import_key_material_:_ExpirationModel">ExpirationModel</code></td>
<td><p>Specifies whether the key material expires. The default is
<code>KEY_MATERIAL_EXPIRES</code>.</p>
<p>When the value of <code>ExpirationModel</code> is
<code>KEY_MATERIAL_EXPIRES</code>, you must specify a value for the
<code>ValidTo</code> parameter. When value is
<code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must omit the
<code>ValidTo</code> parameter.</p>
<p>You cannot change the <code>ExpirationModel</code> or
<code>ValidTo</code> values for the current import after the request
completes. To change either value, you must delete
(<code>delete_imported_key_material</code>) and reimport the key
material.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$import_key_material(
      KeyId = "string",
      ImportToken = raw,
      EncryptedKeyMaterial = raw,
      ValidTo = as.POSIXct(
        "2015-01-01"
      ),
      ExpirationModel = "KEY_MATERIAL_EXPIRES"|"KEY_MATERIAL_DOES_NOT_EXPIRE"
    )

### Examples

    ## Not run: 
    # The following example imports key material into the specified KMS key.
    svc$import_key_material(
      EncryptedKeyMaterial = "<binary data>",
      ExpirationModel = "KEY_MATERIAL_DOES_NOT_EXPIRE",
      ImportToken = "<binary data>",
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
