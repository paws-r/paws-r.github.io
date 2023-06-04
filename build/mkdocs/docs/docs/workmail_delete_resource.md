<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified resource

### Description

Deletes the specified resource.

### Usage

    workmail_delete_resource(OrganizationId, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_resource_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier associated with the organization from
which the resource is deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the resource to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource(
      OrganizationId = "string",
      ResourceId = "string"
    )
