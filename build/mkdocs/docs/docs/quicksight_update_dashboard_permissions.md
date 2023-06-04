<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_dashboard_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates read and write permissions on a dashboard

### Description

Updates read and write permissions on a dashboard.

### Usage

    quicksight_update_dashboard_permissions(AwsAccountId, DashboardId,
      GrantPermissions, RevokePermissions, GrantLinkPermissions,
      RevokeLinkPermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_dashboard_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the dashboard whose permissions you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_dashboard_permissions_:_DashboardId">DashboardId</code></td>
<td><p>[required] The ID for the dashboard.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_dashboard_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>The permissions that you want to grant on this resource.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_dashboard_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>The permissions that you want to revoke from this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_dashboard_permissions_:_GrantLinkPermissions">GrantLinkPermissions</code></td>
<td><p>Grants link permissions to all users in a defined
namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_dashboard_permissions_:_RevokeLinkPermissions">RevokeLinkPermissions</code></td>
<td><p>Revokes link permissions from all users in a defined
namespace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardArn = "string",
      DashboardId = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string",
      Status = 123,
      LinkSharingConfiguration = list(
        Permissions = list(
          list(
            Principal = "string",
            Actions = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$update_dashboard_permissions(
      AwsAccountId = "string",
      DashboardId = "string",
      GrantPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokePermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      GrantLinkPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokeLinkPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      )
    )
