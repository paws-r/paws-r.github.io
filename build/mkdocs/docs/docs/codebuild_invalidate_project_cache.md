<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_invalidate_project_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the cache for a project

### Description

Resets the cache for a project.

### Usage

    codebuild_invalidate_project_cache(projectName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_invalidate_project_cache_:_projectName">projectName</code></td>
<td><p>[required] The name of the CodeBuild build project that the cache
is reset for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$invalidate_project_cache(
      projectName = "string"
    )
