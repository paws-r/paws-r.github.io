<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_put_record_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records

### Description

Writes multiple data records into a delivery stream in a single call,
which can achieve higher throughput per producer than when writing
single records. To write single data records into a delivery stream, use
`put_record`. Applications using these operations are referred to as
producers.

For information about service quota, see [Amazon Kinesis Data Firehose
Quota](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).

Each `put_record_batch` request supports up to 500 records. Each record
in the request can be as large as 1,000 KB (before base64 encoding), up
to a limit of 4 MB for the entire request. These limits cannot be
changed.

You must specify the name of the delivery stream and the data record
when using `put_record`. The data record consists of a data blob that
can be up to 1,000 KB in size, and any kind of data. For example, it
could be a segment from a log file, geographic location data, website
clickstream data, and so on.

Kinesis Data Firehose buffers records before delivering them to the
destination. To disambiguate the data blobs at the destination, a common
solution is to use delimiters in the data, such as a newline (`⁠\\n⁠`) or
some other character unique within the data. This allows the consumer
application to parse individual data items when reading the data from
the destination.

The `put_record_batch` response includes a count of failed records,
`FailedPutCount`, and an array of responses, `RequestResponses`. Even if
the `put_record_batch` call succeeds, the value of `FailedPutCount` may
be greater than 0, indicating that there are records for which the
operation didn't succeed. Each entry in the `RequestResponses` array
provides additional information about the processed record. It directly
correlates with a record in the request array using the same ordering,
from the top to the bottom. The response array always includes the same
number of records as the request array. `RequestResponses` includes both
successfully and unsuccessfully processed records. Kinesis Data Firehose
tries to process all records in each `put_record_batch` request. A
single record failure does not stop the processing of subsequent
records.

A successfully processed record includes a `RecordId` value, which is
unique for the record. An unsuccessfully processed record includes
`ErrorCode` and `ErrorMessage` values. `ErrorCode` reflects the type of
error, and is one of the following values: `ServiceUnavailableException`
or `InternalFailure`. `ErrorMessage` provides more detailed information
about the error.

If there is an internal server error or a timeout, the write might have
completed or it might have failed. If `FailedPutCount` is greater than
0, retry the request, resending only those records that might have
failed processing. This minimizes the possible duplicate records and
also reduces the total bytes sent (and corresponding charges). We
recommend that you handle any duplicates at the destination.

If `put_record_batch` throws `ServiceUnavailableException`, back off and
retry. If the exception persists, it is possible that the throughput
limits have been exceeded for the delivery stream.

Data records sent to Kinesis Data Firehose are stored for 24 hours from
the time they are added to a delivery stream as it attempts to send the
records to the destination. If the destination is unreachable for more
than 24 hours, the data is no longer available.

Don't concatenate two or more base64 strings to form the data fields of
your records. Instead, concatenate the raw data, then perform base64
encoding.

### Usage

    firehose_put_record_batch(DeliveryStreamName, Records)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_put_record_batch_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream.</p></td>
</tr>
<tr class="even">
<td><code id="firehose_put_record_batch_:_Records">Records</code></td>
<td><p>[required] One or more records.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedPutCount = 123,
      Encrypted = TRUE|FALSE,
      RequestResponses = list(
        list(
          RecordId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$put_record_batch(
      DeliveryStreamName = "string",
      Records = list(
        list(
          Data = raw
        )
      )
    )
