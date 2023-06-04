<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_schema_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the specified schema by its unique ID assigned when a version of the schema is created or registered

### Description

Get the specified schema by its unique ID assigned when a version of the
schema is created or registered. Schema versions in Deleted status will
not be included in the results.

### Usage

    glue_get_schema_version(SchemaId, SchemaVersionId, SchemaVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_schema_version_:_SchemaId">SchemaId</code></td>
<td><p>This is a wrapper structure to contain schema identity fields.
The structure contains:</p>
<ul>
<li><p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
Either <code>SchemaArn</code> or <code>SchemaName</code> and
<code>RegistryName</code> has to be provided.</p></li>
<li><p>SchemaId$SchemaName: The name of the schema. Either
<code>SchemaArn</code> or <code>SchemaName</code> and
<code>RegistryName</code> has to be provided.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_get_schema_version_:_SchemaVersionId">SchemaVersionId</code></td>
<td><p>The <code>SchemaVersionId</code> of the schema version. This
field is required for fetching by schema ID. Either this or the
<code>SchemaId</code> wrapper has to be provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_schema_version_:_SchemaVersionNumber">SchemaVersionNumber</code></td>
<td><p>The version number of the schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaVersionId = "string",
      SchemaDefinition = "string",
      DataFormat = "AVRO"|"JSON"|"PROTOBUF",
      SchemaArn = "string",
      VersionNumber = 123,
      Status = "AVAILABLE"|"PENDING"|"FAILURE"|"DELETING",
      CreatedTime = "string"
    )

### Request syntax

    svc$get_schema_version(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      SchemaVersionId = "string",
      SchemaVersionNumber = list(
        LatestVersion = TRUE|FALSE,
        VersionNumber = 123
      )
    )
