<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified schema in detail

### Description

Describes the specified schema in detail.

### Usage

    glue_get_schema(SchemaId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_schema_:_SchemaId">SchemaId</code></td>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistryName = "string",
      RegistryArn = "string",
      SchemaName = "string",
      SchemaArn = "string",
      Description = "string",
      DataFormat = "AVRO"|"JSON"|"PROTOBUF",
      Compatibility = "NONE"|"DISABLED"|"BACKWARD"|"BACKWARD_ALL"|"FORWARD"|"FORWARD_ALL"|"FULL"|"FULL_ALL",
      SchemaCheckpoint = 123,
      LatestSchemaVersion = 123,
      NextSchemaVersion = 123,
      SchemaStatus = "AVAILABLE"|"PENDING"|"DELETING",
      CreatedTime = "string",
      UpdatedTime = "string"
    )

### Request syntax

    svc$get_schema(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      )
    )
