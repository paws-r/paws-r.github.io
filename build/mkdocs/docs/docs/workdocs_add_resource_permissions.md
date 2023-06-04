<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_add_resource_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a set of permissions for the specified folder or document

### Description

Creates a set of permissions for the specified folder or document. The
resource permissions are overwritten if the principals already have
different permissions.

### Usage

    workdocs_add_resource_permissions(AuthenticationToken, ResourceId,
      Principals, NotificationOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_add_resource_permissions_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_add_resource_permissions_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_add_resource_permissions_:_Principals">Principals</code></td>
<td><p>[required] The users, groups, or organization being granted
permission.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_add_resource_permissions_:_NotificationOptions">NotificationOptions</code></td>
<td><p>The notification options.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ShareResults = list(
        list(
          PrincipalId = "string",
          InviteePrincipalId = "string",
          Role = "VIEWER"|"CONTRIBUTOR"|"OWNER"|"COOWNER",
          Status = "SUCCESS"|"FAILURE",
          ShareId = "string",
          StatusMessage = "string"
        )
      )
    )

### Request syntax

    svc$add_resource_permissions(
      AuthenticationToken = "string",
      ResourceId = "string",
      Principals = list(
        list(
          Id = "string",
          Type = "USER"|"GROUP"|"INVITE"|"ANONYMOUS"|"ORGANIZATION",
          Role = "VIEWER"|"CONTRIBUTOR"|"OWNER"|"COOWNER"
        )
      ),
      NotificationOptions = list(
        SendEmail = TRUE|FALSE,
        EmailMessage = "string"
      )
    )
