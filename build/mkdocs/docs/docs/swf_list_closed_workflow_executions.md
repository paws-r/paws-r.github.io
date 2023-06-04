<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_list_closed_workflow_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of closed workflow executions in the specified domain that meet the filtering criteria

### Description

Returns a list of closed workflow executions in the specified domain
that meet the filtering criteria. The results may be split into multiple
pages. To retrieve subsequent pages, make the call again using the
nextPageToken returned by the initial call.

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

    swf_list_closed_workflow_executions(domain, startTimeFilter,
      closeTimeFilter, executionFilter, closeStatusFilter, typeFilter,
      tagFilter, nextPageToken, maximumPageSize, reverseOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="swf_list_closed_workflow_executions_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the workflow
executions to list.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_closed_workflow_executions_:_startTimeFilter">startTimeFilter</code></td>
<td><p>If specified, the workflow executions are included in the
returned results based on whether their start times are within the range
specified by this filter. Also, if this parameter is specified, the
returned results are ordered by their start times.</p>
<p><code>startTimeFilter</code> and <code>closeTimeFilter</code> are
mutually exclusive. You must specify one of these in a request but not
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_list_closed_workflow_executions_:_closeTimeFilter">closeTimeFilter</code></td>
<td><p>If specified, the workflow executions are included in the
returned results based on whether their close times are within the range
specified by this filter. Also, if this parameter is specified, the
returned results are ordered by their close times.</p>
<p><code>startTimeFilter</code> and <code>closeTimeFilter</code> are
mutually exclusive. You must specify one of these in a request but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_closed_workflow_executions_:_executionFilter">executionFilter</code></td>
<td><p>If specified, only workflow executions matching the workflow ID
specified in the filter are returned.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_list_closed_workflow_executions_:_closeStatusFilter">closeStatusFilter</code></td>
<td><p>If specified, only workflow executions that match this <em>close
status</em> are listed. For example, if TERMINATED is specified, then
only TERMINATED workflow executions are listed.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_closed_workflow_executions_:_typeFilter">typeFilter</code></td>
<td><p>If specified, only executions of the type specified in the filter
are returned.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_list_closed_workflow_executions_:_tagFilter">tagFilter</code></td>
<td><p>If specified, only executions that have the matching tag are
listed.</p>
<p><code>closeStatusFilter</code>, <code>executionFilter</code>,
<code>typeFilter</code> and <code>tagFilter</code> are mutually
exclusive. You can specify at most one of these in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_closed_workflow_executions_:_nextPageToken">nextPageToken</code></td>
<td><p>If <code>NextPageToken</code> is returned there are more results
available. The value of <code>NextPageToken</code> is a unique
pagination token for each page. Make the call again using the returned
token to retrieve the next page. Keep all other arguments unchanged.
Each pagination token expires after 24 hours. Using an expired
pagination token will return a <code>400</code> error: "<code
style="white-space: pre;">⁠Specified token has exceeded its maximum lifetime⁠</code>".</p>
<p>The configured <code>maximumPageSize</code> determines how many
results can be returned in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_list_closed_workflow_executions_:_maximumPageSize">maximumPageSize</code></td>
<td><p>The maximum number of results that are returned per call. Use
<code>nextPageToken</code> to obtain further pages of results.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_list_closed_workflow_executions_:_reverseOrder">reverseOrder</code></td>
<td><p>When set to <code>true</code>, returns the results in reverse
order. By default the results are returned in descending order of the
start or the close time of the executions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      executionInfos = list(
        list(
          execution = list(
            workflowId = "string",
            runId = "string"
          ),
          workflowType = list(
            name = "string",
            version = "string"
          ),
          startTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          closeTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          executionStatus = "OPEN"|"CLOSED",
          closeStatus = "COMPLETED"|"FAILED"|"CANCELED"|"TERMINATED"|"CONTINUED_AS_NEW"|"TIMED_OUT",
          parent = list(
            workflowId = "string",
            runId = "string"
          ),
          tagList = list(
            "string"
          ),
          cancelRequested = TRUE|FALSE
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$list_closed_workflow_executions(
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
      closeStatusFilter = list(
        status = "COMPLETED"|"FAILED"|"CANCELED"|"TERMINATED"|"CONTINUED_AS_NEW"|"TIMED_OUT"
      ),
      typeFilter = list(
        name = "string",
        version = "string"
      ),
      tagFilter = list(
        tag = "string"
      ),
      nextPageToken = "string",
      maximumPageSize = 123,
      reverseOrder = TRUE|FALSE
    )
