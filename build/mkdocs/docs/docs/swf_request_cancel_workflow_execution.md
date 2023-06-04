<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_request_cancel_workflow_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Records a WorkflowExecutionCancelRequested event in the currently running workflow execution identified by the given domain, workflowId, and runId

### Description

Records a `WorkflowExecutionCancelRequested` event in the currently
running workflow execution identified by the given domain, workflowId,
and runId. This logically requests the cancellation of the workflow
execution as a whole. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

If the runId isn't specified, the `WorkflowExecutionCancelRequested`
event is recorded in the history of the current open workflow execution
with the specified workflowId in the domain.

Because this action allows the workflow to properly clean up and
gracefully close, it should be used instead of
`terminate_workflow_execution` when possible.

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

    swf_request_cancel_workflow_execution(domain, workflowId, runId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="swf_request_cancel_workflow_execution_:_domain">domain</code></td>
<td><p>[required] The name of the domain containing the workflow
execution to cancel.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_request_cancel_workflow_execution_:_workflowId">workflowId</code></td>
<td><p>[required] The workflowId of the workflow execution to
cancel.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_request_cancel_workflow_execution_:_runId">runId</code></td>
<td><p>The runId of the workflow execution to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$request_cancel_workflow_execution(
      domain = "string",
      workflowId = "string",
      runId = "string"
    )
