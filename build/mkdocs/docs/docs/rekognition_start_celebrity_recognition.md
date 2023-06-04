<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_celebrity_recognition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts asynchronous recognition of celebrities in a stored video

### Description

Starts asynchronous recognition of celebrities in a stored video.

Amazon Rekognition Video can detect celebrities in a video must be
stored in an Amazon S3 bucket. Use Video to specify the bucket name and
the filename of the video. `start_celebrity_recognition` returns a job
identifier (`JobId`) which you use to get the results of the analysis.
When celebrity recognition analysis is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in `NotificationChannel`. To get the
results of the celebrity recognition analysis, first check that the
status value published to the Amazon SNS topic is `SUCCEEDED`. If so,
call `get_celebrity_recognition` and pass the job identifier (`JobId`)
from the initial call to `start_celebrity_recognition`.

For more information, see Recognizing celebrities in the Amazon
Rekognition Developer Guide.

### Usage

    rekognition_start_celebrity_recognition(Video, ClientRequestToken,
      NotificationChannel, JobTag)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_celebrity_recognition_:_Video">Video</code></td>
<td><p>[required] The video in which you want to recognize celebrities.
The video must be stored in an Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_celebrity_recognition_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_celebrity_recognition</code>
requests, the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidently started more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_celebrity_recognition_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The Amazon SNS topic ARN that you want Amazon Rekognition Video
to publish the completion status of the celebrity recognition analysis
to. The Amazon SNS topic must have a topic name that begins with
<em>AmazonRekognition</em> if you are using the
AmazonRekognitionServiceRole permissions policy.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_celebrity_recognition_:_JobTag">JobTag</code></td>
<td><p>An identifier you specify that's returned in the completion
notification that's published to your Amazon Simple Notification Service
topic. For example, you can use <code>JobTag</code> to group related
jobs and identify them in the completion notification.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_celebrity_recognition(
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
      JobTag = "string"
    )
