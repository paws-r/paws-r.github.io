<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_assume_decorated_role_with_saml</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows a caller to assume an IAM role decorated as the SAML user specified in the SAML assertion included in the request

### Description

Allows a caller to assume an IAM role decorated as the SAML user
specified in the SAML assertion included in the request. This decoration
allows Lake Formation to enforce access policies against the SAML users
and groups. This API operation requires SAML federation setup in the
caller’s account as it can only be called with valid SAML assertions.
Lake Formation does not scope down the permission of the assumed role.
All permissions attached to the role via the SAML federation setup will
be included in the role session.

This decorated role is expected to access data in Amazon S3 by getting
temporary access from Lake Formation which is authorized via the virtual
API `GetDataAccess`. Therefore, all SAML roles that can be assumed via
`assume_decorated_role_with_saml` must at a minimum include
`lakeformation:GetDataAccess` in their role policies. A typical IAM
policy attached to such a role would look as follows:

### Usage

    lakeformation_assume_decorated_role_with_saml(SAMLAssertion, RoleArn,
      PrincipalArn, DurationSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_assume_decorated_role_with_saml_:_SAMLAssertion">SAMLAssertion</code></td>
<td><p>[required] A SAML assertion consisting of an assertion statement
for the user who needs temporary credentials. This must match the SAML
assertion that was issued to IAM. This must be Base64 encoded.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_assume_decorated_role_with_saml_:_RoleArn">RoleArn</code></td>
<td><p>[required] The role that represents an IAM principal whose scope
down policy allows it to call credential vending APIs such as
<code>GetTemporaryTableCredentials</code>. The caller must also have
iam:PassRole permission on this role.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_assume_decorated_role_with_saml_:_PrincipalArn">PrincipalArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the SAML provider in
IAM that describes the IdP.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_assume_decorated_role_with_saml_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The time period, between 900 and 43,200 seconds, for the timeout
of the temporary credentials.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessKeyId = "string",
      SecretAccessKey = "string",
      SessionToken = "string",
      Expiration = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$assume_decorated_role_with_saml(
      SAMLAssertion = "string",
      RoleArn = "string",
      PrincipalArn = "string",
      DurationSeconds = 123
    )
