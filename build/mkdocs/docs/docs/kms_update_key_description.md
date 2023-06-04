<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_update_key_description</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description of a KMS key

### Description

Updates the description of a KMS key. To see the description of a KMS
key, use `describe_key`.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:UpdateKeyDescription](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**

-   `create_key`

-   `describe_key`

### Usage

    kms_update_key_description(KeyId, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_update_key_description_:_KeyId">KeyId</code></td>
<td><p>[required] Updates the description of the specified KMS key.</p>
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
<td><code
id="kms_update_key_description_:_Description">Description</code></td>
<td><p>[required] New description for the KMS key.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_key_description(
      KeyId = "string",
      Description = "string"
    )

### Examples

    ## Not run: 
    # The following example updates the description of the specified KMS key.
    svc$update_key_description(
      Description = "Example description that indicates the intended use of this KMS key.",
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
