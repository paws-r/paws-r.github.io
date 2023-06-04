<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_publish_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes a development schema with a major version and a recommended minor version

### Description

Publishes a development schema with a major version and a recommended
minor version.

### Usage

    clouddirectory_publish_schema(DevelopmentSchemaArn, Version,
      MinorVersion, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_publish_schema_:_DevelopmentSchemaArn">DevelopmentSchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the development schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_publish_schema_:_Version">Version</code></td>
<td><p>[required] The major version under which the schema will be
published. Schemas have both a major and minor version associated with
them.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_publish_schema_:_MinorVersion">MinorVersion</code></td>
<td><p>The minor version under which the schema will be published. This
parameter is recommended. Schemas have both a major and minor version
associated with them.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_publish_schema_:_Name">Name</code></td>
<td><p>The new name under which the schema will be published. If this is
not provided, the development schema is considered.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublishedSchemaArn = "string"
    )

### Request syntax

    svc$publish_schema(
      DevelopmentSchemaArn = "string",
      Version = "string",
      MinorVersion = "string",
      Name = "string"
    )
