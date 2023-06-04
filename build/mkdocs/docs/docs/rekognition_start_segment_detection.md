<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_segment_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts asynchronous detection of segment detection in a stored video

### Description

Starts asynchronous detection of segment detection in a stored video.

Amazon Rekognition Video can detect segments in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. `start_segment_detection` returns a job identifier
(`JobId`) which you use to get the results of the operation. When
segment detection is finished, Amazon Rekognition Video publishes a
completion status to the Amazon Simple Notification Service topic that
you specify in `NotificationChannel`.

You can use the `Filters` (StartSegmentDetectionFilters) input parameter
to specify the minimum detection confidence returned in the response.
Within `Filters`, use `ShotFilter` (StartShotDetectionFilter) to filter
detected shots. Use `TechnicalCueFilter`
(StartTechnicalCueDetectionFilter) to filter technical cues.

To get the results of the segment detection operation, first check that
the status value published to the Amazon SNS topic is `SUCCEEDED`. if
so, call `get_segment_detection` and pass the job identifier (`JobId`)
from the initial call to `start_segment_detection`.

For more information, see Detecting video segments in stored video in
the Amazon Rekognition Developer Guide.

### Usage

    rekognition_start_segment_detection(Video, ClientRequestToken,
      NotificationChannel, JobTag, Filters, SegmentTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_segment_detection_:_Video">Video</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_segment_detection_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_segment_detection</code>
requests, the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidently started more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_segment_detection_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The ARN of the Amazon SNS topic to which you want Amazon
Rekognition Video to publish the completion status of the segment
detection operation. Note that the Amazon SNS topic must have a topic
name that begins with <em>AmazonRekognition</em> if you are using the
AmazonRekognitionServiceRole permissions policy to access the
topic.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_segment_detection_:_JobTag">JobTag</code></td>
<td><p>An identifier you specify that's returned in the completion
notification that's published to your Amazon Simple Notification Service
topic. For example, you can use <code>JobTag</code> to group related
jobs and identify them in the completion notification.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_segment_detection_:_Filters">Filters</code></td>
<td><p>Filters for technical cue or shot detection.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_segment_detection_:_SegmentTypes">SegmentTypes</code></td>
<td><p>[required] An array of segment types to detect in the video.
Valid values are TECHNICAL_CUE and SHOT.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_segment_detection(
      Video = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      ClientRequestToken = "string",
      NotificationChannel = list(
        SNSTopicArn = "string",
        RoleArn = "string"
      ),
      JobTag = "string",
      Filters = list(
        TechnicalCueFilter = list(
          MinSegmentConfidence = 123.0,
          BlackFrame = list(
            MaxPixelThreshold = 123.0,
            MinCoveragePercentage = 123.0
          )
        ),
        ShotFilter = list(
          MinSegmentConfidence = 123.0
        )
      ),
      SegmentTypes = list(
        "TECHNICAL_CUE"|"SHOT"
      )
    )
