<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_describe_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a project and its resources

### Description

Describes a project and its resources.

### Usage

    codestar_describe_project(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_describe_project_:_id">id</code></td>
<td><p>[required] The ID of the project.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      id = "string",
      arn = "string",
      description = "string",
      clientRequestToken = "string",
      createdTimeStamp = as.POSIXct(
        "2015-01-01"
      ),
      stackId = "string",
      projectTemplateId = "string",
      status = list(
        state = "string",
        reason = "string"
      )
    )

### Request syntax

    svc$describe_project(
      id = "string"
    )
