<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_encrypt</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Encrypts plaintext of up to 4,096 bytes using a KMS key

### Description

Encrypts plaintext of up to 4,096 bytes using a KMS key. You can use a
symmetric or asymmetric KMS key with a `KeyUsage` of `ENCRYPT_DECRYPT`.

You can use this operation to encrypt small amounts of arbitrary data,
such as a personal identifier or database password, or other sensitive
information. You don't need to use the `encrypt` operation to encrypt a
data key. The `generate_data_key` and `generate_data_key_pair`
operations return a plaintext data key and an encrypted copy of that
data key.

If you use a symmetric encryption KMS key, you can use an encryption
context to add additional security to your encryption operation. If you
specify an `EncryptionContext` when encrypting data, you must specify
the same encryption context (a case-sensitive exact match) when
decrypting the data. Otherwise, the request to decrypt fails with an
`InvalidCiphertextException`. For more information, see [Encryption
Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the *Key Management Service Developer Guide*.

If you specify an asymmetric KMS key, you must also specify the
encryption algorithm. The algorithm must be compatible with the KMS key
spec.

When you use an asymmetric KMS key to encrypt or reencrypt data, be sure
to record the KMS key and encryption algorithm that you choose. You will
be required to provide the same KMS key and encryption algorithm when
you decrypt the data. If the KMS key and algorithm do not match the
values used to encrypt the data, the decrypt operation fails.

You are not required to supply the key ID and encryption algorithm when
you decrypt with symmetric encryption KMS keys because KMS stores this
information in the ciphertext blob. KMS cannot store metadata in
ciphertext generated with asymmetric keys. The standard format for
asymmetric key ciphertext does not include configurable fields.

The maximum size of the data that you can encrypt varies with the type
of KMS key and the encryption algorithm that you choose.

-   Symmetric encryption KMS keys

    -   `SYMMETRIC_DEFAULT`: 4096 bytes

-   `RSA_2048`

    -   `RSAES_OAEP_SHA_1`: 214 bytes

    -   `RSAES_OAEP_SHA_256`: 190 bytes

-   `RSA_3072`

    -   `RSAES_OAEP_SHA_1`: 342 bytes

    -   `RSAES_OAEP_SHA_256`: 318 bytes

-   `RSA_4096`

    -   `RSAES_OAEP_SHA_1`: 470 bytes

    -   `RSAES_OAEP_SHA_256`: 446 bytes

-   `SM2PKE`: 1024 bytes (China Regions only)

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:Encrypt](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `decrypt`

-   `generate_data_key`

-   `generate_data_key_pair`

### Usage

    kms_encrypt(KeyId, Plaintext, EncryptionContext, GrantTokens,
      EncryptionAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_encrypt_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key to use in the encryption
operation. The KMS key must have a <code>KeyUsage</code> of
<code>ENCRYPT_DECRYPT</code>. To find the <code>KeyUsage</code> of a KMS
key, use the <code>describe_key</code> operation.</p>
<p>To specify a KMS key, use its key ID, key ARN, alias name, or alias
ARN. When using an alias name, prefix it with <code>"alias/"</code>. To
specify a KMS key in a different Amazon Web Services account, you must
use the key ARN or alias ARN.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Alias name: <code>alias/ExampleAlias</code></p></li>
<li><p>Alias ARN:
<code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>. To get the alias
name and alias ARN, use <code>list_aliases</code>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_encrypt_:_Plaintext">Plaintext</code></td>
<td><p>[required] Data to be encrypted.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_encrypt_:_EncryptionContext">EncryptionContext</code></td>
<td><p>Specifies the encryption context that will be used to encrypt the
data. An encryption context is valid only for <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
operations</a> with a symmetric encryption KMS key. The standard
asymmetric encryption algorithms and HMAC algorithms that KMS uses do
not support an encryption context.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>An <em>encryption context</em> is a collection of non-secret
key-value pairs that represent additional authenticated data. When you
use an encryption context to encrypt data, you must specify the same (an
exact case-sensitive match) encryption context to decrypt the data. An
encryption context is supported only on operations with symmetric
encryption KMS keys. On operations with symmetric encryption KMS keys,
an encryption context is optional, but it is strongly recommended.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
context</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_encrypt_:_GrantTokens">GrantTokens</code></td>
<td><p>A list of grant tokens.</p>
<p>Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved <em>eventual
consistency</em>. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant
token</a> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using
a grant token</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_encrypt_:_EncryptionAlgorithm">EncryptionAlgorithm</code></td>
<td><p>Specifies the encryption algorithm that KMS will use to encrypt
the plaintext message. The algorithm must be compatible with the KMS key
that you specify.</p>
<p>This parameter is required only for asymmetric KMS keys. The default
value, <code>SYMMETRIC_DEFAULT</code>, is the algorithm used for
symmetric encryption KMS keys. If you are using an asymmetric KMS key,
we recommend RSAES_OAEP_SHA_256.</p>
<p>The SM2PKE algorithm is only available in China Regions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CiphertextBlob = raw,
      KeyId = "string",
      EncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE"
    )

### Request syntax

    svc$encrypt(
      KeyId = "string",
      Plaintext = raw,
      EncryptionContext = list(
        "string"
      ),
      GrantTokens = list(
        "string"
      ),
      EncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE"
    )

### Examples

    ## Not run: 
    # The following example encrypts data with the specified symmetric
    # encryption KMS key.
    svc$encrypt(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      Plaintext = "<binary data>"
    )

    # The following example encrypts data with the specified RSA asymmetric
    # KMS key. When you encrypt with an asymmetric key, you must specify the
    # encryption algorithm.
    svc$encrypt(
      EncryptionAlgorithm = "RSAES_OAEP_SHA_256",
      KeyId = "0987dcba-09fe-87dc-65ba-ab0987654321",
      Plaintext = "<binary data>"
    )

    ## End(Not run)
