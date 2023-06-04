<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_generate_data_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a unique symmetric data key for use outside of KMS

### Description

Returns a unique symmetric data key for use outside of KMS. This
operation returns a plaintext copy of the data key and a copy that is
encrypted under a symmetric encryption KMS key that you specify. The
bytes in the plaintext key are random; they are not related to the
caller or the KMS key. You can use the plaintext key to encrypt your
data outside of KMS and store the encrypted data key with the encrypted
data.

To generate a data key, specify the symmetric encryption KMS key that
will be used to encrypt the data key. You cannot use an asymmetric KMS
key to encrypt data keys. To get the type of your KMS key, use the
`describe_key` operation.

You must also specify the length of the data key. Use either the
`KeySpec` or `NumberOfBytes` parameters (but not both). For 128-bit and
256-bit data keys, use the `KeySpec` parameter.

To generate a 128-bit SM4 data key (China Regions only), specify a
`KeySpec` value of `AES_128` or a `NumberOfBytes` value of `16`. The
symmetric encryption key used in China Regions to encrypt your data key
is an SM4 encryption key.

To get only an encrypted copy of the data key, use
`generate_data_key_without_plaintext`. To generate an asymmetric data
key pair, use the `generate_data_key_pair` or
`generate_data_key_pair_without_plaintext` operation. To get a
cryptographically secure random byte string, use `generate_random`.

You can use an optional encryption context to add additional security to
the encryption operation. If you specify an `EncryptionContext`, you
must specify the same encryption context (a case-sensitive exact match)
when decrypting the encrypted data key. Otherwise, the request to
decrypt fails with an `InvalidCiphertextException`. For more
information, see [Encryption
Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the *Key Management Service Developer Guide*.

`generate_data_key` also supports [Amazon Web Services Nitro
Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
`generate_data_key` for an Amazon Web Services Nitro enclave, use the
[Amazon Web Services Nitro Enclaves
SDK](https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the `Recipient` parameter to provide
the attestation document for the enclave. `generate_data_key` returns a
copy of the data key encrypted under the specified KMS key, as usual.
But instead of a plaintext copy of the data key, the response includes a
copy of the data key encrypted under the public key from the attestation
document (`CiphertextForRecipient`). For information about the
interaction between KMS and Amazon Web Services Nitro Enclaves, see [How
Amazon Web Services Nitro Enclaves uses
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the *Key Management Service Developer Guide*..

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**How to use your data key**

We recommend that you use the following pattern to encrypt data locally
in your application. You can write your own code or use a client-side
encryption library, such as the [Amazon Web Services Encryption
SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/),
the [Amazon DynamoDB Encryption
Client](https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/),
or [Amazon S3 client-side
encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingClientSideEncryption.html)
to do these tasks for you.

To encrypt data outside of KMS:

1.  Use the `generate_data_key` operation to get a data key.

2.  Use the plaintext data key (in the `Plaintext` field of the
    response) to encrypt your data outside of KMS. Then erase the
    plaintext data key from memory.

3.  Store the encrypted data key (in the `CiphertextBlob` field of the
    response) with the encrypted data.

To decrypt data outside of KMS:

1.  Use the `decrypt` operation to decrypt the encrypted data key. The
    operation returns a plaintext copy of the data key.

2.  Use the plaintext data key to decrypt data outside of KMS, then
    erase the plaintext data key from memory.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:GenerateDataKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `decrypt`

-   `encrypt`

-   `generate_data_key_pair`

-   `generate_data_key_pair_without_plaintext`

-   `generate_data_key_without_plaintext`

### Usage

    kms_generate_data_key(KeyId, EncryptionContext, NumberOfBytes, KeySpec,
      GrantTokens, Recipient)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_generate_data_key_:_KeyId">KeyId</code></td>
<td><p>[required] Specifies the symmetric encryption KMS key that
encrypts the data key. You cannot specify an asymmetric KMS key or a KMS
key in a custom key store. To get the type and origin of your KMS key,
use the <code>describe_key</code> operation.</p>
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
id="kms_generate_data_key_:_EncryptionContext">EncryptionContext</code></td>
<td><p>Specifies the encryption context that will be used when
encrypting the data key.</p>
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
<tr class="odd">
<td><code
id="kms_generate_data_key_:_NumberOfBytes">NumberOfBytes</code></td>
<td><p>Specifies the length of the data key in bytes. For example, use
the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
128-bit (16-byte) and 256-bit (32-byte) data keys, use the
<code>KeySpec</code> parameter.</p>
<p>You must specify either the <code>KeySpec</code> or the
<code>NumberOfBytes</code> parameter (but not both) in every
<code>generate_data_key</code> request.</p></td>
</tr>
<tr class="even">
<td><code id="kms_generate_data_key_:_KeySpec">KeySpec</code></td>
<td><p>Specifies the length of the data key. Use <code>AES_128</code> to
generate a 128-bit symmetric key, or <code>AES_256</code> to generate a
256-bit symmetric key.</p>
<p>You must specify either the <code>KeySpec</code> or the
<code>NumberOfBytes</code> parameter (but not both) in every
<code>generate_data_key</code> request.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_generate_data_key_:_GrantTokens">GrantTokens</code></td>
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
<td><code id="kms_generate_data_key_:_Recipient">Recipient</code></td>
<td><p>A signed <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/#term-attestdoc">attestation
document</a> from an Amazon Web Services Nitro enclave and the
encryption algorithm to use with the enclave's public key. The only
valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>.</p>
<p>This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the <a
href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon
Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
<p>When you use this parameter, instead of returning the plaintext data
key, KMS encrypts the plaintext data key under the public key in the
attestation document, and returns the resulting ciphertext in the
<code>CiphertextForRecipient</code> field in the response. This
ciphertext can be decrypted only with the private key in the enclave.
The <code>CiphertextBlob</code> field in the response contains a copy of
the data key encrypted under the KMS key specified by the
<code>KeyId</code> parameter. The <code>Plaintext</code> field in the
response is null or empty.</p>
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
      CiphertextBlob = raw,
      Plaintext = raw,
      KeyId = "string",
      CiphertextForRecipient = raw
    )

### Request syntax

    svc$generate_data_key(
      KeyId = "string",
      EncryptionContext = list(
        "string"
      ),
      NumberOfBytes = 123,
      KeySpec = "AES_256"|"AES_128",
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
    # The following example generates a 256-bit symmetric data encryption key
    # (data key) in two formats. One is the unencrypted (plainext) data key,
    # and the other is the data key encrypted with the specified KMS key.
    svc$generate_data_key(
      KeyId = "alias/ExampleAlias",
      KeySpec = "AES_256"
    )

    # The following example includes the Recipient parameter with a signed
    # attestation document from an AWS Nitro enclave. Instead of returning a
    # copy of the data key encrypted by the KMS key and a plaintext copy of
    # the data key, GenerateDataKey returns one copy of the data key encrypted
    # by the KMS key (CiphertextBlob) and one copy of the data key encrypted
    # by the public key from the attestation document
    # (CiphertextForRecipient). The operation doesn't return a plaintext data
    # key.
    svc$generate_data_key(
      KeyId = "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
      KeySpec = "AES_256",
      Recipient = list(
        AttestationDocument = "<attestation document>",
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256"
      )
    )

    ## End(Not run)
