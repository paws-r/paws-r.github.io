<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_schema_as_json</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a JSON representation of the schema

### Description

Retrieves a JSON representation of the schema. See [JSON Schema
Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
for more information.

### Usage

    clouddirectory_get_schema_as_json(SchemaArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_schema_as_json_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The ARN of the schema to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Document = "string"
    )

### Request syntax

    svc$get_schema_as_json(
      SchemaArn = "string"
    )
