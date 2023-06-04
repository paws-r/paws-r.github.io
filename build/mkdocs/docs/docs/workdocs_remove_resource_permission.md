<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_remove_resource_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the permission for the specified principal from the specified resource

### Description

Removes the permission for the specified principal from the specified
resource.

### Usage

    workdocs_remove_resource_permission(AuthenticationToken, ResourceId,
      PrincipalId, PrincipalType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_remove_resource_permission_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_remove_resource_permission_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_remove_resource_permission_:_PrincipalId">PrincipalId</code></td>
<td><p>[required] The principal ID of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_remove_resource_permission_:_PrincipalType">PrincipalType</code></td>
<td><p>The principal type of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_resource_permission(
      AuthenticationToken = "string",
      ResourceId = "string",
      PrincipalId = "string",
      PrincipalType = "USER"|"GROUP"|"INVITE"|"ANONYMOUS"|"ORGANIZATION"
    )
