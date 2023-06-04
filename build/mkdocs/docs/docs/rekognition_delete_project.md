<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Rekognition Custom Labels project

### Description

Deletes an Amazon Rekognition Custom Labels project. To delete a project
you must first delete all models associated with the project. To delete
a model, see `delete_project_version`.

`delete_project` is an asynchronous operation. To check if the project
is deleted, call `describe_projects`. The project is deleted when the
project no longer appears in the response. Be aware that deleting a
given project will also delete any `ProjectPolicies` associated with
that project.

This operation requires permissions to perform the
`rekognition:DeleteProject` action.

### Usage

    rekognition_delete_project(ProjectArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_project_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the project that you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "CREATING"|"CREATED"|"DELETING"
    )

### Request syntax

    svc$delete_project(
      ProjectArn = "string"
    )
