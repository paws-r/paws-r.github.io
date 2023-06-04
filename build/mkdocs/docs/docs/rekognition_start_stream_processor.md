<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_stream_processor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts processing a stream processor

### Description

Starts processing a stream processor. You create a stream processor by
calling `create_stream_processor`. To tell `start_stream_processor`
which stream processor to start, use the value of the `Name` field
specified in the call to `create_stream_processor`.

If you are using a label detection stream processor to detect labels,
you need to provide a `⁠Start selector⁠` and a `⁠Stop selector⁠` to
determine the length of the stream processing time.

### Usage

    rekognition_start_stream_processor(Name, StartSelector, StopSelector)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_stream_processor_:_Name">Name</code></td>
<td><p>[required] The name of the stream processor to start
processing.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_stream_processor_:_StartSelector">StartSelector</code></td>
<td><p>Specifies the starting point in the Kinesis stream to start
processing. You can use the producer timestamp or the fragment number.
If you use the producer timestamp, you must put the time in
milliseconds. For more information about fragment numbers, see <a
href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html">Fragment</a>.</p>
<p>This is a required parameter for label detection stream processors
and should not be used to start a face search stream processor.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_stream_processor_:_StopSelector">StopSelector</code></td>
<td><p>Specifies when to stop processing the stream. You can specify a
maximum amount of time to process the video.</p>
<p>This is a required parameter for label detection stream processors
and should not be used to start a face search stream processor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string"
    )

### Request syntax

    svc$start_stream_processor(
      Name = "string",
      StartSelector = list(
        KVSStreamStartSelector = list(
          ProducerTimestamp = 123,
          FragmentNumber = "string"
        )
      ),
      StopSelector = list(
        MaxDurationInSeconds = 123
      )
    )
