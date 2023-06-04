<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_register_workflow_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a new workflow type and its configuration settings in the specified domain

### Description

Registers a new *workflow type* and its configuration settings in the
specified domain.

The retention period for the workflow history is set by the
`register_domain` action.

If the type already exists, then a `TypeAlreadyExists` fault is
returned. You cannot change the configuration settings of a workflow
type once it is registered and it must be registered as a new version.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the following parameters by using a `Condition` element
    with the appropriate keys.

    -   `defaultTaskList.name`: String constraint. The key is
        `swf:defaultTaskList.name`.

    -   `name`: String constraint. The key is `swf:name`.

    -   `version`: String constraint. The key is `swf:version`.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_register_workflow_type(domain, name, version, description,
      defaultTaskStartToCloseTimeout, defaultExecutionStartToCloseTimeout,
      defaultTaskList, defaultTaskPriority, defaultChildPolicy,
      defaultLambdaRole)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_register_workflow_type_:_domain">domain</code></td>
<td><p>[required] The name of the domain in which to register the
workflow type.</p></td>
</tr>
<tr class="even">
<td><code id="swf_register_workflow_type_:_name">name</code></td>
<td><p>[required] The name of the workflow type.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="swf_register_workflow_type_:_version">version</code></td>
<td><p>[required] The version of the workflow type.</p>
<p>The workflow type consists of the name and version, the combination
of which must be unique within the domain. To get a list of all
currently registered workflow types, use the
<code>list_workflow_types</code> action.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_workflow_type_:_description">description</code></td>
<td><p>Textual description of the workflow type.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_workflow_type_:_defaultTaskStartToCloseTimeout">defaultTaskStartToCloseTimeout</code></td>
<td><p>If set, specifies the default maximum duration of decision tasks
for this workflow type. This default can be overridden when starting a
workflow execution using the <code>start_workflow_execution</code>
action or the <code>StartChildWorkflowExecution</code> Decision.</p>
<p>The duration is specified in seconds, an integer greater than or
equal to <code>0</code>. You can use <code>NONE</code> to specify
unlimited duration.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_workflow_type_:_defaultExecutionStartToCloseTimeout">defaultExecutionStartToCloseTimeout</code></td>
<td><p>If set, specifies the default maximum duration for executions of
this workflow type. You can override this default when starting an
execution through the <code>start_workflow_execution</code> Action or
<code>StartChildWorkflowExecution</code> Decision.</p>
<p>The duration is specified in seconds; an integer greater than or
equal to 0. Unlike some of the other timeout parameters in Amazon SWF,
you cannot specify a value of "NONE" for
<code>defaultExecutionStartToCloseTimeout</code>; there is a one-year
max limit on the time that a workflow execution can run. Exceeding this
limit always causes the workflow execution to time out.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_workflow_type_:_defaultTaskList">defaultTaskList</code></td>
<td><p>If set, specifies the default task list to use for scheduling
decision tasks for executions of this workflow type. This default is
used only if a task list isn't provided when starting the execution
through the <code>start_workflow_execution</code> Action or
<code>StartChildWorkflowExecution</code> Decision.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_workflow_type_:_defaultTaskPriority">defaultTaskPriority</code></td>
<td><p>The default task priority to assign to the workflow type. If not
assigned, then <code>0</code> is used. Valid values are integers that
range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to
<code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate
higher priority.</p>
<p>For more information about setting task priority, see <a
href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting
Task Priority</a> in the <em>Amazon SWF Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_workflow_type_:_defaultChildPolicy">defaultChildPolicy</code></td>
<td><p>If set, specifies the default policy to use for the child
workflow executions when a workflow execution of this type is
terminated, by calling the <code>terminate_workflow_execution</code>
action explicitly or due to an expired timeout. This default can be
overridden when starting a workflow execution using the
<code>start_workflow_execution</code> action or the
<code>StartChildWorkflowExecution</code> Decision.</p>
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
</ul></td>
</tr>
<tr class="even">
<td><code
id="swf_register_workflow_type_:_defaultLambdaRole">defaultLambdaRole</code></td>
<td><p>The default IAM role attached to this workflow type.</p>
<p>Executions of this workflow type need IAM roles to invoke Lambda
functions. If you don't specify an IAM role when you start this workflow
type, the default Lambda role is attached to the execution. For more
information, see <a
href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a>
in the <em>Amazon SWF Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_workflow_type(
      domain = "string",
      name = "string",
      version = "string",
      description = "string",
      defaultTaskStartToCloseTimeout = "string",
      defaultExecutionStartToCloseTimeout = "string",
      defaultTaskList = list(
        name = "string"
      ),
      defaultTaskPriority = "string",
      defaultChildPolicy = "TERMINATE"|"REQUEST_CANCEL"|"ABANDON",
      defaultLambdaRole = "string"
    )
