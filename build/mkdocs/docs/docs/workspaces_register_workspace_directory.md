<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_register_workspace_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers the specified directory

### Description

Registers the specified directory. This operation is asynchronous and
returns before the WorkSpace directory is registered. If this is the
first time you are registering a directory, you will need to create the
workspaces\_DefaultRole role before you can register a directory. For
more information, see [Creating the workspaces\_DefaultRole
Role](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role).

### Usage

    workspaces_register_workspace_directory(DirectoryId, SubnetIds,
      EnableWorkDocs, EnableSelfService, Tenancy, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_register_workspace_directory_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory. You cannot register a
directory if it does not have a status of Active. If the directory does
not have a status of Active, you will receive an
InvalidResourceStateException error. If you have already registered the
maximum number of directories that you can register with Amazon
WorkSpaces, you will receive a ResourceLimitExceededException error.
Deregister directories that you are not using for WorkSpaces, and try
again.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_register_workspace_directory_:_SubnetIds">SubnetIds</code></td>
<td><p>The identifiers of the subnets for your virtual private cloud
(VPC). Make sure that the subnets are in supported Availability Zones.
The subnets must also be in separate Availability Zones. If these
conditions are not met, you will receive an
OperationNotSupportedException error.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_register_workspace_directory_:_EnableWorkDocs">EnableWorkDocs</code></td>
<td><p>[required] Indicates whether Amazon WorkDocs is enabled or
disabled. If you have enabled this parameter and WorkDocs is not
available in the Region, you will receive an
OperationNotSupportedException error. Set <code>EnableWorkDocs</code> to
disabled, and try again.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_register_workspace_directory_:_EnableSelfService">EnableSelfService</code></td>
<td><p>Indicates whether self-service capabilities are enabled or
disabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_register_workspace_directory_:_Tenancy">Tenancy</code></td>
<td><p>Indicates whether your WorkSpace directory is dedicated or
shared. To use Bring Your Own License (BYOL) images, this value must be
set to <code>DEDICATED</code> and your Amazon Web Services account must
be enabled for BYOL. If your account has not been enabled for BYOL, you
will receive an InvalidParameterValuesException error. For more
information about BYOL images, see <a
href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring
Your Own Windows Desktop Images</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_register_workspace_directory_:_Tags">Tags</code></td>
<td><p>The tags associated with the directory.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_workspace_directory(
      DirectoryId = "string",
      SubnetIds = list(
        "string"
      ),
      EnableWorkDocs = TRUE|FALSE,
      EnableSelfService = TRUE|FALSE,
      Tenancy = "DEDICATED"|"SHARED",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
