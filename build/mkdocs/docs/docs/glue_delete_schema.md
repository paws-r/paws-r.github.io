<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the entire schema set, including the schema set and all of its versions

### Description

Deletes the entire schema set, including the schema set and all of its
versions. To get the status of the delete operation, you can call
`get_schema` API after the asynchronous call. Deleting a registry will
deactivate all online operations for the schema, such as the
`get_schema_by_definition`, and `register_schema_version` APIs.

### Usage

    glue_delete_schema(SchemaId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_schema_:_SchemaId">SchemaId</code></td>
<td><p>[required] This is a wrapper structure that may contain the
schema name and Amazon Resource Name (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArn = "string",
      SchemaName = "string",
      Status = "AVAILABLE"|"PENDING"|"DELETING"
    )

### Request syntax

    svc$delete_schema(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      )
    )
