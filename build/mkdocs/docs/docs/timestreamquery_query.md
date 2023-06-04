<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Query is a synchronous operation that enables you to run a query against your Amazon Timestream data

### Description

`query` is a synchronous operation that enables you to run a query
against your Amazon Timestream data. `query` will time out after 60
seconds. You must update the default timeout in the SDK to support a
timeout of 60 seconds. See the [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html)
for details.

Your query request will fail in the following cases:

-   If you submit a `query` request with the same client token outside
    of the 5-minute idempotency window.

-   If you submit a `query` request with the same client token, but
    change other parameters, within the 5-minute idempotency window.

-   If the size of the row (including the query metadata) exceeds 1 MB,
    then the query will fail with the following error message:

    `⁠Query aborted as max page response size has been exceeded by the output result row⁠`

-   If the IAM principal of the query initiator and the result reader
    are not the same and/or the query initiator and the result reader do
    not have the same query string in the query requests, the query will
    fail with an `⁠Invalid pagination token⁠` error.

### Usage

    timestreamquery_query(QueryString, ClientToken, NextToken, MaxRows)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_query_:_QueryString">QueryString</code></td>
<td><p>[required] The query to be run by Timestream.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_query_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive string of up to 64 ASCII characters
specified when a <code>query</code> request is made. Providing a
<code>ClientToken</code> makes the call to <code>query</code>
<em>idempotent</em>. This means that running the same query repeatedly
will produce the same result. In other words, making multiple identical
<code>query</code> requests has the same effect as making a single
request. When using <code>ClientToken</code> in a query, note the
following:</p>
<ul>
<li><p>If the Query API is instantiated without a
<code>ClientToken</code>, the Query SDK generates a
<code>ClientToken</code> on your behalf.</p></li>
<li><p>If the <code>query</code> invocation only contains the
<code>ClientToken</code> but does not include a <code>NextToken</code>,
that invocation of <code>query</code> is assumed to be a new query
run.</p></li>
<li><p>If the invocation contains <code>NextToken</code>, that
particular invocation is assumed to be a subsequent invocation of a
prior call to the Query API, and a result set is returned.</p></li>
<li><p>After 4 hours, any request with the same <code>ClientToken</code>
is treated as a new request.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="timestreamquery_query_:_NextToken">NextToken</code></td>
<td><p>A pagination token used to return a set of results. When the
<code>query</code> API is invoked using <code>NextToken</code>, that
particular invocation is assumed to be a subsequent invocation of a
prior call to <code>query</code>, and a result set is returned. However,
if the <code>query</code> invocation only contains the
<code>ClientToken</code>, that invocation of <code>query</code> is
assumed to be a new query run.</p>
<p>Note the following when using NextToken in a query:</p>
<ul>
<li><p>A pagination token can be used for up to five <code>query</code>
invocations, OR for a duration of up to 1 hour – whichever comes
first.</p></li>
<li><p>Using the same <code>NextToken</code> will return the same set of
records. To keep paginating through the result set, you must to use the
most recent <code>nextToken</code>.</p></li>
<li><p>Suppose a <code>query</code> invocation returns two
<code>NextToken</code> values, <code>TokenA</code> and
<code>TokenB</code>. If <code>TokenB</code> is used in a subsequent
<code>query</code> invocation, then <code>TokenA</code> is invalidated
and cannot be reused.</p></li>
<li><p>To request a previous result set from a query after pagination
has begun, you must re-invoke the Query API.</p></li>
<li><p>The latest <code>NextToken</code> should be used to paginate
until <code>null</code> is returned, at which point a new
<code>NextToken</code> should be used.</p></li>
<li><p>If the IAM principal of the query initiator and the result reader
are not the same and/or the query initiator and the result reader do not
have the same query string in the query requests, the query will fail
with an <code style="white-space: pre;">⁠Invalid pagination token⁠</code>
error.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="timestreamquery_query_:_MaxRows">MaxRows</code></td>
<td><p>The total number of rows to be returned in the <code>query</code>
output. The initial run of <code>query</code> with a
<code>MaxRows</code> value specified will return the result set of the
query in two cases:</p>
<ul>
<li><p>The size of the result is less than <code
style="white-space: pre;">⁠1MB⁠</code>.</p></li>
<li><p>The number of rows in the result set is less than the value of
<code>maxRows</code>.</p></li>
</ul>
<p>Otherwise, the initial invocation of <code>query</code> only returns
a <code>NextToken</code>, which can then be used in subsequent calls to
fetch the result set. To resume pagination, provide the
<code>NextToken</code> value in the subsequent command.</p>
<p>If the row size is large (e.g. a row has many columns), Timestream
may return fewer rows to keep the response size from exceeding the 1 MB
limit. If <code>MaxRows</code> is not provided, Timestream will send the
necessary number of rows to meet the 1 MB limit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryId = "string",
      NextToken = "string",
      Rows = list(
        list(
          Data = list(
            list(
              ScalarValue = "string",
              TimeSeriesValue = list(
                list(
                  Time = "string",
                  Value = list()
                )
              ),
              ArrayValue = list(),
              RowValue = list(),
              NullValue = TRUE|FALSE
            )
          )
        )
      ),
      ColumnInfo = list(
        list(
          Name = "string",
          Type = list(
            ScalarType = "VARCHAR"|"BOOLEAN"|"BIGINT"|"DOUBLE"|"TIMESTAMP"|"DATE"|"TIME"|"INTERVAL_DAY_TO_SECOND"|"INTERVAL_YEAR_TO_MONTH"|"UNKNOWN"|"INTEGER",
            ArrayColumnInfo = list(),
            TimeSeriesMeasureValueColumnInfo = list(),
            RowColumnInfo = list()
          )
        )
      ),
      QueryStatus = list(
        ProgressPercentage = 123.0,
        CumulativeBytesScanned = 123,
        CumulativeBytesMetered = 123
      )
    )

### Request syntax

    svc$query(
      QueryString = "string",
      ClientToken = "string",
      NextToken = "string",
      MaxRows = 123
    )
