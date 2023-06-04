<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_get_key_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a key policy attached to the specified KMS key

### Description

Gets a key policy attached to the specified KMS key.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:GetKeyPolicy](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `put_key_policy`

### Usage

    kms_get_key_policy(KeyId, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_get_key_policy_:_KeyId">KeyId</code></td>
<td><p>[required] Gets the key policy for the specified KMS key.</p>
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
<td><code id="kms_get_key_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] Specifies the name of the key policy. The only valid
name is <code>default</code>. To get the names of key policies, use
<code>list_key_policies</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string"
    )

### Request syntax

    svc$get_key_policy(
      KeyId = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves the key policy for the specified KMS
    # key.
    svc$get_key_policy(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      PolicyName = "default"
    )

    ## End(Not run)
