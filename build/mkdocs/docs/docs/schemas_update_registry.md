<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_update_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a registry

### Description

Updates a registry.

### Usage

    schemas_update_registry(Description, RegistryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_update_registry_:_Description">Description</code></td>
<td><p>The description of the registry to update.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_update_registry_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = "string",
      RegistryArn = "string",
      RegistryName = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_registry(
      Description = "string",
      RegistryName = "string"
    )
