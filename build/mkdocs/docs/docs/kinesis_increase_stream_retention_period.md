<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_increase_stream_retention_period</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Increases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream

### Description

Increases the Kinesis data stream's retention period, which is the
length of time data records are accessible after they are added to the
stream. The maximum value of a stream's retention period is 8760 hours
(365 days).

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

If you choose a longer stream retention period, this operation increases
the time period during which records that have not yet expired are
accessible. However, it does not make previous, expired data (older than
the stream's previous retention period) accessible after the operation
has been called. For example, if a stream's retention period is set to
24 hours and is increased to 168 hours, any data that is older than 24
hours remains inaccessible to consumer applications.

### Usage

    kinesis_increase_stream_retention_period(StreamName,
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
id="kinesis_increase_stream_retention_period_:_StreamName">StreamName</code></td>
<td><p>The name of the stream to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_increase_stream_retention_period_:_RetentionPeriodHours">RetentionPeriodHours</code></td>
<td><p>[required] The new retention period of the stream, in hours. Must
be more than the current retention period.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_increase_stream_retention_period_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$increase_stream_retention_period(
      StreamName = "string",
      RetentionPeriodHours = 123,
      StreamARN = "string"
    )
