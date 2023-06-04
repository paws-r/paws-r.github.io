<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_put_schema_from_json</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows a schema to be updated using JSON upload

### Description

Allows a schema to be updated using JSON upload. Only available for
development schemas. See [JSON Schema
Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
for more information.

### Usage

    clouddirectory_put_schema_from_json(SchemaArn, Document)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_put_schema_from_json_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The ARN of the schema to update.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_put_schema_from_json_:_Document">Document</code></td>
<td><p>[required] The replacement JSON schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$put_schema_from_json(
      SchemaArn = "string",
      Document = "string"
    )
