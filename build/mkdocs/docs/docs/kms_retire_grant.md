<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_retire_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a grant

### Description

Deletes a grant. Typically, you retire a grant when you no longer need
its permissions. To identify the grant to retire, use a [grant
token](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token),
or both the grant ID and a key identifier (key ID or key ARN) of the KMS
key. The `create_grant` operation returns both values.

This operation can be called by the *retiring principal* for a grant, by
the *grantee principal* if the grant allows the `retire_grant`
operation, and by the Amazon Web Services account in which the grant is
created. It can also be called by principals to whom permission for
retiring a grant is delegated. For details, see [Retiring and revoking
grants](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
in the *Key Management Service Developer Guide*.

For detailed information about grants, including grant terminology, see
[Grants in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
in the *Key Management Service Developer Guide* . For examples of
working with grants in several programming languages, see [Programming
grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

**Cross-account use**: Yes. You can retire a grant on a KMS key in a
different Amazon Web Services account.

**Required permissions:**:Permission to retire a grant is determined
primarily by the grant. For details, see [Retiring and revoking
grants](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
in the *Key Management Service Developer Guide*.

**Related operations:**

-   `create_grant`

-   `list_grants`

-   `list_retirable_grants`

-   `revoke_grant`

### Usage

    kms_retire_grant(GrantToken, KeyId, GrantId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_retire_grant_:_GrantToken">GrantToken</code></td>
<td><p>Identifies the grant to be retired. You can use a grant token to
identify a new grant even before it has achieved eventual
consistency.</p>
<p>Only the <code>create_grant</code> operation returns a grant token.
For details, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant
token</a> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency">Eventual
consistency</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_retire_grant_:_KeyId">KeyId</code></td>
<td><p>The key ARN KMS key associated with the grant. To find the key
ARN, use the <code>list_keys</code> operation.</p>
<p>For example: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></td>
</tr>
<tr class="odd">
<td><code id="kms_retire_grant_:_GrantId">GrantId</code></td>
<td><p>Identifies the grant to retire. To get the grant ID, use
<code>create_grant</code>, <code>list_grants</code>, or
<code>list_retirable_grants</code>.</p>
<ul>
<li><p>Grant ID Example -
0123456789012345678901234567890123456789012345678901234567890123</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$retire_grant(
      GrantToken = "string",
      KeyId = "string",
      GrantId = "string"
    )

### Examples

    ## Not run: 
    # The following example retires a grant.
    svc$retire_grant(
      GrantId = "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60",
      KeyId = "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
