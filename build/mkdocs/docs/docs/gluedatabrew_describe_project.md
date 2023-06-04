<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_describe_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the definition of a specific DataBrew project

### Description

Returns the definition of a specific DataBrew project.

### Usage

    gluedatabrew_describe_project(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_describe_project_:_Name">Name</code></td>
<td><p>[required] The name of the project to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateDate = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = "string",
      DatasetName = "string",
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = "string",
      Name = "string",
      RecipeName = "string",
      ResourceArn = "string",
      Sample = list(
        Size = 123,
        Type = "FIRST_N"|"LAST_N"|"RANDOM"
      ),
      RoleArn = "string",
      Tags = list(
        "string"
      ),
      SessionStatus = "ASSIGNED"|"FAILED"|"INITIALIZING"|"PROVISIONING"|"READY"|"RECYCLING"|"ROTATING"|"TERMINATED"|"TERMINATING"|"UPDATING",
      OpenedBy = "string",
      OpenDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_project(
      Name = "string"
    )
