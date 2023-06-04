<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_list_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all executions of a state machine or a Map Run

### Description

Lists all executions of a state machine or a Map Run. You can list all
executions related to a state machine by specifying a state machine
Amazon Resource Name (ARN), or those related to a Map Run by specifying
a Map Run ARN.

Results are sorted by time, with the most recent execution first.

If `nextToken` is returned, there are more results available. The value
of `nextToken` is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all other
arguments unchanged. Each pagination token expires after 24 hours. Using
an expired pagination token will return an *HTTP 400 InvalidToken*
error.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

This API action is not supported by `EXPRESS` state machines.

### Usage

    sfn_list_executions(stateMachineArn, statusFilter, maxResults,
      nextToken, mapRunArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_list_executions_:_stateMachineArn">stateMachineArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the state machine whose
executions is listed.</p>
<p>You can specify either a <code>mapRunArn</code> or a
<code>stateMachineArn</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_list_executions_:_statusFilter">statusFilter</code></td>
<td><p>If specified, only list the executions whose current execution
status matches the given filter.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_list_executions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>nextToken</code> to obtain further pages of results. The
default is 100 and the maximum allowed page size is 1000. A value of 0
uses the default.</p>
<p>This is only an upper limit. The actual number of results returned
per call might be fewer than the specified maximum.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_list_executions_:_nextToken">nextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours. Using an expired pagination
token will return an <em>HTTP 400 InvalidToken</em> error.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_list_executions_:_mapRunArn">mapRunArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Map Run that started the
child workflow executions. If the <code>mapRunArn</code> field is
specified, a list of all of the child workflow executions started by a
Map Run is returned. For more information, see <a
href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html">Examining
Map Run</a> in the <em>Step Functions Developer Guide</em>.</p>
<p>You can specify either a <code>mapRunArn</code> or a
<code>stateMachineArn</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      executions = list(
        list(
          executionArn = "string",
          stateMachineArn = "string",
          name = "string",
          status = "RUNNING"|"SUCCEEDED"|"FAILED"|"TIMED_OUT"|"ABORTED",
          startDate = as.POSIXct(
            "2015-01-01"
          ),
          stopDate = as.POSIXct(
            "2015-01-01"
          ),
          mapRunArn = "string",
          itemCount = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_executions(
      stateMachineArn = "string",
      statusFilter = "RUNNING"|"SUCCEEDED"|"FAILED"|"TIMED_OUT"|"ABORTED",
      maxResults = 123,
      nextToken = "string",
      mapRunArn = "string"
    )
