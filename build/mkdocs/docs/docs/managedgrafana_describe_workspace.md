<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_describe_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays information about one Amazon Managed Grafana workspace

### Description

Displays information about one Amazon Managed Grafana workspace.

### Usage

    managedgrafana_describe_workspace(workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_describe_workspace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to display information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      workspace = list(
        accountAccessType = "CURRENT_ACCOUNT"|"ORGANIZATION",
        authentication = list(
          providers = list(
            "AWS_SSO"|"SAML"
          ),
          samlConfigurationStatus = "CONFIGURED"|"NOT_CONFIGURED"
        ),
        created = as.POSIXct(
          "2015-01-01"
        ),
        dataSources = list(
          "AMAZON_OPENSEARCH_SERVICE"|"CLOUDWATCH"|"PROMETHEUS"|"XRAY"|"TIMESTREAM"|"SITEWISE"|"ATHENA"|"REDSHIFT"|"TWINMAKER"
        ),
        description = "string",
        endpoint = "string",
        freeTrialConsumed = TRUE|FALSE,
        freeTrialExpiration = as.POSIXct(
          "2015-01-01"
        ),
        grafanaVersion = "string",
        id = "string",
        licenseExpiration = as.POSIXct(
          "2015-01-01"
        ),
        licenseType = "ENTERPRISE"|"ENTERPRISE_FREE_TRIAL",
        modified = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        networkAccessControl = list(
          prefixListIds = list(
            "string"
          ),
          vpceIds = list(
            "string"
          )
        ),
        notificationDestinations = list(
          "SNS"
        ),
        organizationRoleName = "string",
        organizationalUnits = list(
          "string"
        ),
        permissionType = "CUSTOMER_MANAGED"|"SERVICE_MANAGED",
        stackSetName = "string",
        status = "ACTIVE"|"CREATING"|"DELETING"|"FAILED"|"UPDATING"|"UPGRADING"|"DELETION_FAILED"|"CREATION_FAILED"|"UPDATE_FAILED"|"UPGRADE_FAILED"|"LICENSE_REMOVAL_FAILED",
        tags = list(
          "string"
        ),
        vpcConfiguration = list(
          securityGroupIds = list(
            "string"
          ),
          subnetIds = list(
            "string"
          )
        ),
        workspaceRoleArn = "string"
      )
    )

### Request syntax

    svc$describe_workspace(
      workspaceId = "string"
    )
