<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_received_grants</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists grants that are received

### Description

Lists grants that are received. Received grants are grants created while
specifying the recipient as this Amazon Web Services account, your
organization, or an organizational unit (OU) to which this member
account belongs.

### Usage

    licensemanager_list_received_grants(GrantArns, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_received_grants_:_GrantArns">GrantArns</code></td>
<td><p>Amazon Resource Names (ARNs) of the grants.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_received_grants_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filters are
supported:</p>
<ul>
<li><p><code>ProductSKU</code></p></li>
<li><p><code>LicenseIssuerName</code></p></li>
<li><p><code>LicenseArn</code></p></li>
<li><p><code>GrantStatus</code></p></li>
<li><p><code>GranterAccountId</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_received_grants_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_received_grants_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Grants = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_received_grants(
      GrantArns = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
