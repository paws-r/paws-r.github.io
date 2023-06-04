<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_describe_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides detailed information about a KMS key

### Description

Provides detailed information about a KMS key. You can run
`describe_key` on a [customer managed
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
or an [Amazon Web Services managed
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).

This detailed information includes the key ARN, creation date (and
deletion date, if applicable), the key state, and the origin and
expiration date (if any) of the key material. It includes fields, like
`KeySpec`, that help you distinguish different types of KMS keys. It
also displays the key usage (encryption, signing, or generating and
verifying MACs) and the algorithms that the KMS key supports.

For [multi-Region
keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html),
`describe_key` displays the primary key and all related replica keys.
For KMS keys in [CloudHSM key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html),
it includes information about the key store, such as the key store ID
and the CloudHSM cluster ID. For KMS keys in [external key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html),
it includes the custom key store ID and the ID of the external key.

`describe_key` does not return the following information:

-   Aliases associated with the KMS key. To get this information, use
    `list_aliases`.

-   Whether automatic key rotation is enabled on the KMS key. To get
    this information, use `get_key_rotation_status`. Also, some key
    states prevent a KMS key from being automatically rotated. For
    details, see [How Automatic Key Rotation
    Works](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works)
    in the *Key Management Service Developer Guide*.

-   Tags on the KMS key. To get this information, use
    `list_resource_tags`.

-   Key policies and grants on the KMS key. To get this information, use
    `get_key_policy` and `list_grants`.

In general, `describe_key` is a non-mutating operation. It returns data
about KMS keys, but doesn't change them. However, Amazon Web Services
services use `describe_key` to create [Amazon Web Services managed
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
from a *predefined Amazon Web Services alias* with no key ID.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:DescribeKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `get_key_policy`

-   `get_key_rotation_status`

-   `list_aliases`

-   `list_grants`

-   `list_keys`

-   `list_resource_tags`

-   `list_retirable_grants`

### Usage

    kms_describe_key(KeyId, GrantTokens)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_describe_key_:_KeyId">KeyId</code></td>
<td><p>[required] Describes the specified KMS key.</p>
<p>If you specify a predefined Amazon Web Services alias (an Amazon Web
Services alias with no key ID), KMS associates the alias with an <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html##aws-managed-cmk">Amazon
Web Services managed key</a> and returns its <code>KeyId</code> and
<code>Arn</code> in the response.</p>
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
<td><code id="kms_describe_key_:_GrantTokens">GrantTokens</code></td>
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
      KeyMetadata = list(
        AWSAccountId = "string",
        KeyId = "string",
        Arn = "string",
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        Enabled = TRUE|FALSE,
        Description = "string",
        KeyUsage = "SIGN_VERIFY"|"ENCRYPT_DECRYPT"|"GENERATE_VERIFY_MAC",
        KeyState = "Creating"|"Enabled"|"Disabled"|"PendingDeletion"|"PendingImport"|"PendingReplicaDeletion"|"Unavailable"|"Updating",
        DeletionDate = as.POSIXct(
          "2015-01-01"
        ),
        ValidTo = as.POSIXct(
          "2015-01-01"
        ),
        Origin = "AWS_KMS"|"EXTERNAL"|"AWS_CLOUDHSM"|"EXTERNAL_KEY_STORE",
        CustomKeyStoreId = "string",
        CloudHsmClusterId = "string",
        ExpirationModel = "KEY_MATERIAL_EXPIRES"|"KEY_MATERIAL_DOES_NOT_EXPIRE",
        KeyManager = "AWS"|"CUSTOMER",
        CustomerMasterKeySpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SYMMETRIC_DEFAULT"|"HMAC_224"|"HMAC_256"|"HMAC_384"|"HMAC_512"|"SM2",
        KeySpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SYMMETRIC_DEFAULT"|"HMAC_224"|"HMAC_256"|"HMAC_384"|"HMAC_512"|"SM2",
        EncryptionAlgorithms = list(
          "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256"|"SM2PKE"
        ),
        SigningAlgorithms = list(
          "RSASSA_PSS_SHA_256"|"RSASSA_PSS_SHA_384"|"RSASSA_PSS_SHA_512"|"RSASSA_PKCS1_V1_5_SHA_256"|"RSASSA_PKCS1_V1_5_SHA_384"|"RSASSA_PKCS1_V1_5_SHA_512"|"ECDSA_SHA_256"|"ECDSA_SHA_384"|"ECDSA_SHA_512"|"SM2DSA"
        ),
        MultiRegion = TRUE|FALSE,
        MultiRegionConfiguration = list(
          MultiRegionKeyType = "PRIMARY"|"REPLICA",
          PrimaryKey = list(
            Arn = "string",
            Region = "string"
          ),
          ReplicaKeys = list(
            list(
              Arn = "string",
              Region = "string"
            )
          )
        ),
        PendingDeletionWindowInDays = 123,
        MacAlgorithms = list(
          "HMAC_SHA_224"|"HMAC_SHA_256"|"HMAC_SHA_384"|"HMAC_SHA_512"
        ),
        XksKeyConfiguration = list(
          Id = "string"
        )
      )
    )

### Request syntax

    svc$describe_key(
      KeyId = "string",
      GrantTokens = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example gets metadata for a symmetric encryption KMS key.
    svc$describe_key(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    # The following example gets metadata for an asymmetric RSA KMS key used
    # for signing and verification.
    svc$describe_key(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    # The following example gets metadata for a multi-Region replica key. This
    # multi-Region key is a symmetric encryption key. DescribeKey returns
    # information about the primary key and all of its replicas.
    svc$describe_key(
      KeyId = "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab"
    )

    # The following example gets the metadata of an HMAC KMS key.
    svc$describe_key(
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    # The following example gets the metadata of a KMS key in an AWS CloudHSM
    # key store.
    svc$describe_key(
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    # The following example gets the metadata of a KMS key in an external key
    # store.
    svc$describe_key(
      KeyId = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
