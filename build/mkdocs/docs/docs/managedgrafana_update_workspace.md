<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_update_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an existing Amazon Managed Grafana workspace

### Description

Modifies an existing Amazon Managed Grafana workspace. If you use this
operation and omit any optional parameters, the existing values of those
parameters are not changed.

To modify the user authentication methods that the workspace uses, such
as SAML or IAM Identity Center, use `update_workspace_authentication`.

To modify which users in the workspace have the `Admin` and `Editor`
Grafana roles, use `update_permissions`.

### Usage

    managedgrafana_update_workspace(accountAccessType, networkAccessControl,
      organizationRoleName, permissionType, removeNetworkAccessConfiguration,
      removeVpcConfiguration, stackSetName, vpcConfiguration,
      workspaceDataSources, workspaceDescription, workspaceId, workspaceName,
      workspaceNotificationDestinations, workspaceOrganizationalUnits,
      workspaceRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_accountAccessType">accountAccessType</code></td>
<td><p>Specifies whether the workspace can access Amazon Web Services
resources in this Amazon Web Services account only, or whether it can
also access Amazon Web Services resources in other accounts in the same
organization. If you specify <code>ORGANIZATION</code>, you must specify
which organizational units the workspace can access in the
<code>workspaceOrganizationalUnits</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_networkAccessControl">networkAccessControl</code></td>
<td><p>The configuration settings for network access to your
workspace.</p>
<p>When this is configured, only listed IP addresses and VPC endpoints
will be able to access your workspace. Standard Grafana authentication
and authorization will still be required.</p>
<p>If this is not configured, or is removed, then all IP addresses and
VPC endpoints will be allowed. Standard Grafana authentication and
authorization will still be required.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_organizationRoleName">organizationRoleName</code></td>
<td><p>The name of an IAM role that already exists to use to access
resources through Organizations. This can only be used with a workspace
that has the <code>permissionType</code> set to
<code>CUSTOMER_MANAGED</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_permissionType">permissionType</code></td>
<td><p>Use this parameter if you want to change a workspace from
<code>SERVICE_MANAGED</code> to <code>CUSTOMER_MANAGED</code>. This
allows you to manage the permissions that the workspace uses to access
datasources and notification channels. If the workspace is in a member
Amazon Web Services account of an organization, and that account is not
a delegated administrator account, and you want the workspace to access
data sources in other Amazon Web Services accounts in the organization,
you must choose <code>CUSTOMER_MANAGED</code>.</p>
<p>If you specify this as <code>CUSTOMER_MANAGED</code>, you must also
specify a <code>workspaceRoleArn</code> that the workspace will use for
accessing Amazon Web Services resources.</p>
<p>For more information on the role and permissions needed, see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon
Managed Grafana permissions and policies for Amazon Web Services data
sources and notification channels</a></p>
<p>Do not use this to convert a <code>CUSTOMER_MANAGED</code> workspace
to <code>SERVICE_MANAGED</code>. Do not include this parameter if you
want to leave the workspace as <code>SERVICE_MANAGED</code>.</p>
<p>You can convert a <code>CUSTOMER_MANAGED</code> workspace to
<code>SERVICE_MANAGED</code> using the Amazon Managed Grafana console.
For more information, see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html">Managing
permissions for data sources and notification channels</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_removeNetworkAccessConfiguration">removeNetworkAccessConfiguration</code></td>
<td><p>Whether to remove the network access configuration from the
workspace.</p>
<p>Setting this to <code>true</code> and providing a
<code>networkAccessControl</code> to set will return an error.</p>
<p>If you remove this configuration by setting this to
<code>true</code>, then all IP addresses and VPC endpoints will be
allowed. Standard Grafana authentication and authorization will still be
required.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_removeVpcConfiguration">removeVpcConfiguration</code></td>
<td><p>Whether to remove the VPC configuration from the workspace.</p>
<p>Setting this to <code>true</code> and providing a
<code>vpcConfiguration</code> to set will return an error.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_stackSetName">stackSetName</code></td>
<td><p>The name of the CloudFormation stack set to use to generate IAM
roles to be used for this workspace.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_vpcConfiguration">vpcConfiguration</code></td>
<td><p>The configuration settings for an Amazon VPC that contains data
sources for your Grafana workspace to connect to.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_workspaceDataSources">workspaceDataSources</code></td>
<td><p>This parameter is for internal use only, and should not be
used.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_workspaceDescription">workspaceDescription</code></td>
<td><p>A description for the workspace. This is used only to help you
identify this workspace.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to update.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_workspaceName">workspaceName</code></td>
<td><p>A new name for the workspace to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_workspaceNotificationDestinations">workspaceNotificationDestinations</code></td>
<td><p>Specify the Amazon Web Services notification channels that you
plan to use in this workspace. Specifying these data sources here
enables Amazon Managed Grafana to create IAM roles and permissions that
allow Amazon Managed Grafana to use these channels.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_:_workspaceOrganizationalUnits">workspaceOrganizationalUnits</code></td>
<td><p>Specifies the organizational units that this workspace is allowed
to use data sources from, if this workspace is in an account that is
part of an organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_:_workspaceRoleArn">workspaceRoleArn</code></td>
<td><p>Specifies an IAM role that grants permissions to Amazon Web
Services resources that the workspace accesses, such as data sources and
notification channels. If this workspace has <code>permissionType</code>
<code>CUSTOMER_MANAGED</code>, then this role is required.</p></td>
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

    svc$update_workspace(
      accountAccessType = "CURRENT_ACCOUNT"|"ORGANIZATION",
      networkAccessControl = list(
        prefixListIds = list(
          "string"
        ),
        vpceIds = list(
          "string"
        )
      ),
      organizationRoleName = "string",
      permissionType = "CUSTOMER_MANAGED"|"SERVICE_MANAGED",
      removeNetworkAccessConfiguration = TRUE|FALSE,
      removeVpcConfiguration = TRUE|FALSE,
      stackSetName = "string",
      vpcConfiguration = list(
        securityGroupIds = list(
          "string"
        ),
        subnetIds = list(
          "string"
        )
      ),
      workspaceDataSources = list(
        "AMAZON_OPENSEARCH_SERVICE"|"CLOUDWATCH"|"PROMETHEUS"|"XRAY"|"TIMESTREAM"|"SITEWISE"|"ATHENA"|"REDSHIFT"|"TWINMAKER"
      ),
      workspaceDescription = "string",
      workspaceId = "string",
      workspaceName = "string",
      workspaceNotificationDestinations = list(
        "SNS"
      ),
      workspaceOrganizationalUnits = list(
        "string"
      ),
      workspaceRoleArn = "string"
    )
