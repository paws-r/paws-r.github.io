<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new registry which may be used to hold a collection of schemas

### Description

Creates a new registry which may be used to hold a collection of
schemas.

### Usage

    glue_create_registry(RegistryName, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_create_registry_:_RegistryName">RegistryName</code></td>
<td><p>[required] Name of the registry to be created of max length of
255, and may only contain letters, numbers, hyphen, underscore, dollar
sign, or hash mark. No whitespace.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_registry_:_Description">Description</code></td>
<td><p>A description of the registry. If description is not provided,
there will not be any default value for this.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_registry_:_Tags">Tags</code></td>
<td><p>Amazon Web Services tags that contain a key value pair and may be
searched by console, command line, or API.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistryArn = "string",
      RegistryName = "string",
      Description = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_registry(
      RegistryName = "string",
      Description = "string",
      Tags = list(
        "string"
      )
    )
