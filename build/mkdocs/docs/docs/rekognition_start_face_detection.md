<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_face_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts asynchronous detection of faces in a stored video

### Description

Starts asynchronous detection of faces in a stored video.

Amazon Rekognition Video can detect faces in a video stored in an Amazon
S3 bucket. Use Video to specify the bucket name and the filename of the
video. `start_face_detection` returns a job identifier (`JobId`) that
you use to get the results of the operation. When face detection is
finished, Amazon Rekognition Video publishes a completion status to the
Amazon Simple Notification Service topic that you specify in
`NotificationChannel`. To get the results of the face detection
operation, first check that the status value published to the Amazon SNS
topic is `SUCCEEDED`. If so, call `get_face_detection` and pass the job
identifier (`JobId`) from the initial call to `start_face_detection`.

For more information, see Detecting faces in a stored video in the
Amazon Rekognition Developer Guide.

### Usage

    rekognition_start_face_detection(Video, ClientRequestToken,
      NotificationChannel, FaceAttributes, JobTag)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_face_detection_:_Video">Video</code></td>
<td><p>[required] The video in which you want to detect faces. The video
must be stored in an Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_face_detection_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_face_detection</code> requests,
the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidently started more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_face_detection_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The ARN of the Amazon SNS topic to which you want Amazon
Rekognition Video to publish the completion status of the face detection
operation. The Amazon SNS topic must have a topic name that begins with
<em>AmazonRekognition</em> if you are using the
AmazonRekognitionServiceRole permissions policy.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_face_detection_:_FaceAttributes">FaceAttributes</code></td>
<td><p>The face attributes you want returned.</p>
<p><code>DEFAULT</code> - The following subset of facial attributes are
returned: BoundingBox, Confidence, Pose, Quality and Landmarks.</p>
<p><code>ALL</code> - All facial attributes are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_face_detection_:_JobTag">JobTag</code></td>
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

    svc$start_face_detection(
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
      FaceAttributes = "DEFAULT"|"ALL",
      JobTag = "string"
    )
