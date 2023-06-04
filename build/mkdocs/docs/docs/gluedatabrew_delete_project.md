<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_delete_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing DataBrew project

### Description

Deletes an existing DataBrew project.

### Usage

    gluedatabrew_delete_project(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_delete_project_:_Name">Name</code></td>
<td><p>[required] The name of the project to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$delete_project(
      Name = "string"
    )
