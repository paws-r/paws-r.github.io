<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_delete_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Evidently project

### Description

Deletes an Evidently project. Before you can delete a project, you must
delete all the features that the project contains. To delete a feature,
use `delete_feature`.

### Usage

    cloudwatchevidently_delete_project(project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_delete_project_:_project">project</code></td>
<td><p>[required] The name or ARN of the project to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_project(
      project = "string"
    )
