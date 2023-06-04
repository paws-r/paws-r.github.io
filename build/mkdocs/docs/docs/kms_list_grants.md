<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_list_grants</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all grants for the specified KMS key

### Description

Gets a list of all grants for the specified KMS key.

You must specify the KMS key in all requests. You can filter the grant
list by grant ID or grantee principal.

For detailed information about grants, including grant terminology, see
[Grants in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
in the *Key Management Service Developer Guide* . For examples of
working with grants in several programming languages, see [Programming
grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

The `GranteePrincipal` field in the `list_grants` response usually
contains the user or role designated as the grantee principal in the
grant. However, when the grantee principal in the grant is an Amazon Web
Services service, the `GranteePrincipal` field contains the [service
principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services),
which might represent several different grantee principals.

**Cross-account use**: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the `KeyId` parameter.

**Required permissions**:
[kms:ListGrants](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `create_grant`

-   `list_retirable_grants`

-   `retire_grant`

-   `revoke_grant`

### Usage

    kms_list_grants(Limit, Marker, KeyId, GrantId, GranteePrincipal)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_list_grants_:_Limit">Limit</code></td>
<td><p>Use this parameter to specify the maximum number of items to
return. When this value is present, KMS does not return more than the
specified number of items, but it might return fewer.</p>
<p>This value is optional. If you include a value, it must be between 1
and 100, inclusive. If you do not include a value, it defaults to
50.</p></td>
</tr>
<tr class="even">
<td><code id="kms_list_grants_:_Marker">Marker</code></td>
<td><p>Use this parameter in a subsequent request after you receive a
response with truncated results. Set it to the value of
<code>NextMarker</code> from the truncated response you just
received.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_list_grants_:_KeyId">KeyId</code></td>
<td><p>[required] Returns only grants for the specified KMS key. This
parameter is required.</p>
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
<td><code id="kms_list_grants_:_GrantId">GrantId</code></td>
<td><p>Returns only the grant with the specified grant ID. The grant ID
uniquely identifies the grant.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_list_grants_:_GranteePrincipal">GranteePrincipal</code></td>
<td><p>Returns only grants where the specified principal is the grantee
principal for the grant.</p></td>
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

    svc$list_grants(
      Limit = 123,
      Marker = "string",
      KeyId = "string",
      GrantId = "string",
      GranteePrincipal = "string"
    )

### Examples

    ## Not run: 
    # The following example lists grants for the specified KMS key.
    svc$list_grants(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
