<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_create_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a grant to a KMS key

### Description

Adds a grant to a KMS key.

A *grant* is a policy instrument that allows Amazon Web Services
principals to use KMS keys in cryptographic operations. It also can
allow them to view a KMS key (`describe_key`) and create and manage
grants. When authorizing access to a KMS key, grants are considered
along with key policies and IAM policies. Grants are often used for
temporary permissions because you can create one, use its permissions,
and delete it without changing your key policies or IAM policies.

For detailed information about grants, including grant terminology, see
[Grants in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
in the *Key Management Service Developer Guide* . For examples of
working with grants in several programming languages, see [Programming
grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

The `create_grant` operation returns a `GrantToken` and a `GrantId`.

-   When you create, retire, or revoke a grant, there might be a brief
    delay, usually less than five minutes, until the grant is available
    throughout KMS. This state is known as *eventual consistency*. Once
    the grant has achieved eventual consistency, the grantee principal
    can use the permissions in the grant without identifying the grant.

    However, to use the permissions in the grant immediately, use the
    `GrantToken` that `create_grant` returns. For details, see [Using a
    grant
    token](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token)
    in the *Key Management Service Developer Guide* .

-   The `create_grant` operation also returns a `GrantId`. You can use
    the `GrantId` and a key identifier to identify the grant in the
    `retire_grant` and `revoke_grant` operations. To find the grant ID,
    use the `list_grants` or `list_retirable_grants` operations.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the `KeyId` parameter.

**Required permissions**:
[kms:CreateGrant](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `list_grants`

-   `list_retirable_grants`

-   `retire_grant`

-   `revoke_grant`

### Usage

    kms_create_grant(KeyId, GranteePrincipal, RetiringPrincipal, Operations,
      Constraints, GrantTokens, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_create_grant_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key for the grant. The grant gives
principals permission to use this KMS key.</p>
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
<td><code
id="kms_create_grant_:_GranteePrincipal">GranteePrincipal</code></td>
<td><p>[required] The identity that gets the permissions specified in
the grant.</p>
<p>To specify the grantee principal, use the Amazon Resource Name (ARN)
of an Amazon Web Services principal. Valid principals include Amazon Web
Services accounts, IAM users, IAM roles, federated users, and assumed
role users. For help with the ARN syntax for a principal, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
ARNs</a> in the <em>Identity and Access Management User Guide</em>
.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_create_grant_:_RetiringPrincipal">RetiringPrincipal</code></td>
<td><p>The principal that has permission to use the
<code>retire_grant</code> operation to retire the grant.</p>
<p>To specify the principal, use the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of an Amazon Web Services principal. Valid
principals include Amazon Web Services accounts, IAM users, IAM roles,
federated users, and assumed role users. For help with the ARN syntax
for a principal, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
ARNs</a> in the <em>Identity and Access Management User Guide</em> .</p>
<p>The grant determines the retiring principal. Other principals might
have permission to retire the grant or revoke the grant. For details,
see <code>revoke_grant</code> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete">Retiring
and revoking grants</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_create_grant_:_Operations">Operations</code></td>
<td><p>[required] A list of operations that the grant permits.</p>
<p>This list must include only operations that are permitted in a grant.
Also, the operation must be supported on the KMS key. For example, you
cannot create a grant for a symmetric encryption KMS key that allows the
<code>sign</code> operation, or a grant for an asymmetric KMS key that
allows the <code>generate_data_key</code> operation. If you try, KMS
returns a <code>ValidationError</code> exception. For details, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations">Grant
operations</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_create_grant_:_Constraints">Constraints</code></td>
<td><p>Specifies a grant constraint.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>KMS supports the <code>EncryptionContextEquals</code> and
<code>EncryptionContextSubset</code> grant constraints, which allow the
permissions in the grant only when the encryption context in the request
matches (<code>EncryptionContextEquals</code>) or includes
(<code>EncryptionContextSubset</code>) the encryption context specified
in the constraint.</p>
<p>The encryption context grant constraints are supported only on <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations">grant
operations</a> that include an <code>EncryptionContext</code> parameter,
such as cryptographic operations on symmetric encryption KMS keys.
Grants with grant constraints can include the <code>describe_key</code>
and <code>retire_grant</code> operations, but the constraint doesn't
apply to these operations. If a grant with a grant constraint includes
the <code>create_grant</code> operation, the constraint requires that
any grants created with the <code>create_grant</code> permission have an
equally strict or stricter encryption context constraint.</p>
<p>You cannot use an encryption context grant constraint for
cryptographic operations with asymmetric KMS keys or HMAC KMS keys.
Operations with these keys don't support an encryption context.</p>
<p>Each constraint value can include up to 8 encryption context pairs.
The encryption context value in each constraint cannot exceed 384
characters. For information about grant constraints, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-grant-overview.html#grant-constraints">Using
grant constraints</a> in the <em>Key Management Service Developer
Guide</em>. For more information about encryption context, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
context</a> in the <em>Key Management Service Developer Guide</em>
.</p></td>
</tr>
<tr class="even">
<td><code id="kms_create_grant_:_GrantTokens">GrantTokens</code></td>
<td><p>A list of grant tokens.</p>
<p>Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved <em>eventual
consistency</em>. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant
token</a> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using
a grant token</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_create_grant_:_Name">Name</code></td>
<td><p>A friendly name for the grant. Use this value to prevent the
unintended creation of duplicate grants when retrying this request.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>When this value is absent, all <code>create_grant</code> requests
result in a new grant with a unique <code>GrantId</code> even if all the
supplied parameters are identical. This can result in unintended
duplicates when you retry the <code>create_grant</code> request.</p>
<p>When this value is present, you can retry a <code>create_grant</code>
request with identical parameters; if the grant already exists, the
original <code>GrantId</code> is returned without creating a new grant.
Note that the returned grant token is unique with every
<code>create_grant</code> request, even when a duplicate
<code>GrantId</code> is returned. All grant tokens for the same grant ID
can be used interchangeably.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GrantToken = "string",
      GrantId = "string"
    )

### Request syntax

    svc$create_grant(
      KeyId = "string",
      GranteePrincipal = "string",
      RetiringPrincipal = "string",
      Operations = list(
        "Decrypt"|"Encrypt"|"GenerateDataKey"|"GenerateDataKeyWithoutPlaintext"|"ReEncryptFrom"|"ReEncryptTo"|"Sign"|"Verify"|"GetPublicKey"|"CreateGrant"|"RetireGrant"|"DescribeKey"|"GenerateDataKeyPair"|"GenerateDataKeyPairWithoutPlaintext"|"GenerateMac"|"VerifyMac"
      ),
      Constraints = list(
        EncryptionContextSubset = list(
          "string"
        ),
        EncryptionContextEquals = list(
          "string"
        )
      ),
      GrantTokens = list(
        "string"
      ),
      Name = "string"
    )

### Examples

    ## Not run: 
    # The following example creates a grant that allows the specified IAM role
    # to encrypt data with the specified KMS key.
    svc$create_grant(
      GranteePrincipal = "arn:aws:iam::111122223333:role/ExampleRole",
      KeyId = "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
      Operations = list(
        "Encrypt",
        "Decrypt"
      )
    )

    ## End(Not run)
