<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_register_schema_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new version to the existing schema

### Description

Adds a new version to the existing schema. Returns an error if new
version of schema does not meet the compatibility requirements of the
schema set. This API will not create a new schema set and will return a
404 error if the schema set is not already present in the Schema
Registry.

If this is the first schema definition to be registered in the Schema
Registry, this API will store the schema version and return immediately.
Otherwise, this call has the potential to run longer than other
operations due to compatibility modes. You can call the
`get_schema_version` API with the `SchemaVersionId` to check
compatibility modes.

If the same schema definition is already stored in Schema Registry as a
version, the schema ID of the existing schema is returned to the caller.

### Usage

    glue_register_schema_version(SchemaId, SchemaDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_register_schema_version_:_SchemaId">SchemaId</code></td>
<td><p>[required] This is a wrapper structure to contain schema identity
fields. The structure contains:</p>
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
id="glue_register_schema_version_:_SchemaDefinition">SchemaDefinition</code></td>
<td><p>[required] The schema definition using the
<code>DataFormat</code> setting for the
<code>SchemaName</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaVersionId = "string",
      VersionNumber = 123,
      Status = "AVAILABLE"|"PENDING"|"FAILURE"|"DELETING"
    )

### Request syntax

    svc$register_schema_version(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      SchemaDefinition = "string"
    )
