<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_start_organization_service_access_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the Network Manager service for an Amazon Web Services Organization

### Description

Enables the Network Manager service for an Amazon Web Services
Organization. This can only be called by a management account within the
organization.

### Usage

    networkmanager_start_organization_service_access_update(Action)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_start_organization_service_access_update_:_Action">Action</code></td>
<td><p>[required] The action to take for the update request. This can be
either <code>ENABLE</code> or <code>DISABLE</code>.</p></td>
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
      )
    )

### Request syntax

    svc$start_organization_service_access_update(
      Action = "string"
    )
