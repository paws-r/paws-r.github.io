<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tasks

### Description

Returns a list of tasks. You can filter the results by cluster, task
definition family, container instance, launch type, what IAM principal
started the task, or by the desired status of the task.

Recently stopped tasks might appear in the returned results. Currently,
stopped tasks appear in the returned results for at least one hour.

### Usage

    ecs_list_tasks(cluster, containerInstance, family, nextToken,
      maxResults, startedBy, serviceName, desiredStatus, launchType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_list_tasks_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
to use when filtering the <code>list_tasks</code> results. If you do not
specify a cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_tasks_:_containerInstance">containerInstance</code></td>
<td><p>The container instance ID or full ARN of the container instance
to use when filtering the <code>list_tasks</code> results. Specifying a
<code>containerInstance</code> limits the results to tasks that belong
to that container instance.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_tasks_:_family">family</code></td>
<td><p>The name of the task definition family to use when filtering the
<code>list_tasks</code> results. Specifying a <code>family</code> limits
the results to tasks that belong to that family.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_tasks_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_tasks</code> request indicating that more results are
available to fulfill the request and further calls will be needed. If
<code>maxResults</code> was provided, it's possible the number of
results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_tasks_:_maxResults">maxResults</code></td>
<td><p>The maximum number of task results that <code>list_tasks</code>
returned in paginated output. When this parameter is used,
<code>list_tasks</code> only returns <code>maxResults</code> results in
a single page along with a <code>nextToken</code> response element. The
remaining results of the initial request can be seen by sending another
<code>list_tasks</code> request with the returned <code>nextToken</code>
value. This value can be between 1 and 100. If this parameter isn't
used, then <code>list_tasks</code> returns up to 100 results and a
<code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_tasks_:_startedBy">startedBy</code></td>
<td><p>The <code>startedBy</code> value to filter the task results with.
Specifying a <code>startedBy</code> value limits the results to tasks
that were started with that value.</p>
<p>When you specify <code>startedBy</code> as the filter, it must be the
only filter that you use.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_tasks_:_serviceName">serviceName</code></td>
<td><p>The name of the service to use when filtering the
<code>list_tasks</code> results. Specifying a <code>serviceName</code>
limits the results to tasks that belong to that service.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_tasks_:_desiredStatus">desiredStatus</code></td>
<td><p>The task desired status to use when filtering the
<code>list_tasks</code> results. Specifying a <code>desiredStatus</code>
of <code>STOPPED</code> limits the results to tasks that Amazon ECS has
set the desired status to <code>STOPPED</code>. This can be useful for
debugging tasks that aren't starting properly or have died or finished.
The default status filter is <code>RUNNING</code>, which shows tasks
that Amazon ECS has set the desired status to <code>RUNNING</code>.</p>
<p>Although you can filter results based on a desired status of
<code>PENDING</code>, this doesn't return any results. Amazon ECS never
sets the desired status of a task to that value (only a task's
<code>lastStatus</code> may have a value of
<code>PENDING</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_tasks_:_launchType">launchType</code></td>
<td><p>The launch type to use when filtering the <code>list_tasks</code>
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_tasks(
      cluster = "string",
      containerInstance = "string",
      family = "string",
      nextToken = "string",
      maxResults = 123,
      startedBy = "string",
      serviceName = "string",
      desiredStatus = "RUNNING"|"PENDING"|"STOPPED",
      launchType = "EC2"|"FARGATE"|"EXTERNAL"
    )

### Examples

    ## Not run: 
    # This example lists all of the tasks in a cluster.
    svc$list_tasks(
      cluster = "default"
    )

    # This example lists the tasks of a specified container instance.
    # Specifying a `containerInstance` value limits  the  results  to  tasks
    #  that belong to that container instance.
    svc$list_tasks(
      cluster = "default",
      containerInstance = "f6bbb147-5370-4ace-8c73-c7181ded911f"
    )

    ## End(Not run)
