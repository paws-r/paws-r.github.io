<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_delete_schema_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the schema version definition

### Description

Delete the schema version definition

### Usage

    schemas_delete_schema_version(RegistryName, SchemaName, SchemaVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_delete_schema_version_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_delete_schema_version_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_delete_schema_version_:_SchemaVersion">SchemaVersion</code></td>
<td><p>[required] The version number of the schema</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_schema_version(
      RegistryName = "string",
      SchemaName = "string",
      SchemaVersion = "string"
    )
