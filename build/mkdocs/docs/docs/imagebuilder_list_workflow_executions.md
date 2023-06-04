<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_workflow_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of workflow runtime instance metadata objects for a specific image build version

### Description

Returns a list of workflow runtime instance metadata objects for a
specific image build version.

### Usage

    imagebuilder_list_workflow_executions(maxResults, nextToken,
      imageBuildVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_workflow_executions_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_workflow_executions_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_workflow_executions_:_imageBuildVersionArn">imageBuildVersionArn</code></td>
<td><p>[required] List all workflow runtime instances for the specified
image build version resource ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      workflowExecutions = list(
        list(
          workflowBuildVersionArn = "string",
          workflowExecutionId = "string",
          type = "BUILD"|"TEST"|"DISTRIBUTION",
          status = "PENDING"|"SKIPPED"|"RUNNING"|"COMPLETED"|"FAILED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_COMPLETED",
          message = "string",
          totalStepCount = 123,
          totalStepsSucceeded = 123,
          totalStepsFailed = 123,
          totalStepsSkipped = 123,
          startTime = "string",
          endTime = "string"
        )
      ),
      imageBuildVersionArn = "string",
      message = "string",
      nextToken = "string"
    )

### Request syntax

    svc$list_workflow_executions(
      maxResults = 123,
      nextToken = "string",
      imageBuildVersionArn = "string"
    )
