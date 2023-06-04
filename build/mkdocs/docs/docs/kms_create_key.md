<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_create_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a unique customer managed KMS key in your Amazon Web Services account and Region

### Description

Creates a unique customer managed [KMS
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys)
in your Amazon Web Services account and Region. You can use a KMS key in
cryptographic operations, such as encryption and signing. Some Amazon
Web Services services let you use KMS keys that you create and manage to
protect your service resources.

A KMS key is a logical representation of a cryptographic key. In
addition to the key material used in cryptographic operations, a KMS key
includes metadata, such as the key ID, key policy, creation date,
description, and key state. For details, see [Managing
keys](https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html)
in the *Key Management Service Developer Guide*

Use the parameters of `create_key` to specify the type of KMS key, the
source of its key material, its key policy, description, tags, and other
properties.

KMS has replaced the term *customer master key (CMK)* with *KMS key* and
*KMS key*. The concept has not changed. To prevent breaking changes, KMS
is keeping some variations of this term.

To create different types of KMS keys, use the following guidance:

#### Symmetric encryption KMS key

By default, `create_key` creates a symmetric encryption KMS key with key
material that KMS generates. This is the basic and most widely used type
of KMS key, and provides the best performance.

To create a symmetric encryption KMS key, you don't need to specify any
parameters. The default value for `KeySpec`, `SYMMETRIC_DEFAULT`, the
default value for `KeyUsage`, `ENCRYPT_DECRYPT`, and the default value
for `Origin`, `AWS_KMS`, create a symmetric encryption KMS key with KMS
key material.

If you need a key for basic encryption and decryption or you are
creating a KMS key to protect your resources in an Amazon Web Services
service, create a symmetric encryption KMS key. The key material in a
symmetric encryption key never leaves KMS unencrypted. You can use a
symmetric encryption KMS key to encrypt and decrypt data up to 4,096
bytes, but they are typically used to generate data keys and data keys
pairs. For details, see `generate_data_key` and
`generate_data_key_pair`.

#### Asymmetric KMS keys

To create an asymmetric KMS key, use the `KeySpec` parameter to specify
the type of key material in the KMS key. Then, use the `KeyUsage`
parameter to determine whether the KMS key will be used to encrypt and
decrypt or sign and verify. You can't change these properties after the
KMS key is created.

