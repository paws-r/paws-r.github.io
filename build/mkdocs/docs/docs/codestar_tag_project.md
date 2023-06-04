<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_tag_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a project

### Description

Adds tags to a project.

### Usage

    codestar_tag_project(id, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_tag_project_:_id">id</code></td>
<td><p>[required] The ID of the project you want to add a tag
to.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_tag_project_:_tags">tags</code></td>
<td><p>[required] The tags you want to add to the project.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$tag_project(
      id = "string",
      tags = list(
        "string"
      )
    )
