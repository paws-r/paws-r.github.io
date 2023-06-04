<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_generate_data_key_without_plaintext</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a unique symmetric data key for use outside of KMS

### Description

Returns a unique symmetric data key for use outside of KMS. This
operation returns a data key that is encrypted under a symmetric
encryption KMS key that you specify. The bytes in the key are random;
they are not related to the caller or to the KMS key.

`generate_data_key_without_plaintext` is identical to the
`generate_data_key` operation except that it does not return a plaintext
copy of the data key.

This operation is useful for systems that need to encrypt data at some
point, but not immediately. When you need to encrypt the data, you call
the `decrypt` operation on the encrypted copy of the key.

It's also useful in distributed systems with different levels of trust.
For example, you might store encrypted data in containers. One component
of your system creates new containers and stores an encrypted data key
with each container. Then, a different component puts the data into the
containers. That component first decrypts the data key, uses the
plaintext data key to encrypt data, puts the encrypted data into the
container, and then destroys the plaintext data key. In this system, the
component that creates the containers never sees the plaintext data key.

To request an asymmetric data key pair, use the `generate_data_key_pair`
or `generate_data_key_pair_without_plaintext` operations.

To generate a data key, you must specify the symmetric encryption KMS
key that is used to encrypt the data key. You cannot use an asymmetric
KMS key or a key in a custom key store to generate a data key. To get
the type of your KMS key, use the `describe_key` operation.

You must also specify the length of the data key. Use either the
`KeySpec` or `NumberOfBytes` parameters (but not both). For 128-bit and
256-bit data keys, use the `KeySpec` parameter.

To generate an SM4 data key (China Regions only), specify a `KeySpec`
value of `AES_128` or `NumberOfBytes` value of `16`. The symmetric
encryption key used in China Regions to encrypt your data key is an SM4
encryption key.

If the operation succeeds, you will find the encrypted copy of the data
key in the `CiphertextBlob` field.

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
[kms:GenerateDataKeyWithoutPlaintext](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `decrypt`

-   `encrypt`

-   `generate_data_key`

-   `generate_data_key_pair`

-   `generate_data_key_pair_without_plaintext`

### Usage

    kms_generate_data_key_without_plaintext(KeyId, EncryptionContext,
      KeySpec, NumberOfBytes, GrantTokens)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_generate_data_key_without_plaintext_:_KeyId">KeyId</code></td>
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
id="kms_generate_data_key_without_plaintext_:_EncryptionContext">EncryptionContext</code></td>
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
id="kms_generate_data_key_without_plaintext_:_KeySpec">KeySpec</code></td>
<td><p>The length of the data key. Use <code>AES_128</code> to generate
a 128-bit symmetric key, or <code>AES_256</code> to generate a 256-bit
symmetric key.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_generate_data_key_without_plaintext_:_NumberOfBytes">NumberOfBytes</code></td>
<td><p>The length of the data key in bytes. For example, use the value
64 to generate a 512-bit data key (64 bytes is 512 bits). For common key
lengths (128-bit and 256-bit symmetric keys), we recommend that you use
the <code>KeySpec</code> field instead of this one.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_generate_data_key_without_plaintext_:_GrantTokens">GrantTokens</code></td>
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
      KeyId = "string"
    )

### Request syntax

    svc$generate_data_key_without_plaintext(
      KeyId = "string",
      EncryptionContext = list(
        "string"
      ),
      KeySpec = "AES_256"|"AES_128",
      NumberOfBytes = 123,
      GrantTokens = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example generates an encrypted copy of a 256-bit symmetric
    # data encryption key (data key). The data key is encrypted with the
    # specified KMS key.
    svc$generate_data_key_without_plaintext(
      KeyId = "alias/ExampleAlias",
      KeySpec = "AES_256"
    )

    ## End(Not run)
