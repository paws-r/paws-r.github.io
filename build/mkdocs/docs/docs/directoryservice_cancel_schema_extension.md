<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_cancel_schema_extension</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an in-progress schema extension to a Microsoft AD directory

### Description

Cancels an in-progress schema extension to a Microsoft AD directory.
Once a schema extension has started replicating to all domain
controllers, the task can no longer be canceled. A schema extension can
be canceled during any of the following states; `Initializing`,
`CreatingSnapshot`, and `UpdatingSchema`.

### Usage

    directoryservice_cancel_schema_extension(DirectoryId, SchemaExtensionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_cancel_schema_extension_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory whose schema extension
will be canceled.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_cancel_schema_extension_:_SchemaExtensionId">SchemaExtensionId</code></td>
<td><p>[required] The identifier of the schema extension that will be
canceled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_schema_extension(
      DirectoryId = "string",
      SchemaExtensionId = "string"
    )
