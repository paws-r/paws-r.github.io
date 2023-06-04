<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_grant_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of the specified grant

### Description

Creates a new version of the specified grant. For more information, see
[Granted licenses in License
Manager](https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html)
in the *License Manager User Guide*.

### Usage

    licensemanager_create_grant_version(ClientToken, GrantArn, GrantName,
      AllowedOperations, Status, StatusReason, SourceVersion, Options)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_grant_version_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_version_:_GrantArn">GrantArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the grant.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_grant_version_:_GrantName">GrantName</code></td>
<td><p>Grant name.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_version_:_AllowedOperations">AllowedOperations</code></td>
<td><p>Allowed operations for the grant.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_grant_version_:_Status">Status</code></td>
<td><p>Grant status.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_version_:_StatusReason">StatusReason</code></td>
<td><p>Grant status reason.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_grant_version_:_SourceVersion">SourceVersion</code></td>
<td><p>Current version of the grant.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_grant_version_:_Options">Options</code></td>
<td><p>The options specified for the grant.</p></td>
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

    svc$create_grant_version(
      ClientToken = "string",
      GrantArn = "string",
      GrantName = "string",
      AllowedOperations = list(
        "CreateGrant"|"CheckoutLicense"|"CheckoutBorrowLicense"|"CheckInLicense"|"ExtendConsumptionLicense"|"ListPurchasedLicenses"|"CreateToken"
      ),
      Status = "PENDING_WORKFLOW"|"PENDING_ACCEPT"|"REJECTED"|"ACTIVE"|"FAILED_WORKFLOW"|"DELETED"|"PENDING_DELETE"|"DISABLED"|"WORKFLOW_COMPLETED",
      StatusReason = "string",
      SourceVersion = "string",
      Options = list(
        ActivationOverrideBehavior = "DISTRIBUTED_GRANTS_ONLY"|"ALL_GRANTS_PERMITTED_BY_ISSUER"
      )
    )
