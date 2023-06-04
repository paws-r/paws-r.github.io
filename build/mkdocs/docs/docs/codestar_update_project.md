<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_update_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a project in AWS CodeStar

### Description

Updates a project in AWS CodeStar.

### Usage

    codestar_update_project(id, name, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_update_project_:_id">id</code></td>
<td><p>[required] The ID of the project you want to update.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_update_project_:_name">name</code></td>
<td><p>The name of the project you want to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_update_project_:_description">description</code></td>
<td><p>The description of the project, if any.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_project(
      id = "string",
      name = "string",
      description = "string"
    )
