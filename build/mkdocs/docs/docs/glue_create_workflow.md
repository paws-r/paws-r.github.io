<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_workflow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new workflow

### Description

Creates a new workflow.

### Usage

    glue_create_workflow(Name, Description, DefaultRunProperties, Tags,
      MaxConcurrentRuns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_workflow_:_Name">Name</code></td>
<td><p>[required] The name to be assigned to the workflow. It should be
unique within your account.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_workflow_:_Description">Description</code></td>
<td><p>A description of the workflow.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_workflow_:_DefaultRunProperties">DefaultRunProperties</code></td>
<td><p>A collection of properties to be used as part of each execution
of the workflow.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_workflow_:_Tags">Tags</code></td>
<td><p>The tags to be used with this workflow.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_workflow_:_MaxConcurrentRuns">MaxConcurrentRuns</code></td>
<td><p>You can use this parameter to prevent unwanted multiple updates
to data, to control costs, or in some cases, to prevent exceeding the
maximum number of concurrent runs of any of the component jobs. If you
leave this parameter blank, there is no limit to the number of
concurrent workflow runs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_workflow(
      Name = "string",
      Description = "string",
      DefaultRunProperties = list(
        "string"
      ),
      Tags = list(
        "string"
      ),
      MaxConcurrentRuns = 123
    )
