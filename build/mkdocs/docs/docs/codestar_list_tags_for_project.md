<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_list_tags_for_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the tags for a project

### Description

Gets the tags for a project.

### Usage

    codestar_list_tags_for_project(id, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_list_tags_for_project_:_id">id</code></td>
<td><p>[required] The ID of the project to get tags for.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_list_tags_for_project_:_nextToken">nextToken</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_list_tags_for_project_:_maxResults">maxResults</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_tags_for_project(
      id = "string",
      nextToken = "string",
      maxResults = 123
    )
