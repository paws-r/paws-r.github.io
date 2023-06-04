<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the specified project

### Description

Delete the specified project.

### Usage

    sagemaker_delete_project(ProjectName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_project_:_ProjectName">ProjectName</code></td>
<td><p>[required] The name of the project to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_project(
      ProjectName = "string"
    )
