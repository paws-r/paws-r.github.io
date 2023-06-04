<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_applied_schema_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns current applied schema version ARN, including the minor version in use

### Description

Returns current applied schema version ARN, including the minor version
in use.

### Usage

    clouddirectory_get_applied_schema_version(SchemaArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_applied_schema_version_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The ARN of the applied schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppliedSchemaArn = "string"
    )

### Request syntax

    svc$get_applied_schema_version(
      SchemaArn = "string"
    )
