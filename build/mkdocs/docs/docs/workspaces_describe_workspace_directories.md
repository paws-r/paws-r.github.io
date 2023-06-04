<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspace_directories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the available directories that are registered with Amazon WorkSpaces

### Description

Describes the available directories that are registered with Amazon
WorkSpaces.

### Usage

    workspaces_describe_workspace_directories(DirectoryIds, Limit,
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
id="workspaces_describe_workspace_directories_:_DirectoryIds">DirectoryIds</code></td>
<td><p>The identifiers of the directories. If the value is null, all
directories are retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspace_directories_:_Limit">Limit</code></td>
<td><p>The maximum number of directories to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_directories_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Directories = list(
        list(
          DirectoryId = "string",
          Alias = "string",
          DirectoryName = "string",
          RegistrationCode = "string",
          SubnetIds = list(
            "string"
          ),
          DnsIpAddresses = list(
            "string"
          ),
          CustomerUserName = "string",
          IamRoleId = "string",
          DirectoryType = "SIMPLE_AD"|"AD_CONNECTOR",
          WorkspaceSecurityGroupId = "string",
          State = "REGISTERING"|"REGISTERED"|"DEREGISTERING"|"DEREGISTERED"|"ERROR",
          WorkspaceCreationProperties = list(
            EnableWorkDocs = TRUE|FALSE,
            EnableInternetAccess = TRUE|FALSE,
            DefaultOu = "string",
            CustomSecurityGroupId = "string",
            UserEnabledAsLocalAdministrator = TRUE|FALSE,
            EnableMaintenanceMode = TRUE|FALSE
          ),
          ipGroupIds = list(
            "string"
          ),
          WorkspaceAccessProperties = list(
            DeviceTypeWindows = "ALLOW"|"DENY",
            DeviceTypeOsx = "ALLOW"|"DENY",
            DeviceTypeWeb = "ALLOW"|"DENY",
            DeviceTypeIos = "ALLOW"|"DENY",
            DeviceTypeAndroid = "ALLOW"|"DENY",
            DeviceTypeChromeOs = "ALLOW"|"DENY",
            DeviceTypeZeroClient = "ALLOW"|"DENY",
            DeviceTypeLinux = "ALLOW"|"DENY"
          ),
          Tenancy = "DEDICATED"|"SHARED",
          SelfservicePermissions = list(
            RestartWorkspace = "ENABLED"|"DISABLED",
            IncreaseVolumeSize = "ENABLED"|"DISABLED",
            ChangeComputeType = "ENABLED"|"DISABLED",
            SwitchRunningMode = "ENABLED"|"DISABLED",
            RebuildWorkspace = "ENABLED"|"DISABLED"
          ),
          SamlProperties = list(
            Status = "DISABLED"|"ENABLED"|"ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK",
            UserAccessUrl = "string",
            RelayStateParameterName = "string"
          ),
          CertificateBasedAuthProperties = list(
            Status = "DISABLED"|"ENABLED",
            CertificateAuthorityArn = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_workspace_directories(
      DirectoryIds = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )
