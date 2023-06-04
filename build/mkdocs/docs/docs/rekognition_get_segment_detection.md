<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_segment_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the segment detection results of a Amazon Rekognition Video analysis started by StartSegmentDetection

### Description

Gets the segment detection results of a Amazon Rekognition Video
analysis started by `start_segment_detection`.

Segment detection with Amazon Rekognition Video is an asynchronous
operation. You start segment detection by calling
`start_segment_detection` which returns a job identifier (`JobId`). When
the segment detection operation finishes, Amazon Rekognition publishes a
completion status to the Amazon Simple Notification Service topic
registered in the initial call to `start_segment_detection`. To get the
results of the segment detection operation, first check that the status
value published to the Amazon SNS topic is `SUCCEEDED`. if so, call
`get_segment_detection` and pass the job identifier (`JobId`) from the
initial call of `start_segment_detection`.

`get_segment_detection` returns detected segments in an array
(`Segments`) of SegmentDetection objects. `Segments` is sorted by the
segment types specified in the `SegmentTypes` input parameter of
`start_segment_detection`. Each element of the array includes the
detected segment, the precentage confidence in the acuracy of the
detected segment, the type of the segment, and the frame in which the
segment was detected.

Use `SelectedSegmentTypes` to find out the type of segment detection
requested in the call to `start_segment_detection`.

Use the `MaxResults` parameter to limit the number of segment detections
returned. If there are more results than specified in `MaxResults`, the
value of `NextToken` in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call `get_segment_detection` and populate the `NextToken`
request parameter with the token value returned from the previous call
to `get_segment_detection`.

For more information, see Detecting video segments in stored video in
the Amazon Rekognition Developer Guide.

### Usage

    rekognition_get_segment_detection(JobId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_get_segment_detection_:_JobId">JobId</code></td>
<td><p>[required] Job identifier for the text detection operation for
which you want results returned. You get the job identifer from an
initial call to <code>start_segment_detection</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_segment_detection_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_segment_detection_:_NextToken">NextToken</code></td>
<td><p>If the response is truncated, Amazon Rekognition Video returns
this token that you can use in the subsequent request to retrieve the
next set of text.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
      StatusMessage = "string",
      VideoMetadata = list(
        list(
          Codec = "string",
          DurationMillis = 123,
          Format = "string",
          FrameRate = 123.0,
          FrameHeight = 123,
          FrameWidth = 123,
          ColorRange = "FULL"|"LIMITED"
        )
      ),
      AudioMetadata = list(
        list(
          Codec = "string",
          DurationMillis = 123,
          SampleRate = 123,
          NumberOfChannels = 123
        )
      ),
      NextToken = "string",
      Segments = list(
        list(
          Type = "TECHNICAL_CUE"|"SHOT",
          StartTimestampMillis = 123,
          EndTimestampMillis = 123,
          DurationMillis = 123,
          StartTimecodeSMPTE = "string",
          EndTimecodeSMPTE = "string",
          DurationSMPTE = "string",
          TechnicalCueSegment = list(
            Type = "ColorBars"|"EndCredits"|"BlackFrames"|"OpeningCredits"|"StudioLogo"|"Slate"|"Content",
            Confidence = 123.0
          ),
          ShotSegment = list(
            Index = 123,
            Confidence = 123.0
          ),
          StartFrameNumber = 123,
          EndFrameNumber = 123,
          DurationFrames = 123
        )
      ),
      SelectedSegmentTypes = list(
        list(
          Type = "TECHNICAL_CUE"|"SHOT",
          ModelVersion = "string"
        )
      ),
      JobId = "string",
      Video = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      JobTag = "string"
    )

### Request syntax

    svc$get_segment_detection(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
