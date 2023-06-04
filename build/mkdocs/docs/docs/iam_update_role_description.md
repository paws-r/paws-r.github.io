<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_role_description</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use UpdateRole instead

### Description

Use `update_role` instead.

Modifies only the description of a role. This operation performs the
same function as the `Description` parameter in the `update_role`
operation.

### Usage

    iam_update_role_description(RoleName, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_role_description_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role that you want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_role_description_:_Description">Description</code></td>
<td><p>[required] The new description that you want to apply to the
specified role.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Role = list(
        Path = "string",
        RoleName = "string",
        RoleId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        AssumeRolePolicyDocument = "string",
        Description = "string",
        MaxSessionDuration = 123,
        PermissionsBoundary = list(
          PermissionsBoundaryType = "PermissionsBoundaryPolicy",
          PermissionsBoundaryArn = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        RoleLastUsed = list(
          LastUsedDate = as.POSIXct(
            "2015-01-01"
          ),
          Region = "string"
        )
      )
    )

### Request syntax

    svc$update_role_description(
      RoleName = "string",
      Description = "string"
    )
