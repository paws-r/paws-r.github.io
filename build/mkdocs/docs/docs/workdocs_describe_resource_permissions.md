<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_resource_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions of a specified resource

### Description

Describes the permissions of a specified resource.

### Usage

    workdocs_describe_resource_permissions(AuthenticationToken, ResourceId,
      PrincipalId, Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_resource_permissions_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_resource_permissions_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_resource_permissions_:_PrincipalId">PrincipalId</code></td>
<td><p>The ID of the principal to filter permissions by.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_resource_permissions_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_resource_permissions_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Principals = list(
        list(
          Id = "string",
          Type = "USER"|"GROUP"|"INVITE"|"ANONYMOUS"|"ORGANIZATION",
          Roles = list(
            list(
              Role = "VIEWER"|"CONTRIBUTOR"|"OWNER"|"COOWNER",
              Type = "DIRECT"|"INHERITED"
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_resource_permissions(
      AuthenticationToken = "string",
      ResourceId = "string",
      PrincipalId = "string",
      Limit = 123,
      Marker = "string"
    )
