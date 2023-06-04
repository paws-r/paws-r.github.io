<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a grant for the specified license

### Description

Creates a grant for the specified license. A grant shares the use of
license entitlements with a specific Amazon Web Services account, an
organization, or an organizational unit (OU). For more information, see
[Granted licenses in License
Manager](https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html)
in the *License Manager User Guide*.

### Usage

    licensemanager_create_grant(ClientToken, GrantName, LicenseArn,
      Principals, HomeRegion, AllowedOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_grant_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_:_GrantName">GrantName</code></td>
<td><p>[required] Grant name.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_grant_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_:_Principals">Principals</code></td>
<td><p>[required] The grant principals. You can specify one of the
following as an Amazon Resource Name (ARN):</p>
<ul>
<li><p>An Amazon Web Services account, which includes only the account
specified.</p></li>
<li><p>An organizational unit (OU), which includes all accounts in the
OU.</p></li>
<li><p>An organization, which will include all accounts across your
organization.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_grant_:_HomeRegion">HomeRegion</code></td>
<td><p>[required] Home Region of the grant.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_:_AllowedOperations">AllowedOperations</code></td>
<td><p>[required] Allowed operations for the grant.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GrantArn = "string",
      Status = "PENDING_WORKFLOW"|"PENDING_ACCEPT"|"REJECTED"|"ACTIVE"|"FAILED_WORKFLOW"|"DELETED"|"PENDING_DELETE"|"DISABLED"|"WORKFLOW_COMPLETED",
      Version = "string"
    )

### Request syntax

    svc$create_grant(
      ClientToken = "string",
      GrantName = "string",
      LicenseArn = "string",
      Principals = list(
        "string"
      ),
      HomeRegion = "string",
      AllowedOperations = list(
        "CreateGrant"|"CheckoutLicense"|"CheckoutBorrowLicense"|"CheckInLicense"|"ExtendConsumptionLicense"|"ListPurchasedLicenses"|"CreateToken"
      )
    )
