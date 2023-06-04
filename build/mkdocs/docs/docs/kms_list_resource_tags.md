<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_list_resource_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all tags on the specified KMS key

### Description

Returns all tags on the specified KMS key.

For general information about tags, including the format and syntax, see
[Tagging Amazon Web Services
resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the *Amazon Web Services General Reference*. For information about
using tags in KMS, see [Tagging
keys](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:ListResourceTags](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `create_key`

-   `replicate_key`

-   `tag_resource`

-   `untag_resource`

### Usage

    kms_list_resource_tags(KeyId, Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_list_resource_tags_:_KeyId">KeyId</code></td>
<td><p>[required] Gets tags on the specified KMS key.</p>
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
<td><code id="kms_list_resource_tags_:_Limit">Limit</code></td>
<td><p>Use this parameter to specify the maximum number of items to
return. When this value is present, KMS does not return more than the
specified number of items, but it might return fewer.</p>
<p>This value is optional. If you include a value, it must be between 1
and 50, inclusive. If you do not include a value, it defaults to
50.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_list_resource_tags_:_Marker">Marker</code></td>
<td><p>Use this parameter in a subsequent request after you receive a
response with truncated results. Set it to the value of
<code>NextMarker</code> from the truncated response you just
received.</p>
<p>Do not attempt to construct this value. Use only the value of
<code>NextMarker</code> from the truncated response you just
received.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          TagKey = "string",
          TagValue = "string"
        )
      ),
      NextMarker = "string",
      Truncated = TRUE|FALSE
    )

### Request syntax

    svc$list_resource_tags(
      KeyId = "string",
      Limit = 123,
      Marker = "string"
    )

### Examples

    ## Not run: 
    # The following example lists tags for a KMS key.
    svc$list_resource_tags(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
