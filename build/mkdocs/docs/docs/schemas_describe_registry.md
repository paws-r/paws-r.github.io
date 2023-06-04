<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_describe_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the registry

### Description

Describes the registry.

### Usage

    schemas_describe_registry(RegistryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_describe_registry_:_RegistryName">RegistryName</code></td>
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

    svc$describe_registry(
      RegistryName = "string"
    )
