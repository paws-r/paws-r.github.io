<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing registry which is used to hold a collection of schemas

### Description

Updates an existing registry which is used to hold a collection of
schemas. The updated properties relate to the registry, and do not
modify any of the schemas within the registry.

### Usage

    glue_update_registry(RegistryId, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_registry_:_RegistryId">RegistryId</code></td>
<td><p>[required] This is a wrapper structure that may contain the
registry name and Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_registry_:_Description">Description</code></td>
<td><p>[required] A description of the registry. If description is not
provided, this field will not be updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistryName = "string",
      RegistryArn = "string"
    )

### Request syntax

    svc$update_registry(
      RegistryId = list(
        RegistryName = "string",
        RegistryArn = "string"
      ),
      Description = "string"
    )
