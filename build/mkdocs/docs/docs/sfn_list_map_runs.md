<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_list_map_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Map Runs that were started by a given state machine execution

### Description

Lists all Map Runs that were started by a given state machine execution.
Use this API action to obtain Map Run ARNs, and then call
`describe_map_run` to obtain more information, if needed.

### Usage

    sfn_list_map_runs(executionArn, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_list_map_runs_:_executionArn">executionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the execution for
which the Map Runs must be listed.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_list_map_runs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>nextToken</code> to obtain further pages of results. The
default is 100 and the maximum allowed page size is 1000. A value of 0
uses the default.</p>
<p>This is only an upper limit. The actual number of results returned
per call might be fewer than the specified maximum.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_list_map_runs_:_nextToken">nextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours. Using an expired pagination
token will return an <em>HTTP 400 InvalidToken</em> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      mapRuns = list(
        list(
          executionArn = "string",
          mapRunArn = "string",
          stateMachineArn = "string",
          startDate = as.POSIXct(
            "2015-01-01"
          ),
          stopDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_map_runs(
      executionArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
