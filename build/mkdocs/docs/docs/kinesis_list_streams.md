<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_list_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your Kinesis data streams

### Description

Lists your Kinesis data streams.

The number of streams may be too large to return from a single call to
`list_streams`. You can limit the number of returned streams using the
`Limit` parameter. If you do not specify a value for the `Limit`
parameter, Kinesis Data Streams uses the default limit, which is
currently 100.

You can detect if there are more streams available to list by using the
`HasMoreStreams` flag from the returned output. If there are more
streams available, you can request more streams by using the name of the
last stream returned by the `list_streams` request in the
`ExclusiveStartStreamName` parameter in a subsequent request to
`list_streams`. The group of stream names returned by the subsequent
request is then added to the list. You can continue this process until
all the stream names have been collected in the list.

`list_streams` has a limit of five transactions per second per account.

### Usage

    kinesis_list_streams(Limit, ExclusiveStartStreamName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_list_streams_:_Limit">Limit</code></td>
<td><p>The maximum number of streams to list. The default value is 100.
If you specify a value greater than 100, at most 100 results are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_list_streams_:_ExclusiveStartStreamName">ExclusiveStartStreamName</code></td>
<td><p>The name of the stream to start the list with.</p></td>
</tr>
<tr class="odd">
<td><code id="kinesis_list_streams_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamNames = list(
        "string"
      ),
      HasMoreStreams = TRUE|FALSE,
      NextToken = "string",
      StreamSummaries = list(
        list(
          StreamName = "string",
          StreamARN = "string",
          StreamStatus = "CREATING"|"DELETING"|"ACTIVE"|"UPDATING",
          StreamModeDetails = list(
            StreamMode = "PROVISIONED"|"ON_DEMAND"
          ),
          StreamCreationTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_streams(
      Limit = 123,
      ExclusiveStartStreamName = "string",
      NextToken = "string"
    )
