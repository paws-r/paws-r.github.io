<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_generate_data_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a unique asymmetric data key pair for use outside of KMS

### Description

Returns a unique asymmetric data key pair for use outside of KMS. This
operation returns a plaintext public key, a plaintext private key, and a
copy of the private key that is encrypted under the symmetric encryption
KMS key you specify. You can use the data key pair to perform asymmetric
cryptography and implement digital signatures outside of KMS. The bytes
in the keys are random; they not related to the caller or to the KMS key
that is used to encrypt the private key.

You can use the public key that `generate_data_key_pair` returns to
encrypt data or verify a signature outside of KMS. Then, store the
encrypted private key with the data. When you are ready to decrypt data
or sign a message, you can use the `decrypt` operation to decrypt the
encrypted private key.

To generate a data key pair, you must specify a symmetric encryption KMS
key to encrypt the private key in a data key pair. You cannot use an
asymmetric KMS key or a KMS key in a custom key store. To get the type
and origin of your KMS key, use the `describe_key` operation.

Use the `KeyPairSpec` parameter to choose an RSA or Elliptic Curve (ECC)
data key pair. In China Regions, you can also choose an SM2 data key
pair. KMS recommends that you use ECC key pairs for signing, and use RSA
and SM2 key pairs for either encryption or signing, but not both.
However, KMS cannot enforce any restrictions on the use of data key
pairs outside of KMS.

If you are using the data key pair to encrypt data, or for any operation
where you don't immediately need a private key, consider using the
`generate_data_key_pair_without_plaintext` operation.
`generate_data_key_pair_without_plaintext` returns a plaintext public
key and an encrypted private key, but omits the plaintext private key
that you need only to decrypt ciphertext or sign a message. Later, when
you need to decrypt the data or sign a message, use the `decrypt`
operation to decrypt the encrypted private key in the data key pair.

`generate_data_key_pair` returns a unique data key pair for each
request. The bytes in the keys are random; they are not related to the
caller or the KMS key that is used to encrypt the private key. The
public key is a DER-encoded X.509 SubjectPublicKeyInfo, as specified in
[RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280). The private
key is a DER-encoded PKCS8 PrivateKeyInfo, as specified in [RFC
5958](https://datatracker.ietf.org/doc/html/rfc5958).

`generate_data_key_pair` also supports [Amazon Web Services Nitro
Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
`generate_data_key_pair` for an Amazon Web Services Nitro enclave, use
the [Amazon Web Services Nitro Enclaves
SDK](https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the `Recipient` parameter to provide
the attestation document for the enclave. `generate_data_key_pair`
returns the public data key and a copy of the private data key encrypted
under the specified KMS key, as usual. But instead of a plaintext copy
of the private data key (`PrivateKeyPlaintext`), the response includes a
copy of the private data key encrypted under the public key from the
attestation document (`CiphertextForRecipient`). For information about
the interaction between KMS and Amazon Web Services Nitro Enclaves, see
[How Amazon Web Services Nitro Enclaves uses
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the *Key Management Service Developer Guide*..

You can use an optional encryption context to add additional security to
the encryption operation. If you specify an `EncryptionContext`, you
must specify the same encryption context (a case-sensitive exact match)
when decrypting the encrypted data key. Otherwise, the request to
decrypt fails with an `InvalidCiphertextException`. For more
information, see [Encryption
Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the *Key Management Service Developer Guide*.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:GenerateDataKeyPair](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `decrypt`

-   `encrypt`

-   `generate_data_key`

-   `generate_data_key_pair_without_plaintext`

-   `generate_data_key_without_plaintext`

### Usage

    kms_generate_data_key_pair(EncryptionContext, KeyId, KeyPairSpec,
      GrantTokens, Recipient)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_generate_data_key_pair_:_EncryptionContext">EncryptionContext</code></td>
<td><p>Specifies the encryption context that will be used when
encrypting the private key in the data key pair.</p>
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
<td><code id="kms_generate_data_key_pair_:_KeyId">KeyId</code></td>
<td><p>[required] Specifies the symmetric encryption KMS key that
encrypts the private key in the data key pair. You cannot specify an
asymmetric KMS key or a KMS key in a custom key store. To get the type
and origin of your KMS key, use the <code>describe_key</code>
operation.</p>
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
id="kms_generate_data_key_pair_:_KeyPairSpec">KeyPairSpec</code></td>
<td><p>[required] Determines the type of data key pair that is
generated.</p>
<p>The KMS rule that restricts the use of asymmetric RSA and SM2 KMS
keys to encrypt and decrypt or to sign and verify (but not both), and
the rule that permits you to use ECC KMS keys only to sign and verify,
are not effective on data key pairs, which are used outside of KMS. The
SM2 key spec is only available in China Regions.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_generate_data_key_pair_:_GrantTokens">GrantTokens</code></td>
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
id="kms_generate_data_key_pair_:_Recipient">Recipient</code></td>
<td><p>A signed <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/#term-attestdoc">attestation
document</a> from an Amazon Web Services Nitro enclave and the
encryption algorithm to use with the enclave's public key. The only
valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>.</p>
<p>This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the <a
href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon
Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
<p>When you use this parameter, instead of returning a plaintext copy of
the private data key, KMS encrypts the plaintext private data key under
the public key in the attestation document, and returns the resulting
ciphertext in the <code>CiphertextForRecipient</code> field in the
response. This ciphertext can be decrypted only with the private key in
the enclave. The <code>CiphertextBlob</code> field in the response
contains a copy of the private data key encrypted under the KMS key
specified by the <code>KeyId</code> parameter. The
<code>PrivateKeyPlaintext</code> field in the response is null or
empty.</p>
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
      PrivateKeyCiphertextBlob = raw,
      PrivateKeyPlaintext = raw,
      PublicKey = raw,
      KeyId = "string",
      KeyPairSpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SM2",
      CiphertextForRecipient = raw
    )

### Request syntax

    svc$generate_data_key_pair(
      EncryptionContext = list(
        "string"
      ),
      KeyId = "string",
      KeyPairSpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SM2",
      GrantTokens = list(
        "string"
      ),
      Recipient = list(
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256",
        AttestationDocument = raw
      )
    )

### Examples

    ## Not run: 
    # This example generates an RSA data key pair for encryption and
    # decryption. The operation returns a plaintext public key and private
    # key, and a copy of the private key that is encrypted under a symmetric
    # encryption KMS key that you specify.
    svc$generate_data_key_pair(
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
      KeyPairSpec = "RSA_3072"
    )

    # The following example includes the Recipient parameter with a signed
    # attestation document from an AWS Nitro enclave. Instead of returning a
    # plaintext copy of the private data key, GenerateDataKeyPair returns a
    # copy of the private data key encrypted by the public key from the
    # attestation document (CiphertextForRecipient). It returns the public
    # data key (PublicKey) and a copy of private data key encrypted under the
    # specified KMS key (PrivateKeyCiphertextBlob), as usual, but plaintext
    # private data key field (PrivateKeyPlaintext) is null or empty.
    svc$generate_data_key_pair(
      KeyId = "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
      KeyPairSpec = "RSA_3072",
      Recipient = list(
        AttestationDocument = "<attestation document>",
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256"
      )
    )

    ## End(Not run)
