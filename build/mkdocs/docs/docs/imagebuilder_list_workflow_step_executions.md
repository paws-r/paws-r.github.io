<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_workflow_step_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shows runtime data for each step in a runtime instance of the workflow that you specify in the request

### Description

Shows runtime data for each step in a runtime instance of the workflow
that you specify in the request.

### Usage

    imagebuilder_list_workflow_step_executions(maxResults, nextToken,
      workflowExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_workflow_step_executions_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_workflow_step_executions_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_workflow_step_executions_:_workflowExecutionId">workflowExecutionId</code></td>
<td><p>[required] The unique identifier that Image Builder assigned to
keep track of runtime details when it ran the workflow.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      steps = list(
        list(
          stepExecutionId = "string",
          name = "string",
          description = "string",
          action = "string",
          status = "PENDING"|"SKIPPED"|"RUNNING"|"COMPLETED"|"FAILED",
          rollbackStatus = "RUNNING"|"COMPLETED"|"SKIPPED"|"FAILED",
          message = "string",
          inputs = "string",
          outputs = "string",
          startTime = "string",
          endTime = "string"
        )
      ),
      workflowBuildVersionArn = "string",
      workflowExecutionId = "string",
      imageBuildVersionArn = "string",
      message = "string",
      nextToken = "string"
    )

### Request syntax

    svc$list_workflow_step_executions(
      maxResults = 123,
      nextToken = "string",
      workflowExecutionId = "string"
    )
