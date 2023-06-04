<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_update_primary_region</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the primary key of a multi-Region key

### Description

Changes the primary key of a multi-Region key.

This operation changes the replica key in the specified Region to a
primary key and changes the former primary key to a replica key. For
example, suppose you have a primary key in `us-east-1` and a replica key
in `eu-west-2`. If you run `update_primary_region` with a
`PrimaryRegion` value of `eu-west-2`, the primary key is now the key in
`eu-west-2`, and the key in `us-east-1` becomes a replica key. For
details, see [Updating the primary
Region](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-update)
in the *Key Management Service Developer Guide*.

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

The *primary key* of a multi-Region key is the source for properties
that are always shared by primary and replica keys, including the key
material, [key
ID](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id),
[key
spec](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
[key
usage](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
[key material
origin](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
and [automatic key
rotation](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
It's the only key that can be replicated. You cannot [delete the primary
key](https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html)
until all replica keys are deleted.

The key ID and primary Region that you specify uniquely identify the
replica key that will become the primary key. The primary Region must
already have a replica key. This operation does not create a KMS key in
the specified Region. To find the replica keys, use the `describe_key`
operation on the primary key or any replica key. To create a replica
key, use the `replicate_key` operation.

You can run this operation while using the affected multi-Region keys in
cryptographic operations. This operation should not delay, interrupt, or
cause failures in cryptographic operations.

Even after this operation completes, the process of updating the primary
Region might still be in progress for a few more seconds. Operations
such as `describe_key` might display both the old and new primary keys
as replicas. The old and new primary keys have a transient key state of
`Updating`. The original key state is restored when the update is
complete. While the key state is `Updating`, you can use the keys in
cryptographic operations, but you cannot replicate the new primary key
or perform certain management operations, such as enabling or disabling
these keys. For details about the `Updating` key state, see [Key states
of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

This operation does not return any output. To verify that primary key is
changed, use the `describe_key` operation.

**Cross-account use**: No. You cannot use this operation in a different
Amazon Web Services account.

**Required permissions**:

-   `kms:UpdatePrimaryRegion` on the current primary key (in the primary
    key's Region). Include this permission primary key's key policy.

-   `kms:UpdatePrimaryRegion` on the current replica key (in the replica
    key's Region). Include this permission in the replica key's key
    policy.

**Related operations**

-   `create_key`

-   `replicate_key`

### Usage

    kms_update_primary_region(KeyId, PrimaryRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_update_primary_region_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the current primary key. When the operation
completes, this KMS key will be a replica key.</p>
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
id="kms_update_primary_region_:_PrimaryRegion">PrimaryRegion</code></td>
<td><p>[required] The Amazon Web Services Region of the new primary key.
Enter the Region ID, such as <code>us-east-1</code> or
<code>ap-southeast-2</code>. There must be an existing replica key in
this Region.</p>
<p>When the operation completes, the multi-Region key in this Region
will be the primary key.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_primary_region(
      KeyId = "string",
      PrimaryRegion = "string"
    )

### Examples

    ## Not run: 
    # The following UpdatePrimaryRegion example changes the multi-Region
    # replica key in the eu-central-1 Region to the primary key. The current
    # primary key in the us-west-1 Region becomes a replica key.
    # 
    # The KeyId
    # parameter identifies the current primary key in the us-west-1 Region.
    # The PrimaryRegion parameter indicates the Region of the replica key that
    # will become the new primary key.
    # 
    # This operation does not return any
    # output. To verify that primary key is changed, use the DescribeKey
    # operation.
    svc$update_primary_region(
      KeyId = "arn:aws:kms:us-west-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
      PrimaryRegion = "eu-central-1"
    )

    ## End(Not run)
