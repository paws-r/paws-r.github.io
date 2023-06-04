<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_list_state_machines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the existing state machines

### Description

Lists the existing state machines.

If `nextToken` is returned, there are more results available. The value
of `nextToken` is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all other
arguments unchanged. Each pagination token expires after 24 hours. Using
an expired pagination token will return an *HTTP 400 InvalidToken*
error.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

### Usage

    sfn_list_state_machines(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_list_state_machines_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>nextToken</code> to obtain further pages of results. The
default is 100 and the maximum allowed page size is 1000. A value of 0
uses the default.</p>
<p>This is only an upper limit. The actual number of results returned
per call might be fewer than the specified maximum.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_list_state_machines_:_nextToken">nextToken</code></td>
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
      stateMachines = list(
        list(
          stateMachineArn = "string",
          name = "string",
          type = "STANDARD"|"EXPRESS",
          creationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_state_machines(
      maxResults = 123,
      nextToken = "string"
    )
