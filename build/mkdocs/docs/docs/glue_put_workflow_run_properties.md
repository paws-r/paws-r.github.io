<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_put_workflow_run_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Puts the specified workflow run properties for the given workflow run

### Description

Puts the specified workflow run properties for the given workflow run.
If a property already exists for the specified run, then it overrides
the value otherwise adds the property to existing properties.

### Usage

    glue_put_workflow_run_properties(Name, RunId, RunProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_put_workflow_run_properties_:_Name">Name</code></td>
<td><p>[required] Name of the workflow which was run.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_put_workflow_run_properties_:_RunId">RunId</code></td>
<td><p>[required] The ID of the workflow run for which the run
properties should be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_put_workflow_run_properties_:_RunProperties">RunProperties</code></td>
<td><p>[required] The properties to put for the specified run.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_workflow_run_properties(
      Name = "string",
      RunId = "string",
      RunProperties = list(
        "string"
      )
    )
