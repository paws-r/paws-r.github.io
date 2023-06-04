<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or edits tags on a customer managed key

### Description

Adds or edits tags on a [customer managed
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see [ABAC for
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the *Key Management Service Developer Guide*.

Each tag consists of a tag key and a tag value, both of which are
case-sensitive strings. The tag value can be an empty (null) string. To
add a tag, specify a new tag key and a tag value. To edit a tag, specify
an existing tag key and a new tag value.

You can use this operation to tag a [customer managed
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
but you cannot tag an [Amazon Web Services managed
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk),
an [Amazon Web Services owned
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk),
a [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#keystore-concept),
or an
[alias](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#alias-concept).

You can also add tags to a KMS key while creating it (`create_key`) or
replicating it (`replicate_key`).

For information about using tags in KMS, see [Tagging
keys](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).
For general information about tags, including the format and syntax, see
[Tagging Amazon Web Services
resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the *Amazon Web Services General Reference*.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:TagResource](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**

-   `create_key`

-   `list_resource_tags`

-   `replicate_key`

-   `untag_resource`

### Usage

    kms_tag_resource(KeyId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_tag_resource_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies a customer managed key in the account and
Region.</p>
<p>Specify the key ID or key ARN of the KMS key.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] One or more tags. Each tag consists of a tag key and a
tag value. The tag value can be an empty (null) string.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>You cannot have more than one tag on a KMS key with the same tag key.
If you specify an existing tag key with a different tag value, KMS
replaces the current tag value with the specified one.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      KeyId = "string",
      Tags = list(
        list(
          TagKey = "string",
          TagValue = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example tags a KMS key.
    svc$tag_resource(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      Tags = list(
        list(
          TagKey = "Purpose",
          TagValue = "Test"
        )
      )
    )

    ## End(Not run)
