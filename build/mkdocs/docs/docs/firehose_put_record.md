<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_put_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Writes a single data record into an Amazon Kinesis Data Firehose delivery stream

### Description

Writes a single data record into an Amazon Kinesis Data Firehose
delivery stream. To write multiple data records into a delivery stream,
use `put_record_batch`. Applications using these operations are referred
to as producers.

By default, each delivery stream can take in up to 2,000 transactions
per second, 5,000 records per second, or 5 MB per second. If you use
`put_record` and `put_record_batch`, the limits are an aggregate across
these two operations for each delivery stream. For more information
about limits and how to request an increase, see [Amazon Kinesis Data
Firehose
Limits](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).

You must specify the name of the delivery stream and the data record
when using `put_record`. The data record consists of a data blob that
can be up to 1,000 KiB in size, and any kind of data. For example, it
can be a segment from a log file, geographic location data, website
clickstream data, and so on.

Kinesis Data Firehose buffers records before delivering them to the
destination. To disambiguate the data blobs at the destination, a common
solution is to use delimiters in the data, such as a newline (`⁠\\n⁠`) or
some other character unique within the data. This allows the consumer
application to parse individual data items when reading the data from
the destination.

The `put_record` operation returns a `RecordId`, which is a unique
string assigned to each record. Producer applications can use this ID
for purposes such as auditability and investigation.

If the `put_record` operation throws a `ServiceUnavailableException`,
back off and retry. If the exception persists, it is possible that the
throughput limits have been exceeded for the delivery stream.

Data records sent to Kinesis Data Firehose are stored for 24 hours from
the time they are added to a delivery stream as it tries to send the
records to the destination. If the destination is unreachable for more
than 24 hours, the data is no longer available.

Don't concatenate two or more base64 strings to form the data fields of
your records. Instead, concatenate the raw data, then perform base64
encoding.

### Usage

    firehose_put_record(DeliveryStreamName, Record)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_put_record_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream.</p></td>
</tr>
<tr class="even">
<td><code id="firehose_put_record_:_Record">Record</code></td>
<td><p>[required] The record.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecordId = "string",
      Encrypted = TRUE|FALSE
    )

### Request syntax

    svc$put_record(
      DeliveryStreamName = "string",
      Record = list(
        Data = raw
      )
    )
