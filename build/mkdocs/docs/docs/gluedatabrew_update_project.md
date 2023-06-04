<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_update_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the definition of an existing DataBrew project

### Description

Modifies the definition of an existing DataBrew project.

### Usage

    gluedatabrew_update_project(Sample, RoleArn, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_update_project_:_Sample">Sample</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_update_project_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to be
assumed for this request.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_update_project_:_Name">Name</code></td>
<td><p>[required] The name of the project to be updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      Name = "string"
    )

### Request syntax

    svc$update_project(
      Sample = list(
        Size = 123,
        Type = "FIRST_N"|"LAST_N"|"RANDOM"
      ),
      RoleArn = "string",
      Name = "string"
    )
