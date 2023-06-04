<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_revoke_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified grant

### Description

Deletes the specified grant. You revoke a grant to terminate the
permissions that the grant allows. For more information, see [Retiring
and revoking
grants](https://docs.aws.amazon.com/kms/latest/developerguide/#grant-delete)
in the *Key Management Service Developer Guide* .

When you create, retire, or revoke a grant, there might be a brief
delay, usually less than five minutes, until the grant is available
throughout KMS. This state is known as *eventual consistency*. For
details, see [Eventual
consistency](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency)
in the *Key Management Service Developer Guide* .

For detailed information about grants, including grant terminology, see
[Grants in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
in the *Key Management Service Developer Guide* . For examples of
working with grants in several programming languages, see [Programming
grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

**Cross-account use**: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the `KeyId` parameter.

**Required permissions**:
[kms:RevokeGrant](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy).

**Related operations:**

-   `create_grant`

-   `list_grants`

-   `list_retirable_grants`

-   `retire_grant`

### Usage

    kms_revoke_grant(KeyId, GrantId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_revoke_grant_:_KeyId">KeyId</code></td>
<td><p>[required] A unique identifier for the KMS key associated with
the grant. To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p>
<p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in
a different Amazon Web Services account, you must use the key ARN.</p>
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
<td><code id="kms_revoke_grant_:_GrantId">GrantId</code></td>
<td><p>[required] Identifies the grant to revoke. To get the grant ID,
use <code>create_grant</code>, <code>list_grants</code>, or
<code>list_retirable_grants</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$revoke_grant(
      KeyId = "string",
      GrantId = "string"
    )

### Examples

    ## Not run: 
    # The following example revokes a grant.
    svc$revoke_grant(
      GrantId = "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60",
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
