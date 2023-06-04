<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_export_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Export schema

### Description

Export schema

### Usage

    schemas_export_schema(RegistryName, SchemaName, SchemaVersion, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_export_schema_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_export_schema_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_export_schema_:_SchemaVersion">SchemaVersion</code></td>
<td><p>Specifying this limits the results to only this schema
version.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_export_schema_:_Type">Type</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Content = "string",
      SchemaArn = "string",
      SchemaName = "string",
      SchemaVersion = "string",
      Type = "string"
    )

### Request syntax

    svc$export_schema(
      RegistryName = "string",
      SchemaName = "string",
      SchemaVersion = "string",
      Type = "string"
    )
