<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_create_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Rekognition Custom Labels project

### Description

Creates a new Amazon Rekognition Custom Labels project. A project is a
group of resources (datasets, model versions) that you use to create and
manage Amazon Rekognition Custom Labels models.

This operation requires permissions to perform the
`rekognition:CreateProject` action.

### Usage

    rekognition_create_project(ProjectName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_create_project_:_ProjectName">ProjectName</code></td>
<td><p>[required] The name of the project to create.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectArn = "string"
    )

### Request syntax

    svc$create_project(
      ProjectName = "string"
    )
