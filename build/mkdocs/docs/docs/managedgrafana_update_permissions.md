<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_update_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates which users in a workspace have the Grafana Admin or Editor roles

### Description

Updates which users in a workspace have the Grafana `Admin` or `Editor`
roles.

### Usage

    managedgrafana_update_permissions(updateInstructionBatch, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_update_permissions_:_updateInstructionBatch">updateInstructionBatch</code></td>
<td><p>[required] An array of structures that contain the permission
updates to make.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_permissions_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errors = list(
        list(
          causedBy = list(
            action = "ADD"|"REVOKE",
            role = "ADMIN"|"EDITOR"|"VIEWER",
            users = list(
              list(
                id = "string",
                type = "SSO_USER"|"SSO_GROUP"
              )
            )
          ),
          code = 123,
          message = "string"
        )
      )
    )

### Request syntax

    svc$update_permissions(
      updateInstructionBatch = list(
        list(
          action = "ADD"|"REVOKE",
          role = "ADMIN"|"EDITOR"|"VIEWER",
          users = list(
            list(
              id = "string",
              type = "SSO_USER"|"SSO_GROUP"
            )
          )
        )
      ),
      workspaceId = "string"
    )
