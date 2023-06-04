<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_text_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts asynchronous detection of text in a stored video

### Description

Starts asynchronous detection of text in a stored video.

Amazon Rekognition Video can detect text in a video stored in an Amazon
S3 bucket. Use Video to specify the bucket name and the filename of the
video. `start_text_detection` returns a job identifier (`JobId`) which
you use to get the results of the operation. When text detection is
finished, Amazon Rekognition Video publishes a completion status to the
Amazon Simple Notification Service topic that you specify in
`NotificationChannel`.

To get the results of the text detection operation, first check that the
status value published to the Amazon SNS topic is `SUCCEEDED`. if so,
call `get_text_detection` and pass the job identifier (`JobId`) from the
initial call to `start_text_detection`.

### Usage

    rekognition_start_text_detection(Video, ClientRequestToken,
      NotificationChannel, JobTag, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_text_detection_:_Video">Video</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_text_detection_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_text_detection</code> requests,
the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidentaly started more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_text_detection_:_NotificationChannel">NotificationChannel</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_text_detection_:_JobTag">JobTag</code></td>
<td><p>An identifier returned in the completion status published by your
Amazon Simple Notification Service topic. For example, you can use
<code>JobTag</code> to group related jobs and identify them in the
completion notification.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_text_detection_:_Filters">Filters</code></td>
<td><p>Optional parameters that let you set criteria the text must meet
to be included in your response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_text_detection(
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
        WordFilter = list(
          MinConfidence = 123.0,
          MinBoundingBoxHeight = 123.0,
          MinBoundingBoxWidth = 123.0
        ),
        RegionsOfInterest = list(
          list(
            BoundingBox = list(
              Width = 123.0,
              Height = 123.0,
              Left = 123.0,
              Top = 123.0
            ),
            Polygon = list(
              list(
                X = 123.0,
                Y = 123.0
              )
            )
          )
        )
      )
    )
