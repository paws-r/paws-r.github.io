<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_schema_by_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a schema by the SchemaDefinition

### Description

Retrieves a schema by the `SchemaDefinition`. The schema definition is
sent to the Schema Registry, canonicalized, and hashed. If the hash is
matched within the scope of the `SchemaName` or ARN (or the default
registry, if none is supplied), that schema’s metadata is returned.
Otherwise, a 404 or NotFound error is returned. Schema versions in
`Deleted` statuses will not be included in the results.

### Usage

    glue_get_schema_by_definition(SchemaId, SchemaDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_schema_by_definition_:_SchemaId">SchemaId</code></td>
<td><p>[required] This is a wrapper structure to contain schema identity
fields. The structure contains:</p>
<ul>
<li><p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
One of <code>SchemaArn</code> or <code>SchemaName</code> has to be
provided.</p></li>
<li><p>SchemaId$SchemaName: The name of the schema. One of
<code>SchemaArn</code> or <code>SchemaName</code> has to be
provided.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_get_schema_by_definition_:_SchemaDefinition">SchemaDefinition</code></td>
<td><p>[required] The definition of the schema for which schema details
are required.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaVersionId = "string",
      SchemaArn = "string",
      DataFormat = "AVRO"|"JSON"|"PROTOBUF",
      Status = "AVAILABLE"|"PENDING"|"FAILURE"|"DELETING",
      CreatedTime = "string"
    )

### Request syntax

    svc$get_schema_by_definition(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      SchemaDefinition = "string"
    )
