<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_update_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the schema definition

### Description

Updates the schema definition

Inactive schemas will be deleted after two years.

### Usage

    schemas_update_schema(ClientTokenId, Content, Description, RegistryName,
      SchemaName, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_update_schema_:_ClientTokenId">ClientTokenId</code></td>
<td><p>The ID of the client token.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_update_schema_:_Content">Content</code></td>
<td><p>The source of the schema definition.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_update_schema_:_Description">Description</code></td>
<td><p>The description of the schema.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_update_schema_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="odd">
<td><code id="schemas_update_schema_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_update_schema_:_Type">Type</code></td>
<td><p>The schema type for the events schema.</p></td>
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

    svc$update_schema(
      ClientTokenId = "string",
      Content = "string",
      Description = "string",
      RegistryName = "string",
      SchemaName = "string",
      Type = "OpenApi3"|"JSONSchemaDraft4"
    )
