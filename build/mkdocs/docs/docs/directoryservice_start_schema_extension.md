<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_start_schema_extension</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a schema extension to a Microsoft AD directory

### Description

Applies a schema extension to a Microsoft AD directory.

### Usage

    directoryservice_start_schema_extension(DirectoryId,
      CreateSnapshotBeforeSchemaExtension, LdifContent, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_start_schema_extension_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which the schema
extension will be applied to.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_start_schema_extension_:_CreateSnapshotBeforeSchemaExtension">CreateSnapshotBeforeSchemaExtension</code></td>
<td><p>[required] If true, creates a snapshot of the directory before
applying the schema extension.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_start_schema_extension_:_LdifContent">LdifContent</code></td>
<td><p>[required] The LDIF file represented as a string. To construct
the LdifContent string, precede each line as it would be formatted in an
ldif file with \n. See the example request below for more details. The
file size can be no larger than 1MB.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_start_schema_extension_:_Description">Description</code></td>
<td><p>[required] A description of the schema extension.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaExtensionId = "string"
    )

### Request syntax

    svc$start_schema_extension(
      DirectoryId = "string",
      CreateSnapshotBeforeSchemaExtension = TRUE|FALSE,
      LdifContent = "string",
      Description = "string"
    )
