<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the resource-based policy attached to the specified registry

### Description

Delete the resource-based policy attached to the specified registry.

### Usage

    schemas_delete_resource_policy(RegistryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_delete_resource_policy_:_RegistryName">RegistryName</code></td>
<td><p>The name of the registry.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      RegistryName = "string"
    )
