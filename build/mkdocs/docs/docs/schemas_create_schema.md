<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_create_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a schema definition

### Description

Creates a schema definition.

Inactive schemas will be deleted after two years.

### Usage

    schemas_create_schema(Content, Description, RegistryName, SchemaName,
      Tags, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_create_schema_:_Content">Content</code></td>
<td><p>[required] The source of the schema definition.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_create_schema_:_Description">Description</code></td>
<td><p>A description of the schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_create_schema_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_create_schema_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="odd">
<td><code id="schemas_create_schema_:_Tags">Tags</code></td>
<td><p>Tags associated with the schema.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_create_schema_:_Type">Type</code></td>
<td><p>[required] The type of schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = "string",
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      SchemaArn = "string",
      SchemaName = "string",
      SchemaVersion = "string",
      Tags = list(
        "string"
      ),
      Type = "string",
      VersionCreatedDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_schema(
      Content = "string",
      Description = "string",
      RegistryName = "string",
      SchemaName = "string",
      Tags = list(
        "string"
      ),
      Type = "OpenApi3"|"JSONSchemaDraft4"
    )
