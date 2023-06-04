<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_start_workflow_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an execution of the workflow type in the specified domain using the provided workflowId and input data

### Description

Starts an execution of the workflow type in the specified domain using
the provided `workflowId` and input data.

This action returns the newly started workflow execution.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the following parameters by using a `Condition` element
    with the appropriate keys.

    -   `tagList.member.0`: The key is `swf:tagList.member.0`.

    -   `tagList.member.1`: The key is `swf:tagList.member.1`.

    -   `tagList.member.2`: The key is `swf:tagList.member.2`.

    -   `tagList.member.3`: The key is `swf:tagList.member.3`.

    -   `tagList.member.4`: The key is `swf:tagList.member.4`.

    -   `taskList`: String constraint. The key is `swf:taskList.name`.

    -   `workflowType.name`: String constraint. The key is
        `swf:workflowType.name`.

    -   `workflowType.version`: String constraint. The key is
        `swf:workflowType.version`.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_start_workflow_execution(domain, workflowId, workflowType, taskList,
      taskPriority, input, executionStartToCloseTimeout, tagList,
      taskStartToCloseTimeout, childPolicy, lambdaRole)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_start_workflow_execution_:_domain">domain</code></td>
<td><p>[required] The name of the domain in which the workflow execution
is created.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_start_workflow_execution_:_workflowId">workflowId</code></td>
<td><p>[required] The user defined identifier associated with the
workflow execution. You can use this to associate a custom identifier
with the workflow execution. You may specify the same identifier if a
workflow execution is logically a <em>restart</em> of a previous
execution. You cannot have two open workflow executions with the same
<code>workflowId</code> at the same time within the same domain.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_start_workflow_execution_:_workflowType">workflowType</code></td>
<td><p>[required] The type of the workflow to start.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_start_workflow_execution_:_taskList">taskList</code></td>
<td><p>The task list to use for the decision tasks generated for this
workflow execution. This overrides the <code>defaultTaskList</code>
specified when registering the workflow type.</p>
<p>A task list for this workflow execution must be specified either as a
default for the workflow type or through this parameter. If neither this
parameter is set nor a default task list was specified at registration
time then a fault is returned.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_start_workflow_execution_:_taskPriority">taskPriority</code></td>
<td><p>The task priority to use for this workflow execution. This
overrides any default priority that was assigned when the workflow type
was registered. If not set, then the default task priority for the
workflow type is used. Valid values are integers that range from Java's
<code>Integer.MIN_VALUE</code> (-2147483648) to
<code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate
higher priority.</p>
<p>For more information about setting task priority, see <a
href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting
Task Priority</a> in the <em>Amazon SWF Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="swf_start_workflow_execution_:_input">input</code></td>
<td><p>The input for the workflow execution. This is a free form string
which should be meaningful to the workflow you are starting. This
<code>input</code> is made available to the new workflow execution in
the <code>WorkflowExecutionStarted</code> history event.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_start_workflow_execution_:_executionStartToCloseTimeout">executionStartToCloseTimeout</code></td>
<td><p>The total duration for this workflow execution. This overrides
the defaultExecutionStartToCloseTimeout specified when registering the
workflow type.</p>
<p>The duration is specified in seconds; an integer greater than or
equal to <code>0</code>. Exceeding this limit causes the workflow
execution to time out. Unlike some of the other timeout parameters in
Amazon SWF, you cannot specify a value of "NONE" for this timeout; there
is a one-year max limit on the time that a workflow execution can
run.</p>
<p>An execution start-to-close timeout must be specified either through
this parameter or as a default when the workflow type is registered. If
neither this parameter nor a default execution start-to-close timeout is
specified, a fault is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_start_workflow_execution_:_tagList">tagList</code></td>
<td><p>The list of tags to associate with the workflow execution. You
can specify a maximum of 5 tags. You can list workflow executions with a
specific tag by calling <code>list_open_workflow_executions</code> or
<code>list_closed_workflow_executions</code> and specifying a
TagFilter.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_start_workflow_execution_:_taskStartToCloseTimeout">taskStartToCloseTimeout</code></td>
<td><p>Specifies the maximum duration of decision tasks for this
workflow execution. This parameter overrides the
<code>defaultTaskStartToCloseTimout</code> specified when registering
the workflow type using <code>register_workflow_type</code>.</p>
<p>The duration is specified in seconds, an integer greater than or
equal to <code>0</code>. You can use <code>NONE</code> to specify
unlimited duration.</p>
<p>A task start-to-close timeout for this workflow execution must be
specified either as a default for the workflow type or through this
parameter. If neither this parameter is set nor a default task
start-to-close timeout was specified at registration time then a fault
is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_start_workflow_execution_:_childPolicy">childPolicy</code></td>
<td><p>If set, specifies the policy to use for the child workflow
executions of this workflow execution if it is terminated, by calling
the <code>terminate_workflow_execution</code> action explicitly or due
to an expired timeout. This policy overrides the default child policy
specified when registering the workflow type using
<code>register_workflow_type</code>.</p>
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
<tr class="odd">
<td><code
id="swf_start_workflow_execution_:_lambdaRole">lambdaRole</code></td>
<td><p>The IAM role to attach to this workflow execution.</p>
<p>Executions of this workflow type need IAM roles to invoke Lambda
functions. If you don't attach an IAM role, any attempt to schedule a
Lambda task fails. This results in a
<code>ScheduleLambdaFunctionFailed</code> history event. For more
information, see <a
href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a>
in the <em>Amazon SWF Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      runId = "string"
    )

### Request syntax

    svc$start_workflow_execution(
      domain = "string",
      workflowId = "string",
      workflowType = list(
        name = "string",
        version = "string"
      ),
      taskList = list(
        name = "string"
      ),
      taskPriority = "string",
      input = "string",
      executionStartToCloseTimeout = "string",
      tagList = list(
        "string"
      ),
      taskStartToCloseTimeout = "string",
      childPolicy = "TERMINATE"|"REQUEST_CANCEL"|"ABANDON",
      lambdaRole = "string"
    )
