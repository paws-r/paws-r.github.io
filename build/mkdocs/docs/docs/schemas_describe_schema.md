<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_describe_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve the schema definition

### Description

Retrieve the schema definition.

### Usage

    schemas_describe_schema(RegistryName, SchemaName, SchemaVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_describe_schema_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_describe_schema_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_describe_schema_:_SchemaVersion">SchemaVersion</code></td>
<td><p>Specifying this limits the results to only this schema
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Content = "string",
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

    svc$describe_schema(
      RegistryName = "string",
      SchemaName = "string",
      SchemaVersion = "string"
    )
