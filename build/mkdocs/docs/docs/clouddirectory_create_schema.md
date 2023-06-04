<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_create_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new schema in a development state

### Description

Creates a new schema in a development state. A schema can exist in three
phases:

-   *Development:* This is a mutable phase of the schema. All new
    schemas are in the development phase. Once the schema is finalized,
    it can be published.

-   *Published:* Published schemas are immutable and have a version
    associated with them.

-   *Applied:* Applied schemas are mutable in a way that allows you to
    add new schema facets. You can also add new, nonrequired attributes
    to existing schema facets. You can apply only published schemas to
    directories.

### Usage

    clouddirectory_create_schema(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="clouddirectory_create_schema_:_Name">Name</code></td>
<td><p>[required] The name that is associated with the schema. This is
unique to each account and in each region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArn = "string"
    )

### Request syntax

    svc$create_schema(
      Name = "string"
    )
