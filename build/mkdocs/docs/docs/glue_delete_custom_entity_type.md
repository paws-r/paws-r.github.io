<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_custom_entity_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom pattern by specifying its name

### Description

Deletes a custom pattern by specifying its name.

### Usage

    glue_delete_custom_entity_type(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_custom_entity_type_:_Name">Name</code></td>
<td><p>[required] The name of the custom pattern that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$delete_custom_entity_type(
      Name = "string"
    )
