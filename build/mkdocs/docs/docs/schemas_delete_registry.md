<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_delete_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Registry

### Description

Deletes a Registry.

### Usage

    schemas_delete_registry(RegistryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_delete_registry_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_registry(
      RegistryName = "string"
    )
