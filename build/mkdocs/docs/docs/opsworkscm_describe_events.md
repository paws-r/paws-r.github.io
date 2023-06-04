<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes events for a specified server

### Description

Describes events for a specified server. Results are ordered by time,
with newest events first.

This operation is synchronous.

A `ResourceNotFoundException` is thrown when the server does not exist.
A `ValidationException` is raised when parameters of the request are not
valid.

### Usage

    opsworkscm_describe_events(ServerName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_describe_events_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server for which you want to view
events.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_describe_events_:_NextToken">NextToken</code></td>
<td><p>NextToken is a string that is returned in some command responses.
It indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call <code>describe_events</code> again, and assign the token
from the previous results as the value of the <code>nextToken</code>
parameter. If there are no more results, the response object's
<code>nextToken</code> parameter value is <code>null</code>. Setting a
<code>nextToken</code> value that was not returned in your previous
results causes an <code>InvalidNextTokenException</code> to
occur.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_describe_events_:_MaxResults">MaxResults</code></td>
<td><p>To receive a paginated response, use this parameter to specify
the maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServerEvents = list(
        list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          ServerName = "string",
          Message = "string",
          LogUrl = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_events(
      ServerName = "string",
      NextToken = "string",
      MaxResults = 123
    )
