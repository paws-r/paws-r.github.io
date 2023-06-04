<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_decrease_stream_retention_period</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Decreases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream

### Description

Decreases the Kinesis data stream's retention period, which is the
length of time data records are accessible after they are added to the
stream. The minimum value of a stream's retention period is 24 hours.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

This operation may result in lost data. For example, if the stream's
retention period is 48 hours and is decreased to 24 hours, any data
already in the stream that is older than 24 hours is inaccessible.

### Usage

    kinesis_decrease_stream_retention_period(StreamName,
      RetentionPeriodHours, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_decrease_stream_retention_period_:_StreamName">StreamName</code></td>
<td><p>The name of the stream to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_decrease_stream_retention_period_:_RetentionPeriodHours">RetentionPeriodHours</code></td>
<td><p>[required] The new retention period of the stream, in hours. Must
be less than the current retention period.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_decrease_stream_retention_period_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$decrease_stream_retention_period(
      StreamName = "string",
      RetentionPeriodHours = 123,
      StreamARN = "string"
    )
