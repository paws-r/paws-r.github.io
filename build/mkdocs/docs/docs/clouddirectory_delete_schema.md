<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_delete_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a given schema

### Description

Deletes a given schema. Schemas in a development and published state can
only be deleted.

### Usage

    clouddirectory_delete_schema(SchemaArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_delete_schema_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the development
schema. For more information, see arns.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArn = "string"
    )

### Request syntax

    svc$delete_schema(
      SchemaArn = "string"
    )
