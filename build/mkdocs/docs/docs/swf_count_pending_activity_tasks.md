<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_count_pending_activity_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the estimated number of activity tasks in the specified task list

### Description

Returns the estimated number of activity tasks in the specified task
list. The count returned is an approximation and isn't guaranteed to be
exact. If you specify a task list that no activity task was ever
scheduled in then `0` is returned.

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

    swf_count_pending_activity_tasks(domain, taskList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="swf_count_pending_activity_tasks_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the task
list.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_count_pending_activity_tasks_:_taskList">taskList</code></td>
<td><p>[required] The name of the task list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      count = 123,
      truncated = TRUE|FALSE
    )

### Request syntax

    svc$count_pending_activity_tasks(
      domain = "string",
      taskList = list(
        name = "string"
      )
    )
