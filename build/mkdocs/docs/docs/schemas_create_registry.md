<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_create_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a registry

### Description

Creates a registry.

### Usage

    schemas_create_registry(Description, RegistryName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_create_registry_:_Description">Description</code></td>
<td><p>A description of the registry to be created.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_create_registry_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="odd">
<td><code id="schemas_create_registry_:_Tags">Tags</code></td>
<td><p>Tags to associate with the registry.</p></td>
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

    svc$create_registry(
      Description = "string",
      RegistryName = "string",
      Tags = list(
        "string"
      )
    )
