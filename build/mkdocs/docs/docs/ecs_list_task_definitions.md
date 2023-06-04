<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_task_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of task definitions that are registered to your account

### Description

Returns a list of task definitions that are registered to your account.
You can filter the results by family name with the `familyPrefix`
parameter or by status with the `status` parameter.

### Usage

    ecs_list_task_definitions(familyPrefix, status, sort, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_list_task_definitions_:_familyPrefix">familyPrefix</code></td>
<td><p>The full family name to filter the
<code>list_task_definitions</code> results with. Specifying a
<code>familyPrefix</code> limits the listed task definitions to task
definition revisions that belong to that family.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_task_definitions_:_status">status</code></td>
<td><p>The task definition status to filter the
<code>list_task_definitions</code> results with. By default, only
<code>ACTIVE</code> task definitions are listed. By setting this
parameter to <code>INACTIVE</code>, you can view task definitions that
are <code>INACTIVE</code> as long as an active task or service still
references them. If you paginate the resulting output, be sure to keep
the <code>status</code> value constant in each subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_task_definitions_:_sort">sort</code></td>
<td><p>The order to sort the results in. Valid values are
<code>ASC</code> and <code>DESC</code>. By default, (<code>ASC</code>)
task definitions are listed lexicographically by family name and in
ascending numerical order by revision so that the newest task
definitions in a family are listed last. Setting this parameter to
<code>DESC</code> reverses the sort order on family name and revision.
This is so that the newest task definitions in a family are listed
first.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_task_definitions_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_task_definitions</code> request indicating that more results
are available to fulfill the request and further calls will be needed.
If <code>maxResults</code> was provided, it is possible the number of
results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_task_definitions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of task definition results that
<code>list_task_definitions</code> returned in paginated output. When
this parameter is used, <code>list_task_definitions</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_task_definitions</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>list_task_definitions</code>
returns up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskDefinitionArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_task_definitions(
      familyPrefix = "string",
      status = "ACTIVE"|"INACTIVE"|"DELETE_IN_PROGRESS",
      sort = "ASC"|"DESC",
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # This example lists all of your registered task definitions.
    svc$list_task_definitions()

    # This example lists the task definition revisions of a specified family.
    svc$list_task_definitions(
      familyPrefix = "wordpress"
    )

    ## End(Not run)
