<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_theme_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the resource permissions for a theme

### Description

Updates the resource permissions for a theme. Permissions apply to the
action to grant or revoke permissions on, for example
`"quicksight:DescribeTheme"`.

Theme permissions apply in groupings. Valid groupings include the
following for the three levels of permissions, which are user, owner, or
no permissions:

-   User

    -   `"quicksight:DescribeTheme"`

    -   `"quicksight:DescribeThemeAlias"`

    -   `"quicksight:ListThemeAliases"`

    -   `"quicksight:ListThemeVersions"`

-   Owner

    -   `"quicksight:DescribeTheme"`

    -   `"quicksight:DescribeThemeAlias"`

    -   `"quicksight:ListThemeAliases"`

    -   `"quicksight:ListThemeVersions"`

    -   `"quicksight:DeleteTheme"`

    -   `"quicksight:UpdateTheme"`

    -   `"quicksight:CreateThemeAlias"`

    -   `"quicksight:DeleteThemeAlias"`

    -   `"quicksight:UpdateThemeAlias"`

    -   `"quicksight:UpdateThemePermissions"`

    -   `"quicksight:DescribeThemePermissions"`

-   To specify no permissions, omit the permissions list.

### Usage

    quicksight_update_theme_permissions(AwsAccountId, ThemeId,
      GrantPermissions, RevokePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_theme_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_theme_permissions_:_ThemeId">ThemeId</code></td>
<td><p>[required] The ID for the theme.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_theme_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>A list of resource permissions to be granted for the
theme.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_theme_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>A list of resource permissions to be revoked from the
theme.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThemeId = "string",
      ThemeArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_theme_permissions(
      AwsAccountId = "string",
      ThemeId = "string",
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
      )
    )
