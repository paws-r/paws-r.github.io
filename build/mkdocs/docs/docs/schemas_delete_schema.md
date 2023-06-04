<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_delete_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a schema definition

### Description

Delete a schema definition.

### Usage

    schemas_delete_schema(RegistryName, SchemaName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_delete_schema_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_delete_schema_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_schema(
      RegistryName = "string",
      SchemaName = "string"
    )
