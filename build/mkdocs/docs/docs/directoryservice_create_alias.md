<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_create_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an alias for a directory and assigns the alias to the directory

### Description

Creates an alias for a directory and assigns the alias to the directory.
The alias is used to construct the access URL for the directory, such as
`⁠http://<alias>.awsapps.com⁠`.

After an alias has been created, it cannot be deleted or reused, so this
operation should only be used when absolutely necessary.

### Usage

    directoryservice_create_alias(DirectoryId, Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_create_alias_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which to create
the alias.</p></td>
</tr>
<tr class="even">
<td><code id="directoryservice_create_alias_:_Alias">Alias</code></td>
<td><p>[required] The requested alias.</p>
<p>The alias must be unique amongst all aliases in Amazon Web Services.
This operation throws an <code>EntityAlreadyExistsException</code> error
if the alias already exists.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string",
      Alias = "string"
    )

### Request syntax

    svc$create_alias(
      DirectoryId = "string",
      Alias = "string"
    )
