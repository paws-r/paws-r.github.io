<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_poll_for_activity_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used by workers to get an ActivityTask from the specified activity taskList

### Description

Used by workers to get an ActivityTask from the specified activity
`taskList`. This initiates a long poll, where the service holds the HTTP
connection open and responds as soon as a task becomes available. The
maximum time the service holds on to the request before responding is 60
seconds. If no task is available within 60 seconds, the poll returns an
empty result. An empty result, in this context, means that an
ActivityTask is returned, but that the value of taskToken is an empty
string. If a task is returned, the worker should use its type to
identify and process it correctly.

Workers should set their client side socket timeout to at least 70
seconds (10 seconds higher than the maximum time service may hold the
poll request).

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the `taskList.name` parameter by using a `Condition`
    element with the `swf:taskList.name` key to allow the action to
    access only certain task lists.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_poll_for_activity_task(domain, taskList, identity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_poll_for_activity_task_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the task lists
being polled.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_poll_for_activity_task_:_taskList">taskList</code></td>
<td><p>[required] Specifies the task list to poll for activity
tasks.</p>
<p>The specified string must not start or end with whitespace. It must
not contain a <code>:</code> (colon), <code>/</code> (slash),
<code>|</code> (vertical bar), or any control characters (<code
style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> | <code
style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_poll_for_activity_task_:_identity">identity</code></td>
<td><p>Identity of the worker making the request, recorded in the
<code>ActivityTaskStarted</code> event in the workflow history. This
enables diagnostic tracing when problems arise. The form of this
identity is user defined.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskToken = "string",
      activityId = "string",
      startedEventId = 123,
      workflowExecution = list(
        workflowId = "string",
        runId = "string"
      ),
      activityType = list(
        name = "string",
        version = "string"
      ),
      input = "string"
    )

### Request syntax

    svc$poll_for_activity_task(
      domain = "string",
      taskList = list(
        name = "string"
      ),
      identity = "string"
    )
