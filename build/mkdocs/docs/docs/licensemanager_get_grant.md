<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information about the specified grant

### Description

Gets detailed information about the specified grant.

### Usage

    licensemanager_get_grant(GrantArn, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="licensemanager_get_grant_:_GrantArn">GrantArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the grant.</p></td>
</tr>
<tr class="even">
<td><code id="licensemanager_get_grant_:_Version">Version</code></td>
<td><p>Grant version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Grant = list(
        GrantArn = "string",
        GrantName = "string",
        ParentArn = "string",
        LicenseArn = "string",
        GranteePrincipalArn = "string",
        HomeRegion = "string",
        GrantStatus = "PENDING_WORKFLOW"|"PENDING_ACCEPT"|"REJECTED"|"ACTIVE"|"FAILED_WORKFLOW"|"DELETED"|"PENDING_DELETE"|"DISABLED"|"WORKFLOW_COMPLETED",
        StatusReason = "string",
        Version = "string",
        GrantedOperations = list(
          "CreateGrant"|"CheckoutLicense"|"CheckoutBorrowLicense"|"CheckInLicense"|"ExtendConsumptionLicense"|"ListPurchasedLicenses"|"CreateToken"
        ),
        Options = list(
          ActivationOverrideBehavior = "DISTRIBUTED_GRANTS_ONLY"|"ALL_GRANTS_PERMITTED_BY_ISSUER"
        )
      )
    )

### Request syntax

    svc$get_grant(
      GrantArn = "string",
      Version = "string"
    )
