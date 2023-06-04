<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_content_moderation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts asynchronous detection of inappropriate, unwanted, or offensive content in a stored video

### Description

Starts asynchronous detection of inappropriate, unwanted, or offensive
content in a stored video. For a list of moderation labels in Amazon
Rekognition, see [Using the image and video moderation
APIs](https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api).

Amazon Rekognition Video can moderate content in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. `start_content_moderation` returns a job identifier
(`JobId`) which you use to get the results of the analysis. When content
analysis is finished, Amazon Rekognition Video publishes a completion
status to the Amazon Simple Notification Service topic that you specify
in `NotificationChannel`.

To get the results of the content analysis, first check that the status
value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
`get_content_moderation` and pass the job identifier (`JobId`) from the
initial call to `start_content_moderation`.

For more information, see Moderating content in the Amazon Rekognition
Developer Guide.

### Usage

    rekognition_start_content_moderation(Video, MinConfidence,
      ClientRequestToken, NotificationChannel, JobTag)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_content_moderation_:_Video">Video</code></td>
<td><p>[required] The video in which you want to detect inappropriate,
unwanted, or offensive content. The video must be stored in an Amazon S3
bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_content_moderation_:_MinConfidence">MinConfidence</code></td>
<td><p>Specifies the minimum confidence that Amazon Rekognition must
have in order to return a moderated content label. Confidence represents
how certain Amazon Rekognition is that the moderated content is
correctly identified. 0 is the lowest confidence. 100 is the highest
confidence. Amazon Rekognition doesn't return any moderated content
labels with a confidence level lower than this specified value. If you
don't specify <code>MinConfidence</code>,
<code>get_content_moderation</code> returns labels with confidence
values greater than or equal to 50 percent.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_content_moderation_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_content_moderation</code>
requests, the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidently started more than once.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_content_moderation_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The Amazon SNS topic ARN that you want Amazon Rekognition Video
to publish the completion status of the content analysis to. The Amazon
SNS topic must have a topic name that begins with
<em>AmazonRekognition</em> if you are using the
AmazonRekognitionServiceRole permissions policy to access the
topic.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_content_moderation_:_JobTag">JobTag</code></td>
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

    svc$start_content_moderation(
      Video = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      MinConfidence = 123.0,
      ClientRequestToken = "string",
      NotificationChannel = list(
        SNSTopicArn = "string",
        RoleArn = "string"
      ),
      JobTag = "string"
    )
