<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_apply_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema

### Description

Copies the input published schema, at the specified version, into the
Directory with the same name and version as that of the published
schema.

### Usage

    clouddirectory_apply_schema(PublishedSchemaArn, DirectoryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_apply_schema_:_PublishedSchemaArn">PublishedSchemaArn</code></td>
<td><p>[required] Published schema Amazon Resource Name (ARN) that needs
to be copied. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_apply_schema_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory into which the schema is copied. For more information, see
arns.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppliedSchemaArn = "string",
      DirectoryArn = "string"
    )

### Request syntax

    svc$apply_schema(
      PublishedSchemaArn = "string",
      DirectoryArn = "string"
    )
