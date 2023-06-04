<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_blueprint_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of a blueprint run

### Description

Retrieves the details of a blueprint run.

### Usage

    glue_get_blueprint_run(BlueprintName, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_blueprint_run_:_BlueprintName">BlueprintName</code></td>
<td><p>[required] The name of the blueprint.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_blueprint_run_:_RunId">RunId</code></td>
<td><p>[required] The run ID for the blueprint run you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BlueprintRun = list(
        BlueprintName = "string",
        RunId = "string",
        WorkflowName = "string",
        State = "RUNNING"|"SUCCEEDED"|"FAILED"|"ROLLING_BACK",
        StartedOn = as.POSIXct(
          "2015-01-01"
        ),
        CompletedOn = as.POSIXct(
          "2015-01-01"
        ),
        ErrorMessage = "string",
        RollbackErrorMessage = "string",
        Parameters = "string",
        RoleArn = "string"
      )
    )

### Request syntax

    svc$get_blueprint_run(
      BlueprintName = "string",
      RunId = "string"
    )
