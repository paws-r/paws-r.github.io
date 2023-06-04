<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes tags from a customer managed key

### Description

Deletes tags from a [customer managed
key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
To delete a tag, specify the tag key and the KMS key.

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see [ABAC for
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the *Key Management Service Developer Guide*.

When it succeeds, the `untag_resource` operation doesn't return any
output. Also, if the specified tag key isn't found on the KMS key, it
doesn't throw an exception or return a response. To confirm that the
operation worked, use the `list_resource_tags` operation.

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
[kms:UntagResource](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**

-   `create_key`

-   `list_resource_tags`

-   `replicate_key`

-   `tag_resource`

### Usage

    kms_untag_resource(KeyId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_untag_resource_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key from which you are removing
tags.</p>
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
<td><code id="kms_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] One or more tag keys. Specify only the tag keys, not
the tag values.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      KeyId = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example removes tags from a KMS key.
    svc$untag_resource(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      TagKeys = list(
        "Purpose",
        "CostCenter"
      )
    )

    ## End(Not run)
