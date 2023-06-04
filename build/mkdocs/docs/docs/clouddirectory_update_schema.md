<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_update_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the schema name with a new name

### Description

Updates the schema name with a new name. Only development schema names
can be updated.

### Usage

    clouddirectory_update_schema(SchemaArn, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_update_schema_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the development
schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_update_schema_:_Name">Name</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArn = "string"
    )

### Request syntax

    svc$update_schema(
      SchemaArn = "string",
      Name = "string"
    )
