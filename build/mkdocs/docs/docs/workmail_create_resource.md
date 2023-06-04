<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new WorkMail resource

### Description

Creates a new WorkMail resource.

### Usage

    workmail_create_resource(OrganizationId, Name, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_resource_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier associated with the organization for
which the resource is created.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_create_resource_:_Name">Name</code></td>
<td><p>[required] The name of the new resource.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_create_resource_:_Type">Type</code></td>
<td><p>[required] The type of the new resource. The available types are
<code>equipment</code> and <code>room</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceId = "string"
    )

### Request syntax

    svc$create_resource(
      OrganizationId = "string",
      Name = "string",
      Type = "ROOM"|"EQUIPMENT"
    )
