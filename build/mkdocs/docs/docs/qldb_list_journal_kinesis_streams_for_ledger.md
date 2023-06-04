<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_list_journal_kinesis_streams_for_ledger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all Amazon QLDB journal streams for a given ledger

### Description

Returns all Amazon QLDB journal streams for a given ledger.

This action does not return any expired journal streams. For more
information, see [Expiration for terminal
streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
in the *Amazon QLDB Developer Guide*.

This action returns a maximum of `MaxResults` items. It is paginated so
that you can retrieve all the items by calling
`list_journal_kinesis_streams_for_ledger` multiple times.

### Usage

    qldb_list_journal_kinesis_streams_for_ledger(LedgerName, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_list_journal_kinesis_streams_for_ledger_:_LedgerName">LedgerName</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_list_journal_kinesis_streams_for_ledger_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
<code>list_journal_kinesis_streams_for_ledger</code> request. (The
actual number of results returned might be fewer.)</p></td>
</tr>
<tr class="odd">
<td><code
id="qldb_list_journal_kinesis_streams_for_ledger_:_NextToken">NextToken</code></td>
<td><p>A pagination token, indicating that you want to retrieve the next
page of results. If you received a value for <code>NextToken</code> in
the response from a previous
<code>list_journal_kinesis_streams_for_ledger</code> call, you should
use that value as input here.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Streams = list(
        list(
          LedgerName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          InclusiveStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ExclusiveEndTime = as.POSIXct(
            "2015-01-01"
          ),
          RoleArn = "string",
          StreamId = "string",
          Arn = "string",
          Status = "ACTIVE"|"COMPLETED"|"CANCELED"|"FAILED"|"IMPAIRED",
          KinesisConfiguration = list(
            StreamArn = "string",
            AggregationEnabled = TRUE|FALSE
          ),
          ErrorCause = "KINESIS_STREAM_NOT_FOUND"|"IAM_PERMISSION_REVOKED",
          StreamName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_journal_kinesis_streams_for_ledger(
      LedgerName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
