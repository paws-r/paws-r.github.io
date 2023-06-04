<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_task_definition_families</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of task definition families that are registered to your account

### Description

Returns a list of task definition families that are registered to your
account. This list includes task definition families that no longer have
any `ACTIVE` task definition revisions.

You can filter out task definition families that don't contain any
`ACTIVE` task definition revisions by setting the `status` parameter to
`ACTIVE`. You can also filter the results with the `familyPrefix`
parameter.

### Usage

    ecs_list_task_definition_families(familyPrefix, status, nextToken,
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
id="ecs_list_task_definition_families_:_familyPrefix">familyPrefix</code></td>
<td><p>The <code>familyPrefix</code> is a string that's used to filter
the results of <code>list_task_definition_families</code>. If you
specify a <code>familyPrefix</code>, only task definition family names
that begin with the <code>familyPrefix</code> string are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_task_definition_families_:_status">status</code></td>
<td><p>The task definition family status to filter the
<code>list_task_definition_families</code> results with. By default,
both <code>ACTIVE</code> and <code>INACTIVE</code> task definition
families are listed. If this parameter is set to <code>ACTIVE</code>,
only task definition families that have an <code>ACTIVE</code> task
definition revision are returned. If this parameter is set to
<code>INACTIVE</code>, only task definition families that do not have
any <code>ACTIVE</code> task definition revisions are returned. If you
paginate the resulting output, be sure to keep the <code>status</code>
value constant in each subsequent request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_task_definition_families_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_task_definition_families</code> request indicating that more
results are available to fulfill the request and further calls will be
needed. If <code>maxResults</code> was provided, it is possible the
number of results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_task_definition_families_:_maxResults">maxResults</code></td>
<td><p>The maximum number of task definition family results that
<code>list_task_definition_families</code> returned in paginated output.
When this parameter is used, <code>list_task_definitions</code> only
returns <code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_task_definition_families</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then
<code>list_task_definition_families</code> returns up to 100 results and
a <code>nextToken</code> value if applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      families = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_task_definition_families(
      familyPrefix = "string",
      status = "ACTIVE"|"INACTIVE"|"ALL",
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # This example lists all of your registered task definition families.
    svc$list_task_definition_families()

    # This example lists the task definition revisions that start with "hpcc".
    svc$list_task_definition_families(
      familyPrefix = "hpcc"
    )

    ## End(Not run)
