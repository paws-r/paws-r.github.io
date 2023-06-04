<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a schema

### Description

Deletes a schema. Before deleting a schema, you must delete all datasets
referencing the schema. For more information on schemas, see
`create_schema`.

### Usage

    personalize_delete_schema(schemaArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_schema_:_schemaArn">schemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the schema to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_schema(
      schemaArn = "string"
    )
