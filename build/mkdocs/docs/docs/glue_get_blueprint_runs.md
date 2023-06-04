<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_blueprint_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of blueprint runs for a specified blueprint

### Description

Retrieves the details of blueprint runs for a specified blueprint.

### Usage

    glue_get_blueprint_runs(BlueprintName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_blueprint_runs_:_BlueprintName">BlueprintName</code></td>
<td><p>[required] The name of the blueprint.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_blueprint_runs_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_blueprint_runs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BlueprintRuns = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_blueprint_runs(
      BlueprintName = "string",
      NextToken = "string",
      MaxResults = 123
    )
