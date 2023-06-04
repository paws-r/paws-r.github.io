<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_create_permission_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a group of permissions for various actions that a user can perform in FinSpace

### Description

Creates a group of permissions for various actions that a user can
perform in FinSpace.

### Usage

    finspacedata_create_permission_group(name, description,
      applicationPermissions, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_create_permission_group_:_name">name</code></td>
<td><p>[required] The name of the permission group.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_permission_group_:_description">description</code></td>
<td><p>A brief description for the permission group.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_permission_group_:_applicationPermissions">applicationPermissions</code></td>
<td><p>[required] The option to indicate FinSpace application
permissions that are granted to a specific group.</p>
<p>When assigning application permissions, be aware that the permission
<code>ManageUsersAndGroups</code> allows users to grant themselves or
others access to any functionality in their FinSpace environment's
application. It should only be granted to trusted users.</p>
<ul>
<li><p><code>create_dataset</code> – Group members can create new
datasets.</p></li>
<li><p><code>ManageClusters</code> – Group members can manage Apache
Spark clusters from FinSpace notebooks.</p></li>
<li><p><code>ManageUsersAndGroups</code> – Group members can manage
users and permission groups. This is a privileged permission that allows
users to grant themselves or others access to any functionality in the
application. It should only be granted to trusted users.</p></li>
<li><p><code>ManageAttributeSets</code> – Group members can manage
attribute sets.</p></li>
<li><p><code>ViewAuditData</code> – Group members can view audit
data.</p></li>
<li><p><code>AccessNotebooks</code> – Group members will have access to
FinSpace notebooks.</p></li>
<li><p><code>GetTemporaryCredentials</code> – Group members can get
temporary API credentials.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_permission_group_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      permissionGroupId = "string"
    )

### Request syntax

    svc$create_permission_group(
      name = "string",
      description = "string",
      applicationPermissions = list(
        "CreateDataset"|"ManageClusters"|"ManageUsersAndGroups"|"ManageAttributeSets"|"ViewAuditData"|"AccessNotebooks"|"GetTemporaryCredentials"
      ),
      clientToken = "string"
    )
