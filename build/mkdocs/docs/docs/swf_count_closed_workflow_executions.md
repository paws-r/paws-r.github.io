<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_count_closed_workflow_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria

### Description

Returns the number of closed workflow executions within the given domain
that meet the specified filtering criteria.

This operation is eventually consistent. The results are best effort and
may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the following parameters by using a `Condition` element
    with the appropriate keys.

    -   `tagFilter.tag`: String constraint. The key is
        `swf:tagFilter.tag`.

    -   `typeFilter.name`: String constraint. The key is
        `swf:typeFilter.name`.

    -   `typeFilter.version`: String constraint. The key is
        `swf:typeFilter.version`.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_count_closed_workflow_executions(domain, startTimeFilter,
      closeTimeFilter, executionFilter, typeFilter, tagFilter,
      closeStatusFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="swf_count_closed_workflow_executions_:_domain">domain</code></td>
<td><p>[required] The name of the domain containing the workflow
executions to count.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_count_closed_workflow_executions_:_startTimeFilter">startTimeFilter</code></td>
<td><p>If specified, only workflow executions that meet the start time
criteria of the filter are counted.</p>
<p><code>startTimeFilter</code> and <code>closeTimeFilter</code> are
mutually exclusive. You must specify one of these in a request but not
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_count_closed_workflow_executions_:_closeTimeFilter">closeTimeFilter</code></td>
<td><p>If specified, only workflow executions that meet the close time
criteria of the filter are counted.</p>
<p><code>startTimeFilter</code> and <code>closeTimeFilter</code> are
mutually exclusive. You must specify one of these in a request but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_count_closed_workflow_executions_:_executionFilter">executionFilter</code></td>
<td><p>If specified, only workflow executions matching the
<code>WorkflowId</code> in the filter are counted.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_count_closed_workflow_executions_:_typeFilter">typeFilter</code></td>
<td><p>If specified, indicates the type of the workflow executions to be
counted.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_count_closed_workflow_executions_:_tagFilter">tagFilter</code></td>
<td><p>If specified, only executions that have a tag that matches the
filter are counted.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_count_closed_workflow_executions_:_closeStatusFilter">closeStatusFilter</code></td>
<td><p>If specified, only workflow executions that match this close
status are counted. This filter has an affect only if
<code>executionStatus</code> is specified as <code>CLOSED</code>.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
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

    svc$count_closed_workflow_executions(
      domain = "string",
      startTimeFilter = list(
        oldestDate = as.POSIXct(
          "2015-01-01"
        ),
        latestDate = as.POSIXct(
          "2015-01-01"
        )
      ),
      closeTimeFilter = list(
        oldestDate = as.POSIXct(
          "2015-01-01"
        ),
        latestDate = as.POSIXct(
          "2015-01-01"
        )
      ),
      executionFilter = list(
        workflowId = "string"
      ),
      typeFilter = list(
        name = "string",
        version = "string"
      ),
      tagFilter = list(
        tag = "string"
      ),
      closeStatusFilter = list(
        status = "COMPLETED"|"FAILED"|"CANCELED"|"TERMINATED"|"CONTINUED_AS_NEW"|"TIMED_OUT"
      )
    )
