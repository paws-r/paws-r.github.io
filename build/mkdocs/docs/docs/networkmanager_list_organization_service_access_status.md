<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_list_organization_service_access_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the status of the Service Linked Role (SLR) deployment for the accounts in a given Amazon Web Services Organization

### Description

Gets the status of the Service Linked Role (SLR) deployment for the
accounts in a given Amazon Web Services Organization.

### Usage

    networkmanager_list_organization_service_access_status(MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_list_organization_service_access_status_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_organization_service_access_status_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationStatus = list(
        OrganizationId = "string",
        OrganizationAwsServiceAccessStatus = "string",
        SLRDeploymentStatus = "string",
        AccountStatusList = list(
          list(
            AccountId = "string",
            SLRDeploymentStatus = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_organization_service_access_status(
      MaxResults = 123,
      NextToken = "string"
    )
