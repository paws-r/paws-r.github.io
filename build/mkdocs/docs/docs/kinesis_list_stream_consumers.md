<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_list_stream_consumers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the consumers registered to receive data from a stream using enhanced fan-out, and provides information about each consumer

### Description

Lists the consumers registered to receive data from a stream using
enhanced fan-out, and provides information about each consumer.

This operation has a limit of 5 transactions per second per stream.

### Usage

    kinesis_list_stream_consumers(StreamARN, NextToken, MaxResults,
      StreamCreationTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_list_stream_consumers_:_StreamARN">StreamARN</code></td>
<td><p>[required] The ARN of the Kinesis data stream for which you want
to list the registered consumers. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arn-syntax-kinesis-streams">Amazon
Resource Names (ARNs) and Amazon Web Services Service
Namespaces</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_list_stream_consumers_:_NextToken">NextToken</code></td>
<td><p>When the number of consumers that are registered with the data
stream is greater than the default value for the <code>MaxResults</code>
parameter, or if you explicitly specify a value for
<code>MaxResults</code> that is less than the number of consumers that
are registered with the data stream, the response includes a pagination
token named <code>NextToken</code>. You can specify this
<code>NextToken</code> value in a subsequent call to
<code>list_stream_consumers</code> to list the next set of registered
consumers.</p>
<p>Don't specify <code>StreamName</code> or
<code>StreamCreationTimestamp</code> if you specify
<code>NextToken</code> because the latter unambiguously identifies the
stream.</p>
<p>You can optionally specify a value for the <code>MaxResults</code>
parameter when you specify <code>NextToken</code>. If you specify a
<code>MaxResults</code> value that is less than the number of consumers
that the operation returns if you don't specify <code>MaxResults</code>,
the response will contain a new <code>NextToken</code> value. You can
use the new <code>NextToken</code> value in a subsequent call to the
<code>list_stream_consumers</code> operation to list the next set of
consumers.</p>
<p>Tokens expire after 300 seconds. When you obtain a value for
<code>NextToken</code> in the response to a call to
<code>list_stream_consumers</code>, you have 300 seconds to use that
value. If you specify an expired token in a call to
<code>list_stream_consumers</code>, you get
<code>ExpiredNextTokenException</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_list_stream_consumers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of consumers that you want a single call of
<code>list_stream_consumers</code> to return. The default value is 100.
If you specify a value greater than 100, at most 100 results are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_list_stream_consumers_:_StreamCreationTimestamp">StreamCreationTimestamp</code></td>
<td><p>Specify this input parameter to distinguish data streams that
have the same name. For example, if you create a data stream and then
delete it, and you later create another data stream with the same name,
you can use this input parameter to specify which of the two streams you
want to list the consumers for.</p>
<p>You can't specify this parameter if you specify the NextToken
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Consumers = list(
        list(
          ConsumerName = "string",
          ConsumerARN = "string",
          ConsumerStatus = "CREATING"|"DELETING"|"ACTIVE",
          ConsumerCreationTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_stream_consumers(
      StreamARN = "string",
      NextToken = "string",
      MaxResults = 123,
      StreamCreationTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )
