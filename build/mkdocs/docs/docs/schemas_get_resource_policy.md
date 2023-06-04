<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resource-based policy attached to a given registry

### Description

Retrieves the resource-based policy attached to a given registry.

### Usage

    schemas_get_resource_policy(RegistryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_get_resource_policy_:_RegistryName">RegistryName</code></td>
<td><p>The name of the registry.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string",
      RevisionId = "string"
    )

### Request syntax

    svc$get_resource_policy(
      RegistryName = "string"
    )
