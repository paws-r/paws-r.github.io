<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_terminate_workflow_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Records a WorkflowExecutionTerminated event and forces closure of the workflow execution identified by the given domain, runId, and workflowId

### Description

Records a `WorkflowExecutionTerminated` event and forces closure of the
workflow execution identified by the given domain, runId, and
workflowId. The child policy, registered with the workflow type or
specified when starting this execution, is applied to any open child
workflow executions of this workflow execution.

If the identified workflow execution was in progress, it is terminated
immediately.

If a runId isn't specified, then the `WorkflowExecutionTerminated` event
is recorded in the history of the current open workflow with the
matching workflowId in the domain.

You should consider using `request_cancel_workflow_execution` action
instead because it allows the workflow to gracefully close while
`terminate_workflow_execution` doesn't.

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

    swf_terminate_workflow_execution(domain, workflowId, runId, reason,
      details, childPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="swf_terminate_workflow_execution_:_domain">domain</code></td>
<td><p>[required] The domain of the workflow execution to
terminate.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_terminate_workflow_execution_:_workflowId">workflowId</code></td>
<td><p>[required] The workflowId of the workflow execution to
terminate.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_terminate_workflow_execution_:_runId">runId</code></td>
<td><p>The runId of the workflow execution to terminate.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_terminate_workflow_execution_:_reason">reason</code></td>
<td><p>A descriptive reason for terminating the workflow
execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_terminate_workflow_execution_:_details">details</code></td>
<td><p>Details for terminating the workflow execution.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_terminate_workflow_execution_:_childPolicy">childPolicy</code></td>
<td><p>If set, specifies the policy to use for the child workflow
executions of the workflow execution being terminated. This policy
overrides the child policy specified for the workflow execution at
registration time or when starting the execution.</p>
<p>The supported child policies are:</p>
<ul>
<li><p><code>TERMINATE</code> – The child executions are
terminated.</p></li>
<li><p><code>REQUEST_CANCEL</code> – A request to cancel is attempted
for each child execution by recording a
<code>WorkflowExecutionCancelRequested</code> event in its history. It
is up to the decider to take appropriate actions when it receives an
execution history with this event.</p></li>
<li><p><code>ABANDON</code> – No action is taken. The child executions
continue to run.</p></li>
</ul>
<p>A child policy for this workflow execution must be specified either
as a default for the workflow type or through this parameter. If neither
this parameter is set nor a default child policy was specified at
registration time then a fault is returned.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$terminate_workflow_execution(
      domain = "string",
      workflowId = "string",
      runId = "string",
      reason = "string",
      details = "string",
      childPolicy = "TERMINATE"|"REQUEST_CANCEL"|"ABANDON"
    )
