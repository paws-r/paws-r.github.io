<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_create_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Directory by copying the published schema into the directory

### Description

Creates a Directory by copying the published schema into the directory.
A directory cannot be created without a schema.

You can also quickly create a directory using a managed schema, called
the `QuickStartSchema`. For more information, see [Managed
Schema](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html)
in the *Amazon Cloud Directory Developer Guide*.

### Usage

    clouddirectory_create_directory(Name, SchemaArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="clouddirectory_create_directory_:_Name">Name</code></td>
<td><p>[required] The name of the Directory. Should be unique per
account, per region.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_directory_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the published schema
that will be copied into the data Directory. For more information, see
arns.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryArn = "string",
      Name = "string",
      ObjectIdentifier = "string",
      AppliedSchemaArn = "string"
    )

### Request syntax

    svc$create_directory(
      Name = "string",
      SchemaArn = "string"
    )
