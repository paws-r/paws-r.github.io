<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_decrypt</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Decrypts ciphertext that was encrypted by a KMS key using any of the following operations:

### Description

Decrypts ciphertext that was encrypted by a KMS key using any of the
following operations:

-   `encrypt`

-   `generate_data_key`

-   `generate_data_key_pair`

-   `generate_data_key_without_plaintext`

-   `generate_data_key_pair_without_plaintext`

You can use this operation to decrypt ciphertext that was encrypted
under a symmetric encryption KMS key or an asymmetric encryption KMS
key. When the KMS key is asymmetric, you must specify the KMS key and
the encryption algorithm that was used to encrypt the ciphertext. For
information about asymmetric KMS keys, see [Asymmetric KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the *Key Management Service Developer Guide*.

The `decrypt` operation also decrypts ciphertext that was encrypted
outside of KMS by the public key in an KMS asymmetric KMS key. However,
it cannot decrypt symmetric ciphertext produced by other libraries, such
as the [Amazon Web Services Encryption
SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/)
or [Amazon S3 client-side
encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingClientSideEncryption.html).
These libraries return a ciphertext format that is incompatible with
KMS.

If the ciphertext was encrypted under a symmetric encryption KMS key,
the `KeyId` parameter is optional. KMS can get this information from
metadata that it adds to the symmetric ciphertext blob. This feature
adds durability to your implementation by ensuring that authorized users
can decrypt ciphertext decades after it was encrypted, even if they've
lost track of the key ID. However, specifying the KMS key is always
recommended as a best practice. When you use the `KeyId` parameter to
specify a KMS key, KMS only uses the KMS key you specify. If the
ciphertext was encrypted under a different KMS key, the `decrypt`
operation fails. This practice ensures that you use the KMS key that you
intend.

Whenever possible, use key policies to give users permission to call the
`decrypt` operation on a particular KMS key, instead of using &IAM;
policies. Otherwise, you might create an &IAM; policy that gives the
user `decrypt` permission on all KMS keys. This user could decrypt
ciphertext that was encrypted by KMS keys in other accounts if the key
policy for the cross-account KMS key permits it. If you must use an IAM
policy for `decrypt` permissions, limit the user to particular KMS keys
or particular trusted accounts. For details, see [Best practices for IAM
policies](https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices)
in the *Key Management Service Developer Guide*.

`decrypt` also supports [Amazon Web Services Nitro
Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
`decrypt` for a Nitro enclave, use the [Amazon Web Services Nitro
Enclaves
SDK](https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the `Recipient` parameter to provide
the attestation document for the enclave. Instead of the plaintext data,
the response includes the plaintext data encrypted with the public key
from the attestation document (`CiphertextForRecipient`).For information
about the interaction between KMS and Amazon Web Services Nitro
Enclaves, see [How Amazon Web Services Nitro Enclaves uses
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the *Key Management Service Developer Guide*..

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. If you use the `KeyId` parameter to identify
a KMS key in a different Amazon Web Services account, specify the key
ARN or the alias ARN of the KMS key.

**Required permissions**:
[kms:Decrypt](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `encrypt`

-   `generate_data_key`

-   `generate_data_key_pair`

-   `re_encrypt`

### Usage

    kms_decrypt(CiphertextBlob, EncryptionContext, GrantTokens, KeyId,
      EncryptionAlgorithm, Recipient)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_decrypt_:_CiphertextBlob">CiphertextBlob</code></td>
<td><p>[required] Ciphertext to be decrypted. The blob includes
metadata.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_decrypt_:_EncryptionContext">EncryptionContext</code></td>
<td><p>Specifies the encryption context to use when decrypting the data.
An encryption context is valid only for <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
operations</a> with a symmetric encryption KMS key. The standard
asymmetric encryption algorithms and HMAC algorithms that KMS uses do
not support an encryption context.</p>
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
<td><code id="kms_decrypt_:_GrantTokens">GrantTokens</code></td>
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
<tr class="even">
<td><code id="kms_decrypt_:_KeyId">KeyId</code></td>
<td><p>Specifies the KMS key that KMS uses to decrypt the
ciphertext.</p>
<p>Enter a key ID of the KMS key that was used to encrypt the
ciphertext. If you identify a different KMS key, the
<code>decrypt</code> operation throws an
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
<tr class="odd">
<td><code
id="kms_decrypt_:_EncryptionAlgorithm">EncryptionAlgorithm</code></td>
<td><p>Specifies the encryption algorithm that will be used to decrypt
the ciphertext. Specify the same algorithm that was used to encrypt the
data. If you specify a different algorithm, the <code>decrypt</code>
operation fails.</p>
<p>This parameter is required only when the ciphertext was encrypted
under an asymmetric KMS key. The default value,
<code>SYMMETRIC_DEFAULT</code>, represents the only supported algorithm
that is valid for symmetric encryption KMS keys.</p></td>
</tr>
<tr class="even">
<td><code id="kms_decrypt_:_Recipient">Recipient</code></td>
<td><p>A signed <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/#term-attestdoc">attestation
document</a> from an Amazon Web Services Nitro enclave and the
encryption algorithm to use with the enclave's public key. The only
valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>.</p>
<p>This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the <a
href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon
Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
<p>When you use this parameter, instead of returning the plaintext data,
KMS encrypts the plaintext data with the public key in the attestation
document, and returns the resulting ciphertext in the
<code>CiphertextForRecipient</code> field in the response. This
ciphertext can be decrypted only with the private key in the enclave.
The <code>Plaintext</code> field in the response is null or empty.</p>
<p>For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How
Amazon Web Services Nitro Enclaves uses KMS</a> in the <em>Key
Management Service Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyId = "string",
      Plaintext = raw,
      EncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE",
      CiphertextForRecipient = raw
    )

### Request syntax

    svc$decrypt(
      CiphertextBlob = raw,
      EncryptionContext = list(
        "string"
      ),
      GrantTokens = list(
        "string"
      ),
      KeyId = "string",
      EncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE",
      Recipient = list(
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256",
        AttestationDocument = raw
      )
    )

### Examples

    ## Not run: 
    # The following example decrypts data that was encrypted with a symmetric
    # encryption KMS key. The KeyId is not required when decrypting with a
    # symmetric encryption key, but it is a best practice.
    svc$decrypt(
      CiphertextBlob = "<binary data>",
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    # The following example decrypts data that was encrypted with an
    # asymmetric encryption KMS key. When the KMS encryption key is
    # asymmetric, you must specify the KMS key ID and the encryption algorithm
    # that was used to encrypt the data.
    svc$decrypt(
      CiphertextBlob = "<binary data>",
      EncryptionAlgorithm = "RSAES_OAEP_SHA_256",
      KeyId = "0987dcba-09fe-87dc-65ba-ab0987654321"
    )

    # The following Decrypt example includes the Recipient parameter with a
    # signed attestation document from an AWS Nitro enclave. Instead of
    # returning the decrypted data in plaintext (Plaintext), the operation
    # returns the decrypted data encrypted by the public key from the
    # attestation document (CiphertextForRecipient).
    svc$decrypt(
      CiphertextBlob = "<binary data>",
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
      Recipient = list(
        AttestationDocument = "<attestation document>",
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256"
      )
    )

    ## End(Not run)
