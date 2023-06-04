<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_get_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the public key of an asymmetric KMS key

### Description

Returns the public key of an asymmetric KMS key. Unlike the private key
of a asymmetric KMS key, which never leaves KMS unencrypted, callers
with `kms:GetPublicKey` permission can download the public key of an
asymmetric KMS key. You can share the public key to allow others to
encrypt messages and verify signatures outside of KMS. For information
about asymmetric KMS keys, see [Asymmetric KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the *Key Management Service Developer Guide*.

You do not need to download the public key. Instead, you can use the
public key within KMS by calling the `encrypt`, `re_encrypt`, or
`verify` operations with the identifier of an asymmetric KMS key. When
you use the public key within KMS, you benefit from the authentication,
authorization, and logging that are part of every KMS operation. You
also reduce of risk of encrypting data that cannot be decrypted. These
features are not effective outside of KMS.

To help you use the public key safely outside of KMS, `get_public_key`
returns important information about the public key in the response,
including:

-   [KeySpec](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeySpec):
    The type of key material in the public key, such as `RSA_4096` or
    `ECC_NIST_P521`.

-   [KeyUsage](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage):
    Whether the key is used for encryption or signing.

-   [EncryptionAlgorithms](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms)
    or
    [SigningAlgorithms](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms):
    A list of the encryption algorithms or the signing algorithms for
    the key.

Although KMS cannot enforce these restrictions on external operations,
it is crucial that you use this information to prevent the public key
from being used improperly. For example, you can prevent a public
signing key from being used encrypt data, or prevent a public key from
being used with an encryption algorithm that is not supported by KMS.
You can also avoid errors, such as using the wrong signing algorithm in
a verification operation.

To verify a signature outside of KMS with an SM2 public key (China
Regions only), you must specify the distinguishing ID. By default, KMS
uses `1234567812345678` as the distinguishing ID. For more information,
see [Offline verification with SM2 key
pairs](https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification).

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:GetPublicKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `create_key`

### Usage

    kms_get_public_key(KeyId, GrantTokens)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_get_public_key_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the asymmetric KMS key that includes the
public key.</p>
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
<td><code id="kms_get_public_key_:_GrantTokens">GrantTokens</code></td>
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
      KeyId = "string",
      PublicKey = raw,
      CustomerMasterKeySpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SYMMETRIC_DEFAULT"|"HMAC_224"|"HMAC_256"|"HMAC_384"|"HMAC_512"|"SM2",
      KeySpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SYMMETRIC_DEFAULT"|"HMAC_224"|"HMAC_256"|"HMAC_384"|"HMAC_512"|"SM2",
      KeyUsage = "SIGN_VERIFY"|"ENCRYPT_DECRYPT"|"GENERATE_VERIFY_MAC",
      EncryptionAlgorithms = list(
        "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE"
      ),
      SigningAlgorithms = list(
        "RSASSA_PSS_SHA_256"|"RSASSA_PSS_SHA_384"|"RSASSA_PSS_SHA_512"|"RSASSA_PKCS1_V1_5_SHA_256"|"RSASSA_PKCS1_V1_5_SHA_384"|"RSASSA_PKCS1_V1_5_SHA_512"|"ECDSA_SHA_256"|"ECDSA_SHA_384"|"ECDSA_SHA_512"|"SM2DSA"
      )
    )

### Request syntax

    svc$get_public_key(
      KeyId = "string",
      GrantTokens = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example gets the public key of an asymmetric RSA KMS key used for
    # encryption and decryption. The operation returns the key spec, key
    # usage, and encryption or signing algorithms to help you use the public
    # key correctly outside of AWS KMS.
    svc$get_public_key(
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321"
    )

    ## End(Not run)
