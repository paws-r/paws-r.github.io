<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_re_encrypt</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Decrypts ciphertext and then reencrypts it entirely within KMS

### Description

Decrypts ciphertext and then reencrypts it entirely within KMS. You can
use this operation to change the KMS key under which data is encrypted,
such as when you [manually
rotate](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually)
a KMS key or change the KMS key that protects a ciphertext. You can also
use it to reencrypt ciphertext under the same KMS key, such as to change
the [encryption
context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
of a ciphertext.

The `re_encrypt` operation can decrypt ciphertext that was encrypted by
using a KMS key in an KMS operation, such as `encrypt` or
`generate_data_key`. It can also decrypt ciphertext that was encrypted
by using the public key of an [asymmetric KMS
key](https://docs.aws.amazon.com/kms/latest/developerguide/#asymmetric-cmks)
outside of KMS. However, it cannot decrypt ciphertext produced by other
libraries, such as the [Amazon Web Services Encryption
SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/)
or [Amazon S3 client-side
encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingClientSideEncryption.html).
These libraries return a ciphertext format that is incompatible with
KMS.

When you use the `re_encrypt` operation, you need to provide information
for the decrypt operation and the subsequent encrypt operation.

-   If your ciphertext was encrypted under an asymmetric KMS key, you
    must use the `SourceKeyId` parameter to identify the KMS key that
    encrypted the ciphertext. You must also supply the encryption
    algorithm that was used. This information is required to decrypt the
    data.

-   If your ciphertext was encrypted under a symmetric encryption KMS
    key, the `SourceKeyId` parameter is optional. KMS can get this
    information from metadata that it adds to the symmetric ciphertext
    blob. This feature adds durability to your implementation by
    ensuring that authorized users can decrypt ciphertext decades after
    it was encrypted, even if they've lost track of the key ID. However,
    specifying the source KMS key is always recommended as a best
    practice. When you use the `SourceKeyId` parameter to specify a KMS
    key, KMS uses only the KMS key you specify. If the ciphertext was
    encrypted under a different KMS key, the `re_encrypt` operation
    fails. This practice ensures that you use the KMS key that you
    intend.

-   To reencrypt the data, you must use the `DestinationKeyId` parameter
    to specify the KMS key that re-encrypts the data after it is
    decrypted. If the destination KMS key is an asymmetric KMS key, you
    must also provide the encryption algorithm. The algorithm that you
    choose must be compatible with the KMS key.

    When you use an asymmetric KMS key to encrypt or reencrypt data, be
    sure to record the KMS key and encryption algorithm that you choose.
    You will be required to provide the same KMS key and encryption
    algorithm when you decrypt the data. If the KMS key and algorithm do
    not match the values used to encrypt the data, the decrypt operation
    fails.

    You are not required to supply the key ID and encryption algorithm
    when you decrypt with symmetric encryption KMS keys because KMS
    stores this information in the ciphertext blob. KMS cannot store
    metadata in ciphertext generated with asymmetric keys. The standard
    format for asymmetric key ciphertext does not include configurable
    fields.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. The source KMS key and destination KMS key
can be in different Amazon Web Services accounts. Either or both KMS
keys can be in a different account than the caller. To specify a KMS key
in a different account, you must use its key ARN or alias ARN.

**Required permissions**:

-   [kms:ReEncryptFrom](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    permission on the source KMS key (key policy)

-   [kms:ReEncryptTo](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    permission on the destination KMS key (key policy)

To permit reencryption from or to a KMS key, include the
`"kms:ReEncrypt*"` permission in your [key
policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html).
This permission is automatically included in the key policy when you use
the console to create a KMS key. But you must include it manually when
you create a KMS key programmatically or when you use the
`put_key_policy` operation to set a key policy.

**Related operations:**

-   `decrypt`

-   `encrypt`

-   `generate_data_key`

-   `generate_data_key_pair`

### Usage

    kms_re_encrypt(CiphertextBlob, SourceEncryptionContext, SourceKeyId,
      DestinationKeyId, DestinationEncryptionContext,
      SourceEncryptionAlgorithm, DestinationEncryptionAlgorithm, GrantTokens)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_re_encrypt_:_CiphertextBlob">CiphertextBlob</code></td>
<td><p>[required] Ciphertext of the data to reencrypt.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_re_encrypt_:_SourceEncryptionContext">SourceEncryptionContext</code></td>
<td><p>Specifies the encryption context to use to decrypt the
ciphertext. Enter the same encryption context that was used to encrypt
the ciphertext.</p>
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
<tr class="odd">
<td><code id="kms_re_encrypt_:_SourceKeyId">SourceKeyId</code></td>
<td><p>Specifies the KMS key that KMS will use to decrypt the ciphertext
before it is re-encrypted.</p>
<p>Enter a key ID of the KMS key that was used to encrypt the
ciphertext. If you identify a different KMS key, the
<code>re_encrypt</code> operation throws an
<code>IncorrectKeyException</code>.</p>
<p>This parameter is required only when the ciphertext was encrypted
under an asymmetric KMS key. If you used a symmetric encryption KMS key,
KMS can get the KMS key from metadata that it adds to the symmetric
ciphertext blob. However, it is always recommended as a best practice.
This practice ensures that you use the KMS key that you intend.</p>
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
<td><code
id="kms_re_encrypt_:_DestinationKeyId">DestinationKeyId</code></td>
<td><p>[required] A unique identifier for the KMS key that is used to
reencrypt the data. Specify a symmetric encryption KMS key or an
asymmetric KMS key with a <code>KeyUsage</code> value of
<code>ENCRYPT_DECRYPT</code>. To find the <code>KeyUsage</code> value of
a KMS key, use the <code>describe_key</code> operation.</p>
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
<tr class="odd">
<td><code
id="kms_re_encrypt_:_DestinationEncryptionContext">DestinationEncryptionContext</code></td>
<td><p>Specifies that encryption context to use when the reencrypting
the data.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>A destination encryption context is valid only when the destination
KMS key is a symmetric encryption KMS key. The standard ciphertext
format for asymmetric KMS keys does not include fields for metadata.</p>
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
<td><code
id="kms_re_encrypt_:_SourceEncryptionAlgorithm">SourceEncryptionAlgorithm</code></td>
<td><p>Specifies the encryption algorithm that KMS will use to decrypt
the ciphertext before it is reencrypted. The default value,
<code>SYMMETRIC_DEFAULT</code>, represents the algorithm used for
symmetric encryption KMS keys.</p>
<p>Specify the same algorithm that was used to encrypt the ciphertext.
If you specify a different algorithm, the decrypt attempt fails.</p>
<p>This parameter is required only when the ciphertext was encrypted
under an asymmetric KMS key.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_re_encrypt_:_DestinationEncryptionAlgorithm">DestinationEncryptionAlgorithm</code></td>
<td><p>Specifies the encryption algorithm that KMS will use to reecrypt
the data after it has decrypted it. The default value,
<code>SYMMETRIC_DEFAULT</code>, represents the encryption algorithm used
for symmetric encryption KMS keys.</p>
<p>This parameter is required only when the destination KMS key is an
asymmetric KMS key.</p></td>
</tr>
<tr class="even">
<td><code id="kms_re_encrypt_:_GrantTokens">GrantTokens</code></td>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CiphertextBlob = raw,
      SourceKeyId = "string",
      KeyId = "string",
      SourceEncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE",
      DestinationEncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE"
    )

### Request syntax

    svc$re_encrypt(
      CiphertextBlob = raw,
      SourceEncryptionContext = list(
        "string"
      ),
      SourceKeyId = "string",
      DestinationKeyId = "string",
      DestinationEncryptionContext = list(
        "string"
      ),
      SourceEncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE",
      DestinationEncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE",
      GrantTokens = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example reencrypts data with the specified KMS key.
    svc$re_encrypt(
      CiphertextBlob = "<binary data>",
      DestinationKeyId = "0987dcba-09fe-87dc-65ba-ab0987654321"
    )

    ## End(Not run)
