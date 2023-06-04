<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_pending_aggregation_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all pending aggregation requests

### Description

Returns a list of all pending aggregation requests.

### Usage

    configservice_describe_pending_aggregation_requests(Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_pending_aggregation_requests_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
The default is maximum. If you specify 0, Config uses the
default.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_pending_aggregation_requests_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PendingAggregationRequests = list(
        list(
          RequesterAccountId = "string",
          RequesterAwsRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_pending_aggregation_requests(
      Limit = 123,
      NextToken = "string"
    )
