<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_get_parameters_for_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the items you need to import key material into a symmetric encryption KMS key

### Description

Returns the items you need to import key material into a symmetric
encryption KMS key. For more information about importing key material
into KMS, see [Importing key
material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the *Key Management Service Developer Guide*.

This operation returns a public key and an import token. Use the public
key to encrypt the symmetric key material. Store the import token to
send with a subsequent `import_key_material` request.

You must specify the key ID of the symmetric encryption KMS key into
which you will import key material. The KMS key `Origin` must be
`EXTERNAL`. You must also specify the wrapping algorithm and type of
wrapping key (public key) that you will use to encrypt the key material.
You cannot perform this operation on an asymmetric KMS key, an HMAC KMS
key, or on any KMS key in a different Amazon Web Services account.

To import key material, you must use the public key and import token
from the same response. These items are valid for 24 hours. The
expiration date and time appear in the `get_parameters_for_import`
response. You cannot use an expired token in an `import_key_material`
request. If your key and token expire, send another
`get_parameters_for_import` request.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:GetParametersForImport](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `import_key_material`

-   `delete_imported_key_material`

### Usage

    kms_get_parameters_for_import(KeyId, WrappingAlgorithm, WrappingKeySpec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_get_parameters_for_import_:_KeyId">KeyId</code></td>
<td><p>[required] The identifier of the symmetric encryption KMS key
into which you will import key material. The <code>Origin</code> of the
KMS key must be <code>EXTERNAL</code>.</p>
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
id="kms_get_parameters_for_import_:_WrappingAlgorithm">WrappingAlgorithm</code></td>
<td><p>[required] The algorithm you will use to encrypt the key material
before using the <code>import_key_material</code> operation to import
it. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html">Encrypt
the key material</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>The <code>RSAES_PKCS1_V1_5</code> wrapping algorithm is deprecated.
We recommend that you begin using a different wrapping algorithm
immediately. KMS will end support for <code>RSAES_PKCS1_V1_5</code> by
October 1, 2023 pursuant to cryptographic key management guidance from
the National Institute of Standards and Technology (NIST).</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_get_parameters_for_import_:_WrappingKeySpec">WrappingKeySpec</code></td>
<td><p>[required] The type of wrapping key (public key) to return in the
response. Only 2048-bit RSA public keys are supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyId = "string",
      ImportToken = raw,
      PublicKey = raw,
      ParametersValidTo = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_parameters_for_import(
      KeyId = "string",
      WrappingAlgorithm = "RSAES_PKCS1_V1_5"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256",
      WrappingKeySpec = "RSA_2048"
    )

### Examples

    ## Not run: 
    # The following example retrieves the public key and import token for the
    # specified KMS key.
    svc$get_parameters_for_import(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      WrappingAlgorithm = "RSAES_OAEP_SHA_1",
      WrappingKeySpec = "RSA_2048"
    )

    ## End(Not run)
