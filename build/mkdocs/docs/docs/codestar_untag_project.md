<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_untag_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a project

### Description

Removes tags from a project.

### Usage

    codestar_untag_project(id, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_untag_project_:_id">id</code></td>
<td><p>[required] The ID of the project to remove tags from.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_untag_project_:_tags">tags</code></td>
<td><p>[required] The tags to remove from the project.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_project(
      id = "string",
      tags = list(
        "string"
      )
    )
