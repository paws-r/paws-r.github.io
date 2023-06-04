<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_remove_all_resource_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes all the permissions from the specified resource

### Description

Removes all the permissions from the specified resource.

### Usage

    workdocs_remove_all_resource_permissions(AuthenticationToken,
      ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_remove_all_resource_permissions_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_remove_all_resource_permissions_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_all_resource_permissions(
      AuthenticationToken = "string",
      ResourceId = "string"
    )
