<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_describe_workflow_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified workflow execution including its type and some statistics

### Description

Returns information about the specified workflow execution including its
type and some statistics.

This operation is eventually consistent. The results are best effort and
may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_describe_workflow_execution(domain, execution)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="swf_describe_workflow_execution_:_domain">domain</code></td>
<td><p>[required] The name of the domain containing the workflow
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_describe_workflow_execution_:_execution">execution</code></td>
<td><p>[required] The workflow execution to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      executionInfo = list(
        execution = list(
          workflowId = "string",
          runId = "string"
        ),
        workflowType = list(
          name = "string",
          version = "string"
        ),
        startTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        closeTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        executionStatus = "OPEN"|"CLOSED",
        closeStatus = "COMPLETED"|"FAILED"|"CANCELED"|"TERMINATED"|"CONTINUED_AS_NEW"|"TIMED_OUT",
        parent = list(
          workflowId = "string",
          runId = "string"
        ),
        tagList = list(
          "string"
        ),
        cancelRequested = TRUE|FALSE
      ),
      executionConfiguration = list(
        taskStartToCloseTimeout = "string",
        executionStartToCloseTimeout = "string",
        taskList = list(
          name = "string"
        ),
        taskPriority = "string",
        childPolicy = "TERMINATE"|"REQUEST_CANCEL"|"ABANDON",
        lambdaRole = "string"
      ),
      openCounts = list(
        openActivityTasks = 123,
        openDecisionTasks = 123,
        openTimers = 123,
        openChildWorkflowExecutions = 123,
        openLambdaFunctions = 123
      ),
      latestActivityTaskTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      latestExecutionContext = "string"
    )

### Request syntax

    svc$describe_workflow_execution(
      domain = "string",
      execution = list(
        workflowId = "string",
        runId = "string"
      )
    )
