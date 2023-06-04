<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_list_retirable_grants</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all grants in the Amazon Web Services account and Region that have the specified retiring principal

### Description

Returns information about all grants in the Amazon Web Services account
and Region that have the specified retiring principal.

You can specify any principal in your Amazon Web Services account. The
grants that are returned include grants for KMS keys in your Amazon Web
Services account and other Amazon Web Services accounts. You might use
this operation to determine which grants you may retire. To retire a
grant, use the `retire_grant` operation.

For detailed information about grants, including grant terminology, see
[Grants in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
in the *Key Management Service Developer Guide* . For examples of
working with grants in several programming languages, see [Programming
grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

**Cross-account use**: You must specify a principal in your Amazon Web
Services account. However, this operation can return grants in any
Amazon Web Services account. You do not need `kms:ListRetirableGrants`
permission (or any other additional permission) in any Amazon Web
Services account other than your own.

**Required permissions**:
[kms:ListRetirableGrants](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy) in your Amazon Web Services account.

**Related operations:**

-   `create_grant`

-   `list_grants`

-   `retire_grant`

-   `revoke_grant`

### Usage

    kms_list_retirable_grants(Limit, Marker, RetiringPrincipal)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_list_retirable_grants_:_Limit">Limit</code></td>
<td><p>Use this parameter to specify the maximum number of items to
return. When this value is present, KMS does not return more than the
specified number of items, but it might return fewer.</p>
<p>This value is optional. If you include a value, it must be between 1
and 100, inclusive. If you do not include a value, it defaults to
50.</p></td>
</tr>
<tr class="even">
<td><code id="kms_list_retirable_grants_:_Marker">Marker</code></td>
<td><p>Use this parameter in a subsequent request after you receive a
response with truncated results. Set it to the value of
<code>NextMarker</code> from the truncated response you just
received.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_list_retirable_grants_:_RetiringPrincipal">RetiringPrincipal</code></td>
<td><p>[required] The retiring principal for which to list grants. Enter
a principal in your Amazon Web Services account.</p>
<p>To specify the retiring principal, use the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of an Amazon Web Services principal. Valid
principals include Amazon Web Services accounts, IAM users, IAM roles,
federated users, and assumed role users. For help with the ARN syntax
for a principal, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
ARNs</a> in the <em>Identity and Access Management User Guide</em>
.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Grants = list(
        list(
          KeyId = "string",
          GrantId = "string",
          Name = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          GranteePrincipal = "string",
          RetiringPrincipal = "string",
          IssuingAccount = "string",
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
          )
        )
      ),
      NextMarker = "string",
      Truncated = TRUE|FALSE
    )

### Request syntax

    svc$list_retirable_grants(
      Limit = 123,
      Marker = "string",
      RetiringPrincipal = "string"
    )

### Examples

    ## Not run: 
    # The following example lists the grants that the specified principal
    # (identity) can retire.
    svc$list_retirable_grants(
      RetiringPrincipal = "arn:aws:iam::111122223333:role/ExampleRole"
    )

    ## End(Not run)
