<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_create_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DataBrew project

### Description

Creates a new DataBrew project.

### Usage

    gluedatabrew_create_project(DatasetName, Name, RecipeName, Sample,
      RoleArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_create_project_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of an existing dataset to associate this
project with.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_project_:_Name">Name</code></td>
<td><p>[required] A unique name for the new project. Valid characters
are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and
space.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_project_:_RecipeName">RecipeName</code></td>
<td><p>[required] The name of an existing recipe to associate with the
project.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_project_:_Sample">Sample</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_create_project_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Identity and
Access Management (IAM) role to be assumed for this request.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_project_:_Tags">Tags</code></td>
<td><p>Metadata tags to apply to this project.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_project(
      DatasetName = "string",
      Name = "string",
      RecipeName = "string",
      Sample = list(
        Size = 123,
        Type = "FIRST_N"|"LAST_N"|"RANDOM"
      ),
      RoleArn = "string",
      Tags = list(
        "string"
      )
    )
