<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_delete_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a build project

### Description

Deletes a build project. When you delete a project, its builds are not
deleted.

### Usage

    codebuild_delete_project(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_delete_project_:_name">name</code></td>
<td><p>[required] The name of the build project.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_project(
      name = "string"
    )
