<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_blueprint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing blueprint

### Description

Deletes an existing blueprint.

### Usage

    glue_delete_blueprint(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_blueprint_:_Name">Name</code></td>
<td><p>[required] The name of the blueprint to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$delete_blueprint(
      Name = "string"
    )