Asymmetric KMS keys contain an RSA key pair, Elliptic Curve (ECC) key
pair, or an SM2 key pair (China Regions only). The private key in an
asymmetric KMS key never leaves KMS unencrypted. However, you can use
the `get_public_key` operation to download the public key so it can be
used outside of KMS. KMS keys with RSA or SM2 key pairs can be used to
encrypt or decrypt data or sign and verify messages (but not both). KMS
keys with ECC key pairs can be used only to sign and verify messages.
For information about asymmetric KMS keys, see [Asymmetric KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the *Key Management Service Developer Guide*.

#### HMAC KMS key

To create an HMAC KMS key, set the `KeySpec` parameter to a key spec
value for HMAC KMS keys. Then set the `KeyUsage` parameter to
`GENERATE_VERIFY_MAC`. You must set the key usage even though
`GENERATE_VERIFY_MAC` is the only valid key usage value for HMAC KMS
keys. You can't change these properties after the KMS key is created.

HMAC KMS keys are symmetric keys that never leave KMS unencrypted. You
can use HMAC keys to generate (`generate_mac`) and verify (`verify_mac`)
HMAC codes for messages up to 4096 bytes.

HMAC KMS keys are not supported in all Amazon Web Services Regions. If
you try to create an HMAC KMS key in an Amazon Web Services Region in
which HMAC keys are not supported, the `create_key` operation returns an
`UnsupportedOperationException`. For a list of Regions in which HMAC KMS
keys are supported, see [HMAC keys in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
the *Key Management Service Developer Guide*.

#### Multi-Region primary keys

#### Imported key material

To create a multi-Region *primary key* in the local Amazon Web Services
Region, use the `MultiRegion` parameter with a value of `True`. To
create a multi-Region *replica key*, that is, a KMS key with the same
key ID and key material as a primary key, but in a different Amazon Web
Services Region, use the `replicate_key` operation. To change a replica
key to a primary key, and its primary key to a replica key, use the
`update_primary_region` operation.

You can create multi-Region KMS keys for all supported KMS key types:
symmetric encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS
keys, and asymmetric signing KMS keys. You can also create multi-Region
keys with imported key material. However, you can't create multi-Region
keys in a custom key store.

This operation supports *multi-Region keys*, an KMS feature that lets
you create multiple interoperable KMS keys in different Amazon Web
Services Regions. Because these KMS keys have the same key ID, key
material, and other metadata, you can use them interchangeably to
encrypt data in one Amazon Web Services Region and decrypt it in a
different Amazon Web Services Region without re-encrypting the data or
making a cross-Region call. For more information about multi-Region
keys, see [Multi-Region keys in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the *Key Management Service Developer Guide*.

To import your own key material into a KMS key, begin by creating a
symmetric encryption KMS key with no key material. To do this, use the
`Origin` parameter of `create_key` with a value of `EXTERNAL`. Next, use
`get_parameters_for_import` operation to get a public key and import
token, and use the public key to encrypt your key material. Then, use
`import_key_material` with your import token to import the key material.
For step-by-step instructions, see [Importing Key
Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the *Key Management Service Developer Guide* .

This feature supports only symmetric encryption KMS keys, including
multi-Region symmetric encryption KMS keys. You cannot import key
material into any other type of KMS key.

To create a multi-Region primary key with imported key material, use the
`Origin` parameter of `create_key` with a value of `EXTERNAL` and the
`MultiRegion` parameter with a value of `True`. To create replicas of
the multi-Region primary key, use the `replicate_key` operation. For
instructions, see Importing key material into multi-Region keys. For
more information about multi-Region keys, see [Multi-Region keys in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the *Key Management Service Developer Guide*.

#### Custom key store

A [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
lets you protect your Amazon Web Services resources using keys in a
backing key store that you own and manage. When you request a
cryptographic operation with a KMS key in a custom key store, the
operation is performed in the backing key store using its cryptographic
keys.

KMS supports [CloudHSM key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html)
backed by an CloudHSM cluster and [external key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html)
backed by an external key manager outside of Amazon Web Services. When
you create a KMS key in an CloudHSM key store, KMS generates an
encryption key in the CloudHSM cluster and associates it with the KMS
key. When you create a KMS key in an external key store, you specify an
existing encryption key in the external key manager.

Some external key managers provide a simpler method for creating a KMS
key in an external key store. For details, see your external key manager
documentation.

Before you create a KMS key in a custom key store, the `ConnectionState`
of the key store must be `CONNECTED`. To connect the custom key store,
use the `connect_custom_key_store` operation. To find the
`ConnectionState`, use the `describe_custom_key_stores` operation.

To create a KMS key in a custom key store, use the `CustomKeyStoreId`.
Use the default `KeySpec` value, `SYMMETRIC_DEFAULT`, and the default
`KeyUsage` value, `ENCRYPT_DECRYPT` to create a symmetric encryption
key. No other key type is supported in a custom key store.

To create a KMS key in an [CloudHSM key
store](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html),
use the `Origin` parameter with a value of `AWS_CLOUDHSM`. The CloudHSM
cluster that is associated with the custom key store must have at least
two active HSMs in different Availability Zones in the Amazon Web
Services Region.

To create a KMS key in an [external key
store](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html),
use the `Origin` parameter with a value of `EXTERNAL_KEY_STORE` and an
`XksKeyId` parameter that identifies an existing external key.

Some external key managers provide a simpler method for creating a KMS
key in an external key store. For details, see your external key manager
documentation.

**Cross-account use**: No. You cannot use this operation to create a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:CreateKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy). To use the `Tags` parameter,
[kms:TagResource](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy). For examples and information about related permissions,
see [Allow a user to create KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policy-example-create-key)
in the *Key Management Service Developer Guide*.

**Related operations:**

-   `describe_key`

-   `list_keys`

-   `schedule_key_deletion`

### Usage

    kms_create_key(Policy, Description, KeyUsage, CustomerMasterKeySpec,
      KeySpec, Origin, CustomKeyStoreId, BypassPolicyLockoutSafetyCheck, Tags,
      MultiRegion, XksKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_create_key_:_Policy">Policy</code></td>
<td><p>The key policy to attach to the KMS key.</p>
<p>If you provide a key policy, it must meet the following criteria:</p>
<ul>
<li><p>The key policy must allow the calling principal to make a
subsequent <code>put_key_policy</code> request on the KMS key. This
reduces the risk that the KMS key becomes unmanageable. For more
information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default
key policy</a> in the <em>Key Management Service Developer Guide</em>.
(To omit this condition, set <code>BypassPolicyLockoutSafetyCheck</code>
to true.)</p></li>
<li><p>Each statement in the key policy must contain one or more
principals. The principals in the key policy must exist and be visible
to KMS. When you create a new Amazon Web Services principal, you might
need to enforce a delay before including the new principal in a key
policy because the new principal might not be immediately visible to
KMS. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes
that I make are not always immediately visible</a> in the <em>Amazon Web
Services Identity and Access Management User Guide</em>.</p></li>
</ul>
<p>If you do not provide a key policy, KMS attaches a default key policy
to the KMS key. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default">Default
key policy</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>The key policy size quota is 32 kilobytes (32768 bytes).</p>
<p>For help writing and formatting a JSON policy document, see the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM
JSON Policy Reference</a> in the <em>Identity and Access Management User
Guide</em> .</p></td>
</tr>
<tr class="even">
<td><code id="kms_create_key_:_Description">Description</code></td>
<td><p>A description of the KMS key. Use a description that helps you
decide whether the KMS key is appropriate for a task. The default value
is an empty string (no description).</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>To set or change the description after the key is created, use
<code>update_key_description</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_create_key_:_KeyUsage">KeyUsage</code></td>
<td><p>Determines the <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
operations</a> for which you can use the KMS key. The default value is
<code>ENCRYPT_DECRYPT</code>. This parameter is optional when you are
creating a symmetric encryption KMS key; otherwise, it is required. You
can't change the <code>KeyUsage</code> value after the KMS key is
created.</p>
<p>Select only one valid value.</p>
<ul>
<li><p>For symmetric encryption KMS keys, omit the parameter or specify
<code>ENCRYPT_DECRYPT</code>.</p></li>
<li><p>For HMAC KMS keys (symmetric), specify
<code>GENERATE_VERIFY_MAC</code>.</p></li>
<li><p>For asymmetric KMS keys with RSA key material, specify
<code>ENCRYPT_DECRYPT</code> or <code>SIGN_VERIFY</code>.</p></li>
<li><p>For asymmetric KMS keys with ECC key material, specify
<code>SIGN_VERIFY</code>.</p></li>
<li><p>For asymmetric KMS keys with SM2 key material (China Regions
only), specify <code>ENCRYPT_DECRYPT</code> or
<code>SIGN_VERIFY</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="kms_create_key_:_CustomerMasterKeySpec">CustomerMasterKeySpec</code></td>
<td><p>Instead, use the <code>KeySpec</code> parameter.</p>
<p>The <code>KeySpec</code> and <code>CustomerMasterKeySpec</code>
parameters work the same way. Only the names differ. We recommend that
you use <code>KeySpec</code> parameter in your code. However, to avoid
breaking changes, KMS supports both parameters.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_create_key_:_KeySpec">KeySpec</code></td>
<td><p>Specifies the type of KMS key to create. The default value,
<code>SYMMETRIC_DEFAULT</code>, creates a KMS key with a 256-bit AES-GCM
key that is used for encryption and decryption, except in China Regions,
where it creates a 128-bit symmetric key that uses SM4 encryption. For
help choosing a key spec for your KMS key, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-types.html#symm-asymm-choose">Choosing
a KMS key type</a> in the <em>Key Management Service Developer
Guide</em> .</p>
<p>The <code>KeySpec</code> determines whether the KMS key contains a
symmetric key or an asymmetric key pair. It also determines the
algorithms that the KMS key supports. You can't change the
<code>KeySpec</code> after the KMS key is created. To further restrict
the algorithms that can be used with the KMS key, use a condition key in
its key policy or IAM policy. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm">kms:EncryptionAlgorithm</a>,
<a
href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-mac-algorithm">kms:MacAlgorithm</a>
or <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm">kms:Signing
Algorithm</a> in the <em>Key Management Service Developer Guide</em>
.</p>
<p><a
href="https://aws.amazon.com/kms/features/#AWS_Service_Integration">Amazon
Web Services services that are integrated with KMS</a> use symmetric
encryption KMS keys to protect your data. These services do not support
asymmetric KMS keys or HMAC KMS keys.</p>
<p>KMS supports the following key specs for KMS keys:</p>
<ul>
<li><p>Symmetric encryption key (default)</p>
<ul>
<li><p><code>SYMMETRIC_DEFAULT</code></p></li>
</ul></li>
<li><p>HMAC keys (symmetric)</p>
<ul>
<li><p><code>HMAC_224</code></p></li>
<li><p><code>HMAC_256</code></p></li>
<li><p><code>HMAC_384</code></p></li>
<li><p><code>HMAC_512</code></p></li>
</ul></li>
<li><p>Asymmetric RSA key pairs</p>
<ul>
<li><p><code>RSA_2048</code></p></li>
<li><p><code>RSA_3072</code></p></li>
<li><p><code>RSA_4096</code></p></li>
</ul></li>
<li><p>Asymmetric NIST-recommended elliptic curve key pairs</p>
<ul>
<li><p><code>ECC_NIST_P256</code> (secp256r1)</p></li>
<li><p><code>ECC_NIST_P384</code> (secp384r1)</p></li>
<li><p><code>ECC_NIST_P521</code> (secp521r1)</p></li>
</ul></li>
<li><p>Other asymmetric elliptic curve key pairs</p>
<ul>
<li><p><code>ECC_SECG_P256K1</code> (secp256k1), commonly used for
cryptocurrencies.</p></li>
</ul></li>
<li><p>SM2 key pairs (China Regions only)</p>
<ul>
<li><p><code>SM2</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="kms_create_key_:_Origin">Origin</code></td>
<td><p>The source of the key material for the KMS key. You cannot change
the origin after you create the KMS key. The default is
<code>AWS_KMS</code>, which means that KMS creates the key material.</p>
<p>To <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-create-cmk.html">create
a KMS key with no key material</a> (for imported key material), set this
value to <code>EXTERNAL</code>. For more information about importing key
material into KMS, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing
Key Material</a> in the <em>Key Management Service Developer Guide</em>.
The <code>EXTERNAL</code> origin value is valid only for symmetric KMS
keys.</p>
<p>To <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html">create
a KMS key in an CloudHSM key store</a> and create its key material in
the associated CloudHSM cluster, set this value to
<code>AWS_CLOUDHSM</code>. You must also use the
<code>CustomKeyStoreId</code> parameter to identify the CloudHSM key
store. The <code>KeySpec</code> value must be
<code>SYMMETRIC_DEFAULT</code>.</p>
<p>To <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keys.html">create
a KMS key in an external key store</a>, set this value to
<code>EXTERNAL_KEY_STORE</code>. You must also use the
<code>CustomKeyStoreId</code> parameter to identify the external key
store and the <code>XksKeyId</code> parameter to identify the associated
external key. The <code>KeySpec</code> value must be
<code>SYMMETRIC_DEFAULT</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_create_key_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>Creates the KMS key in the specified <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
key store</a>. The <code>ConnectionState</code> of the custom key store
must be <code>CONNECTED</code>. To find the CustomKeyStoreID and
ConnectionState use the <code>describe_custom_key_stores</code>
operation.</p>
<p>This parameter is valid only for symmetric encryption KMS keys in a
single Region. You cannot create any other type of KMS key in a custom
key store.</p>
<p>When you create a KMS key in an CloudHSM key store, KMS generates a
non-exportable 256-bit symmetric key in its associated CloudHSM cluster
and associates it with the KMS key. When you create a KMS key in an
external key store, you must use the <code>XksKeyId</code> parameter to
specify an external key that serves as key material for the KMS
key.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_create_key_:_BypassPolicyLockoutSafetyCheck">BypassPolicyLockoutSafetyCheck</code></td>
<td><p>Skips ("bypasses") the key policy lockout safety check. The
default value is false.</p>
<p>Setting this value to true increases the risk that the KMS key
becomes unmanageable. Do not set this value to true
indiscriminately.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default
key policy</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>Use this parameter only when you intend to prevent the principal that
is making the request from making a subsequent
<code>put_key_policy</code> request on the KMS key.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_create_key_:_Tags">Tags</code></td>
<td><p>Assigns one or more tags to the KMS key. Use this parameter to
tag the KMS key when it is created. To tag an existing KMS key, use the
<code>tag_resource</code> operation.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>Tagging or untagging a KMS key can allow or deny permission to the
KMS key. For details, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC
for KMS</a> in the <em>Key Management Service Developer Guide</em>.</p>
<p>To use this parameter, you must have <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a>
permission in an IAM policy.</p>
<p>Each tag consists of a tag key and a tag value. Both the tag key and
the tag value are required, but the tag value can be an empty (null)
string. You cannot have more than one tag on a KMS key with the same tag
key. If you specify an existing tag key with a different tag value, KMS
replaces the current tag value with the specified one.</p>
<p>When you add tags to an Amazon Web Services resource, Amazon Web
Services generates a cost allocation report with usage and costs
aggregated by tags. Tags can also be used to control access to a KMS
key. For details, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging
Keys</a>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_create_key_:_MultiRegion">MultiRegion</code></td>
<td><p>Creates a multi-Region primary key that you can replicate into
other Amazon Web Services Regions. You cannot change this value after
you create the KMS key.</p>
<p>For a multi-Region key, set this parameter to <code>True</code>. For
a single-Region KMS key, omit this parameter or set it to
<code>False</code>. The default value is <code>False</code>.</p>
<p>This operation supports <em>multi-Region keys</em>, an KMS feature
that lets you create multiple interoperable KMS keys in different Amazon
Web Services Regions. Because these KMS keys have the same key ID, key
material, and other metadata, you can use them interchangeably to
encrypt data in one Amazon Web Services Region and decrypt it in a
different Amazon Web Services Region without re-encrypting the data or
making a cross-Region call. For more information about multi-Region
keys, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region
keys in KMS</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>This value creates a <em>primary key</em>, not a replica. To create a
<em>replica key</em>, use the <code>replicate_key</code> operation.</p>
<p>You can create a symmetric or asymmetric multi-Region key, and you
can create a multi-Region key with imported key material. However, you
cannot create a multi-Region key in a custom key store.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_create_key_:_XksKeyId">XksKeyId</code></td>
<td><p>Identifies the <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key">external
key</a> that serves as key material for the KMS key in an <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external
key store</a>. Specify the ID that the <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-xks-proxy">external
key store proxy</a> uses to refer to the external key. For help, see the
documentation for your external key store proxy.</p>
<p>This parameter is required for a KMS key with an <code>Origin</code>
value of <code>EXTERNAL_KEY_STORE</code>. It is not valid for KMS keys
with any other <code>Origin</code> value.</p>
<p>The external key must be an existing 256-bit AES symmetric encryption
key hosted outside of Amazon Web Services in an external key manager
associated with the external key store specified by the
<code>CustomKeyStoreId</code> parameter. This key must be enabled and
configured to perform encryption and decryption. Each KMS key in an
external key store must use a different external key. For details, see
Requirements for a KMS key in an external key store in the <em>Key
Management Service Developer Guide</em>.</p>
<p>Each KMS key in an external key store is associated two backing keys.
One is key material that KMS generates. The other is the external key
specified by this parameter. When you use the KMS key in an external key
store to encrypt data, the encryption operation is performed first by
KMS using the KMS key material, and then by the external key manager
using the specified external key, a process known as <em>double
encryption</em>. For details, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-double-encryption">Double
encryption</a> in the <em>Key Management Service Developer
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

    svc$create_key(
      Policy = "string",
      Description = "string",
      KeyUsage = "SIGN_VERIFY"|"ENCRYPT_DECRYPT"|"GENERATE_VERIFY_MAC",
      CustomerMasterKeySpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SYMMETRIC_DEFAULT"|"HMAC_224"|"HMAC_256"|"HMAC_384"|"HMAC_512"|"SM2",
      KeySpec = "RSA_2048"|"RSA_3072"|"RSA_4096"|"ECC_NIST_P256"|"ECC_NIST_P384"|"ECC_NIST_P521"|"ECC_SECG_P256K1"|"SYMMETRIC_DEFAULT"|"HMAC_224"|"HMAC_256"|"HMAC_384"|"HMAC_512"|"SM2",
      Origin = "AWS_KMS"|"EXTERNAL"|"AWS_CLOUDHSM"|"EXTERNAL_KEY_STORE",
      CustomKeyStoreId = "string",
      BypassPolicyLockoutSafetyCheck = TRUE|FALSE,
      Tags = list(
        list(
          TagKey = "string",
          TagValue = "string"
        )
      ),
      MultiRegion = TRUE|FALSE,
      XksKeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example creates a symmetric KMS key for encryption and
    # decryption. No parameters are required for this operation.
    svc$create_key()

    # This example creates a KMS key that contains an asymmetric RSA key pair
    # for encryption and decryption. The key spec and key usage can't be
    # changed after the key is created.
    svc$create_key(
      KeySpec = "RSA_4096",
      KeyUsage = "ENCRYPT_DECRYPT"
    )

    # This example creates a KMS key that contains an asymmetric elliptic
    # curve (ECC) key pair for signing and verification. The key usage is
    # required even though "SIGN_VERIFY" is the only valid value for ECC KMS
    # keys. The key spec and key usage can't be changed after the key is
    # created.
    svc$create_key(
      KeySpec = "ECC_NIST_P521",
      KeyUsage = "SIGN_VERIFY"
    )

    # This example creates a 384-bit symmetric HMAC KMS key. The
    # GENERATE_VERIFY_MAC key usage value is required even though it's the
    # only valid value for HMAC KMS keys. The key spec and key usage can't be
    # changed after the key is created.
    svc$create_key(
      KeySpec = "HMAC_384",
      KeyUsage = "GENERATE_VERIFY_MAC"
    )

    # This example creates a multi-Region primary symmetric encryption key.
    # Because the default values for all parameters create a symmetric
    # encryption key, only the MultiRegion parameter is required for this KMS
    # key.
    svc$create_key(
      MultiRegion = TRUE
    )

    # This example creates a KMS key with no key material. When the operation
    # is complete, you can import your own key material into the KMS key. To
    # create this KMS key, set the Origin parameter to EXTERNAL.
    svc$create_key(
      Origin = "EXTERNAL"
    )

    # This example creates a KMS key in the specified AWS CloudHSM key store.
    # The operation creates the KMS key and its metadata in AWS KMS and
    # creates the key material in the AWS CloudHSM cluster associated with the
    # custom key store. This example requires the CustomKeyStoreId  and Origin
    # parameters.
    svc$create_key(
      CustomKeyStoreId = "cks-1234567890abcdef0",
      Origin = "AWS_CLOUDHSM"
    )

    # This example creates a KMS key in the specified external key store. It
    # uses the XksKeyId parameter to associate the KMS key with an existing
    # symmetric encryption key in your external key manager. This
    # CustomKeyStoreId, Origin, and XksKeyId parameters are required in this
    # operation.
    svc$create_key(
      CustomKeyStoreId = "cks-9876543210fedcba9",
      Origin = "EXTERNAL_KEY_STORE",
      XksKeyId = "bb8562717f809024"
    )

    ## End(Not run)
