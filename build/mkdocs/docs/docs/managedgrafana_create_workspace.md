<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_create_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a workspace

### Description

Creates a *workspace*. In a workspace, you can create Grafana dashboards
and visualizations to analyze your metrics, logs, and traces. You don't
have to build, package, or deploy any hardware to run the Grafana
server.

Don't use `create_workspace` to modify an existing workspace. Instead,
use `update_workspace`.

### Usage

    managedgrafana_create_workspace(accountAccessType,
      authenticationProviders, clientToken, configuration, grafanaVersion,
      networkAccessControl, organizationRoleName, permissionType,
      stackSetName, tags, vpcConfiguration, workspaceDataSources,
      workspaceDescription, workspaceName, workspaceNotificationDestinations,
      workspaceOrganizationalUnits, workspaceRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_accountAccessType">accountAccessType</code></td>
<td><p>[required] Specifies whether the workspace can access Amazon Web
Services resources in this Amazon Web Services account only, or whether
it can also access Amazon Web Services resources in other accounts in
the same organization. If you specify <code>ORGANIZATION</code>, you
must specify which organizational units the workspace can access in the
<code>workspaceOrganizationalUnits</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_authenticationProviders">authenticationProviders</code></td>
<td><p>[required] Specifies whether this workspace uses SAML 2.0, IAM
Identity Center (successor to Single Sign-On), or both to authenticate
users for using the Grafana console within a workspace. For more
information, see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User
authentication in Amazon Managed Grafana</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive, user-provided identifier to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_configuration">configuration</code></td>
<td><p>The configuration string for the workspace that you create. For
more information about the format and configuration options available,
see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working
in your Grafana workspace</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_grafanaVersion">grafanaVersion</code></td>
<td><p>Specifies the version of Grafana to support in the new
workspace.</p>
<p>Supported values are <code>8.4</code> and <code>9.4</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_networkAccessControl">networkAccessControl</code></td>
<td><p>Configuration for network access to your workspace.</p>
<p>When this is configured, only listed IP addresses and VPC endpoints
will be able to access your workspace. Standard Grafana authentication
and authorization will still be required.</p>
<p>If this is not configured, or is removed, then all IP addresses and
VPC endpoints will be allowed. Standard Grafana authentication and
authorization will still be required.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_organizationRoleName">organizationRoleName</code></td>
<td><p>The name of an IAM role that already exists to use with
Organizations to access Amazon Web Services data sources and
notification channels in other accounts in an organization.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_permissionType">permissionType</code></td>
<td><p>[required] When creating a workspace through the Amazon Web
Services API, CLI or Amazon Web Services CloudFormation, you must manage
IAM roles and provision the permissions that the workspace needs to use
Amazon Web Services data sources and notification channels.</p>
<p>You must also specify a <code>workspaceRoleArn</code> for a role that
you will manage for the workspace to use when accessing those
datasources and notification channels.</p>
<p>The ability for Amazon Managed Grafana to create and update IAM roles
on behalf of the user is supported only in the Amazon Managed Grafana
console, where this value may be set to
<code>SERVICE_MANAGED</code>.</p>
<p>Use only the <code>CUSTOMER_MANAGED</code> permission type when
creating a workspace with the API, CLI or Amazon Web Services
CloudFormation.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon
Managed Grafana permissions and policies for Amazon Web Services data
sources and notification channels</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_stackSetName">stackSetName</code></td>
<td><p>The name of the CloudFormation stack set to use to generate IAM
roles to be used for this workspace.</p></td>
</tr>
<tr class="even">
<td><code id="managedgrafana_create_workspace_:_tags">tags</code></td>
<td><p>The list of tags associated with the workspace.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_vpcConfiguration">vpcConfiguration</code></td>
<td><p>The configuration settings for an Amazon VPC that contains data
sources for your Grafana workspace to connect to.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_workspaceDataSources">workspaceDataSources</code></td>
<td><p>This parameter is for internal use only, and should not be
used.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_workspaceDescription">workspaceDescription</code></td>
<td><p>A description for the workspace. This is used only to help you
identify this workspace.</p>
<p>Pattern: <code
style="white-space: pre;">⁠^[\\p{L}\\p{Z}\\p{N}\\p{P}]{0,2048}$⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_workspaceName">workspaceName</code></td>
<td><p>The name for the workspace. It does not have to be
unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_workspaceNotificationDestinations">workspaceNotificationDestinations</code></td>
<td><p>Specify the Amazon Web Services notification channels that you
plan to use in this workspace. Specifying these data sources here
enables Amazon Managed Grafana to create IAM roles and permissions that
allow Amazon Managed Grafana to use these channels.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_:_workspaceOrganizationalUnits">workspaceOrganizationalUnits</code></td>
<td><p>Specifies the organizational units that this workspace is allowed
to use data sources from, if this workspace is in an account that is
part of an organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_:_workspaceRoleArn">workspaceRoleArn</code></td>
<td><p>Specified the IAM role that grants permissions to the Amazon Web
Services resources that the workspace will view data from, including
both data sources and notification channels. You are responsible for
managing the permissions for this role as new data sources or
notification channels are added.</p></td>
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

    svc$create_workspace(
      accountAccessType = "CURRENT_ACCOUNT"|"ORGANIZATION",
      authenticationProviders = list(
        "AWS_SSO"|"SAML"
      ),
      clientToken = "string",
      configuration = "string",
      grafanaVersion = "string",
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
      stackSetName = "string",
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
      workspaceDataSources = list(
        "AMAZON_OPENSEARCH_SERVICE"|"CLOUDWATCH"|"PROMETHEUS"|"XRAY"|"TIMESTREAM"|"SITEWISE"|"ATHENA"|"REDSHIFT"|"TWINMAKER"
      ),
      workspaceDescription = "string",
      workspaceName = "string",
      workspaceNotificationDestinations = list(
        "SNS"
      ),
      workspaceOrganizationalUnits = list(
        "string"
      ),
      workspaceRoleArn = "string"
    )
