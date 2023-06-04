<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_sign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a digital signature for a message or message digest by using the private key in an asymmetric signing KMS key

### Description

Creates a [digital
signature](https://en.wikipedia.org/wiki/Digital_signature) for a
message or message digest by using the private key in an asymmetric
signing KMS key. To verify the signature, use the `verify` operation, or
use the public key in the same asymmetric KMS key outside of KMS. For
information about asymmetric KMS keys, see [Asymmetric KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the *Key Management Service Developer Guide*.

Digital signatures are generated and verified by using asymmetric key
pair, such as an RSA or ECC pair that is represented by an asymmetric
KMS key. The key owner (or an authorized user) uses their private key to
sign a message. Anyone with the public key can verify that the message
was signed with that particular private key and that the message hasn't
changed since it was signed.

To use the `sign` operation, provide the following information:

-   Use the `KeyId` parameter to identify an asymmetric KMS key with a
    `KeyUsage` value of `SIGN_VERIFY`. To get the `KeyUsage` value of a
    KMS key, use the `describe_key` operation. The caller must have
    `kms:Sign` permission on the KMS key.

-   Use the `Message` parameter to specify the message or message digest
    to sign. You can submit messages of up to 4096 bytes. To sign a
    larger message, generate a hash digest of the message, and then
    provide the hash digest in the `Message` parameter. To indicate
    whether the message is a full message or a digest, use the
    `MessageType` parameter.

-   Choose a signing algorithm that is compatible with the KMS key.

When signing a message, be sure to record the KMS key and the signing
algorithm. This information is required to verify the signature.

Best practices recommend that you limit the time during which any
signature is effective. This deters an attack where the actor uses a
signed message to establish validity repeatedly or long after the
message is superseded. Signatures do not include a timestamp, but you
can include a timestamp in the signed message to help you detect when
its time to refresh the signature.

To verify the signature that this operation generates, use the `verify`
operation. Or use the `get_public_key` operation to download the public
key and then use the public key to verify the signature outside of KMS.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:Sign](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `verify`

### Usage

    kms_sign(KeyId, Message, MessageType, GrantTokens, SigningAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_sign_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies an asymmetric KMS key. KMS uses the private
key in the asymmetric KMS key to sign the message. The
<code>KeyUsage</code> type of the KMS key must be
<code>SIGN_VERIFY</code>. To find the <code>KeyUsage</code> of a KMS
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
<td><code id="kms_sign_:_Message">Message</code></td>
<td><p>[required] Specifies the message or message digest to sign.
Messages can be 0-4096 bytes. To sign a larger message, provide a
message digest.</p>
<p>If you provide a message digest, use the <code>DIGEST</code> value of
<code>MessageType</code> to prevent the digest from being hashed again
while signing.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_sign_:_MessageType">MessageType</code></td>
<td><p>Tells KMS whether the value of the <code>Message</code> parameter
should be hashed as part of the signing algorithm. Use <code>RAW</code>
for unhashed messages; use <code>DIGEST</code> for message digests,
which are already hashed.</p>
<p>When the value of <code>MessageType</code> is <code>RAW</code>, KMS
uses the standard signing algorithm, which begins with a hash function.
When the value is <code>DIGEST</code>, KMS skips the hashing step in the
signing algorithm.</p>
<p>Use the <code>DIGEST</code> value only when the value of the
<code>Message</code> parameter is a message digest. If you use the
<code>DIGEST</code> value with an unhashed message, the security of the
signing operation can be compromised.</p>
<p>When the value of <code>MessageType</code>is <code>DIGEST</code>, the
length of the <code>Message</code> value must match the length of hashed
messages for the specified signing algorithm.</p>
<p>You can submit a message digest and omit the <code>MessageType</code>
or specify <code>RAW</code> so the digest is hashed again while signing.
However, this can cause verification failures when verifying with a
system that assumes a single hash.</p>
<p>The hashing algorithm in that <code>sign</code> uses is based on the
<code>SigningAlgorithm</code> value.</p>
<ul>
<li><p>Signing algorithms that end in SHA_256 use the SHA_256 hashing
algorithm.</p></li>
<li><p>Signing algorithms that end in SHA_384 use the SHA_384 hashing
algorithm.</p></li>
<li><p>Signing algorithms that end in SHA_512 use the SHA_512 hashing
algorithm.</p></li>
<li><p>SM2DSA uses the SM3 hashing algorithm. For details, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification">Offline
verification with SM2 key pairs</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="kms_sign_:_GrantTokens">GrantTokens</code></td>
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
<td><code id="kms_sign_:_SigningAlgorithm">SigningAlgorithm</code></td>
<td><p>[required] Specifies the signing algorithm to use when signing
the message.</p>
<p>Choose an algorithm that is compatible with the type and size of the
specified asymmetric KMS key. When signing with RSA key pairs,
RSASSA-PSS algorithms are preferred. We include RSASSA-PKCS1-v1_5
algorithms for compatibility with existing applications.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyId = "string",
      Signature = raw,
      SigningAlgorithm = "RSASSA_PSS_SHA_256"|"RSASSA_PSS_SHA_384"|"RSASSA_PSS_SHA_512"|"RSASSA_PKCS1_V1_5_SHA_256"|"RSASSA_PKCS1_V1_5_SHA_384"|"RSASSA_PKCS1_V1_5_SHA_512"|"ECDSA_SHA_256"|"ECDSA_SHA_384"|"ECDSA_SHA_512"|"SM2DSA"
    )

### Request syntax

    svc$sign(
      KeyId = "string",
      Message = raw,
      MessageType = "RAW"|"DIGEST",
      GrantTokens = list(
        "string"
      ),
      SigningAlgorithm = "RSASSA_PSS_SHA_256"|"RSASSA_PSS_SHA_384"|"RSASSA_PSS_SHA_512"|"RSASSA_PKCS1_V1_5_SHA_256"|"RSASSA_PKCS1_V1_5_SHA_384"|"RSASSA_PKCS1_V1_5_SHA_512"|"ECDSA_SHA_256"|"ECDSA_SHA_384"|"ECDSA_SHA_512"|"SM2DSA"
    )

### Examples

    ## Not run: 
    # This operation uses the private key in an asymmetric elliptic curve
    # (ECC) KMS key to generate a digital signature for a given message.
    svc$sign(
      KeyId = "alias/ECC_signing_key",
      Message = "<message to be signed>",
      MessageType = "RAW",
      SigningAlgorithm = "ECDSA_SHA_384"
    )

    # This operation uses the private key in an asymmetric RSA signing KMS key
    # to generate a digital signature for a message digest. In this example, a
    # large message was hashed and the resulting digest is provided in the
    # Message parameter. To tell KMS not to hash the message again, the
    # MessageType field is set to DIGEST
    svc$sign(
      KeyId = "alias/RSA_signing_key",
      Message = "<message digest to be signed>",
      MessageType = "DIGEST",
      SigningAlgorithm = "RSASSA_PKCS1_V1_5_SHA_256"
    )

    ## End(Not run)
