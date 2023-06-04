<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_replicate_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replicates a multi-Region key into the specified Region

### Description

Replicates a multi-Region key into the specified Region. This operation
creates a multi-Region replica key based on a multi-Region primary key
in a different Region of the same Amazon Web Services partition. You can
create multiple replicas of a primary key, but each must be in a
different Region. To create a multi-Region primary key, use the
`create_key` operation.

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

A *replica key* is a fully-functional KMS key that can be used
independently of its primary and peer replica keys. A primary key and
its replica keys share properties that make them interoperable. They
have the same [key
ID](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id)
and key material. They also have the same [key
spec](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
[key
usage](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
[key material
origin](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
and [automatic key rotation
status](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
KMS automatically synchronizes these shared properties among related
multi-Region keys. All other properties of a replica key can differ,
including its [key
policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html),
[tags](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html),
[aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html),
and [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html).
KMS pricing and quotas for KMS keys apply to each primary key and
replica key.

When this operation completes, the new replica key has a transient key
state of `Creating`. This key state changes to `Enabled` (or
`PendingImport`) after a few seconds when the process of creating the
new replica key is complete. While the key state is `Creating`, you can
manage key, but you cannot yet use it in cryptographic operations. If
you are creating and using the replica key programmatically, retry on
`KMSInvalidStateException` or call `describe_key` to check its
`KeyState` value before using it. For details about the `Creating` key
state, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

You cannot create more than one replica of a primary key in any Region.
If the Region already includes a replica of the key you're trying to
replicate, `replicate_key` returns an `AlreadyExistsException` error. If
the key state of the existing replica is `PendingDeletion`, you can
cancel the scheduled key deletion (`cancel_key_deletion`) or wait for
the key to be deleted. The new replica key you create will have the same
[shared
properties](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-sync-properties)
as the original replica key.

The CloudTrail log of a `replicate_key` operation records a
`replicate_key` operation in the primary key's Region and a `create_key`
operation in the replica key's Region.

If you replicate a multi-Region primary key with imported key material,
the replica key is created with no key material. You must import the
same key material that you imported into the primary key. For details,
see [Importing key material into multi-Region
keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-import.html)
in the *Key Management Service Developer Guide*.

To convert a replica key to a primary key, use the
`update_primary_region` operation.

`replicate_key` uses different default values for the `KeyPolicy` and
`Tags` parameters than those used in the KMS console. For details, see
the parameter descriptions.

**Cross-account use**: No. You cannot use this operation to create a
replica key in a different Amazon Web Services account.

**Required permissions**:

-   `kms:ReplicateKey` on the primary key (in the primary key's Region).
    Include this permission in the primary key's key policy.

-   `kms:CreateKey` in an IAM policy in the replica Region.

-   To use the `Tags` parameter, `kms:TagResource` in an IAM policy in
    the replica Region.

**Related operations**

-   `create_key`

-   `update_primary_region`

### Usage

    kms_replicate_key(KeyId, ReplicaRegion, Policy,
      BypassPolicyLockoutSafetyCheck, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_replicate_key_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the multi-Region primary key that is being
replicated. To determine whether a KMS key is a multi-Region primary
key, use the <code>describe_key</code> operation to check the value of
the <code>MultiRegionKeyType</code> property.</p>
<p>Specify the key ID or key ARN of a multi-Region primary key.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠mrk-1234abcd12ab34cd56ef1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab⁠</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_replicate_key_:_ReplicaRegion">ReplicaRegion</code></td>
<td><p>[required] The Region ID of the Amazon Web Services Region for
this replica key.</p>
<p>Enter the Region ID, such as <code>us-east-1</code> or
<code>ap-southeast-2</code>. For a list of Amazon Web Services Regions
in which KMS is supported, see <a
href="https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region">KMS
service endpoints</a> in the <em>Amazon Web Services General
Reference</em>.</p>
<p>HMAC KMS keys are not supported in all Amazon Web Services Regions.
If you try to replicate an HMAC KMS key in an Amazon Web Services Region
in which HMAC keys are not supported, the <code>replicate_key</code>
operation returns an <code>UnsupportedOperationException</code>. For a
list of Regions in which HMAC KMS keys are supported, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC
keys in KMS</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>The replica must be in a different Amazon Web Services Region than
its primary key and other replicas of that primary key, but in the same
Amazon Web Services partition. KMS must be available in the replica
Region. If the Region is not enabled by default, the Amazon Web Services
account must be enabled in the Region. For information about Amazon Web
Services partitions, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>. For information about enabling and disabling Regions,
see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable">Enabling
a Region</a> and <a
href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable">Disabling
a Region</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_replicate_key_:_Policy">Policy</code></td>
<td><p>The key policy to attach to the KMS key. This parameter is
optional. If you do not provide a key policy, KMS attaches the <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default">default
key policy</a> to the KMS key.</p>
<p>The key policy is not a shared property of multi-Region keys. You can
specify the same key policy or a different key policy for each key in a
set of related multi-Region keys. KMS does not synchronize this
property.</p>
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
<p>A key policy document can include only the following characters:</p>
<ul>
<li><p>Printable ASCII characters from the space character
(<code>U+0020</code>) through the end of the ASCII character
range.</p></li>
<li><p>Printable characters in the Basic Latin and Latin-1 Supplement
character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>).</p></li>
<li><p>The tab (<code>U+0009</code>), line feed (<code
style="white-space: pre;">⁠U+000A⁠</code>), and carriage return (<code
style="white-space: pre;">⁠U+000D⁠</code>) special characters</p></li>
</ul>
<p>For information about key policies, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key
policies in KMS</a> in the <em>Key Management Service Developer
Guide</em>. For help writing and formatting a JSON policy document, see
the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM
JSON Policy Reference</a> in the <em>Identity and Access Management User
Guide</em> .</p></td>
</tr>
<tr class="even">
<td><code
id="kms_replicate_key_:_BypassPolicyLockoutSafetyCheck">BypassPolicyLockoutSafetyCheck</code></td>
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
<td><code id="kms_replicate_key_:_Description">Description</code></td>
<td><p>A description of the KMS key. The default value is an empty
string (no description).</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>The description is not a shared property of multi-Region keys. You
can specify the same description or a different description for each key
in a set of related multi-Region keys. KMS does not synchronize this
property.</p></td>
</tr>
<tr class="even">
<td><code id="kms_replicate_key_:_Tags">Tags</code></td>
<td><p>Assigns one or more tags to the replica key. Use this parameter
to tag the KMS key when it is created. To tag an existing KMS key, use
the <code>tag_resource</code> operation.</p>
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
<p>Tags are not a shared property of multi-Region keys. You can specify
the same tags or different tags for each key in a set of related
multi-Region keys. KMS does not synchronize this property.</p>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplicaKeyMetadata = list(
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
      ),
      ReplicaPolicy = "string",
      ReplicaTags = list(
        list(
          TagKey = "string",
          TagValue = "string"
        )
      )
    )

### Request syntax

    svc$replicate_key(
      KeyId = "string",
      ReplicaRegion = "string",
      Policy = "string",
      BypassPolicyLockoutSafetyCheck = TRUE|FALSE,
      Description = "string",
      Tags = list(
        list(
          TagKey = "string",
          TagValue = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates a multi-Region replica key in us-west-2 of a
    # multi-Region primary key in us-east-1.
    svc$replicate_key(
      KeyId = "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
      ReplicaRegion = "us-west-2"
    )

    ## End(Not run)
