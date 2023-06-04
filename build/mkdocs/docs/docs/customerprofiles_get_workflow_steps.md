<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_workflow_steps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get granular list of steps in workflow

### Description

Get granular list of steps in workflow.

### Usage

    customerprofiles_get_workflow_steps(DomainName, WorkflowId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_workflow_steps_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_workflow_steps_:_WorkflowId">WorkflowId</code></td>
<td><p>[required] Unique identifier for the workflow.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_get_workflow_steps_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_workflow_steps_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkflowId = "string",
      WorkflowType = "APPFLOW_INTEGRATION",
      Items = list(
        list(
          AppflowIntegration = list(
            FlowName = "string",
            Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"FAILED"|"SPLIT"|"RETRY"|"CANCELLED",
            ExecutionMessage = "string",
            RecordsProcessed = 123,
            BatchRecordsStartTime = "string",
            BatchRecordsEndTime = "string",
            CreatedAt = as.POSIXct(
              "2015-01-01"
            ),
            LastUpdatedAt = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_workflow_steps(
      DomainName = "string",
      WorkflowId = "string",
      NextToken = "string",
      MaxResults = 123
    )
