<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_put_trace_segments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads segment documents to Amazon Web Services X-Ray

### Description

Uploads segment documents to Amazon Web Services X-Ray. The [X-Ray
SDK](https://docs.aws.amazon.com/xray/index.html) generates segment
documents and sends them to the X-Ray daemon, which uploads them in
batches. A segment document can be a completed segment, an in-progress
segment, or an array of subsegments.

Segments must include the following fields. For the full segment
document schema, see [Amazon Web Services X-Ray Segment
Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
in the *Amazon Web Services X-Ray Developer Guide*.

**Required segment document fields**

-   `name` - The name of the service that handled the request.

-   `id` - A 64-bit identifier for the segment, unique among segments in
    the same trace, in 16 hexadecimal digits.

-   `trace_id` - A unique identifier that connects all segments and
    subsegments originating from a single client request.

-   `start_time` - Time the segment or subsegment was created, in
    floating point seconds in epoch time, accurate to milliseconds. For
    example, `1480615200.010` or `1.480615200010E9`.

-   `end_time` - Time the segment or subsegment was closed. For example,
    `1480615200.090` or `1.480615200090E9`. Specify either an `end_time`
    or `in_progress`.

-   `in_progress` - Set to `true` instead of specifying an `end_time` to
    record that a segment has been started, but is not complete. Send an
    in-progress segment when your application receives a request that
    will take a long time to serve, to trace that the request was
    received. When the response is sent, send the complete segment to
    overwrite the in-progress segment.

A `trace_id` consists of three numbers separated by hyphens. For
example, 1-58406520-a006649127e371903a2de979. This includes:

**Trace ID Format**

-   The version number, for instance, `1`.

-   The time of the original request, in Unix epoch time, in 8
    hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in
    epoch time is `1480615200` seconds, or `58406520` in hexadecimal.

-   A 96-bit identifier for the trace, globally unique, in 24
    hexadecimal digits.

### Usage

    xray_put_trace_segments(TraceSegmentDocuments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_put_trace_segments_:_TraceSegmentDocuments">TraceSegmentDocuments</code></td>
<td><p>[required] A string containing a JSON document defining one or
more segments or subsegments.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedTraceSegments = list(
        list(
          Id = "string",
          ErrorCode = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$put_trace_segments(
      TraceSegmentDocuments = list(
        "string"
      )
    )
