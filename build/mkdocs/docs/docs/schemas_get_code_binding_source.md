<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_get_code_binding_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the code binding source URI

### Description

Get the code binding source URI.

### Usage

    schemas_get_code_binding_source(Language, RegistryName, SchemaName,
      SchemaVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_get_code_binding_source_:_Language">Language</code></td>
<td><p>[required] The language of the code binding.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_get_code_binding_source_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_get_code_binding_source_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_get_code_binding_source_:_SchemaVersion">SchemaVersion</code></td>
<td><p>Specifying this limits the results to only this schema
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Body = raw
    )

### Request syntax

    svc$get_code_binding_source(
      Language = "string",
      RegistryName = "string",
      SchemaName = "string",
      SchemaVersion = "string"
    )
