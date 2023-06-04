<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_face_search</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video

### Description

Starts the asynchronous search for faces in a collection that match the
faces of persons detected in a stored video.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. `start_face_search`
returns a job identifier (`JobId`) which you use to get the search
results once the search has completed. When searching is finished,
Amazon Rekognition Video publishes a completion status to the Amazon
Simple Notification Service topic that you specify in
`NotificationChannel`. To get the search results, first check that the
status value published to the Amazon SNS topic is `SUCCEEDED`. If so,
call `get_face_search` and pass the job identifier (`JobId`) from the
initial call to `start_face_search`. For more information, see
[Searching stored videos for
faces](https://docs.aws.amazon.com/rekognition/latest/dg/procedure-person-search-videos.html).

### Usage

    rekognition_start_face_search(Video, ClientRequestToken,
      FaceMatchThreshold, CollectionId, NotificationChannel, JobTag)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_start_face_search_:_Video">Video</code></td>
<td><p>[required] The video you want to search. The video must be stored
in an Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_face_search_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_face_search</code> requests,
the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidently started more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_face_search_:_FaceMatchThreshold">FaceMatchThreshold</code></td>
<td><p>The minimum confidence in the person match to return. For
example, don't return any matches where confidence in matches is less
than 70%. The default value is 80%.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_face_search_:_CollectionId">CollectionId</code></td>
<td><p>[required] ID of the collection that contains the faces you want
to search for.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_face_search_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The ARN of the Amazon SNS topic to which you want Amazon
Rekognition Video to publish the completion status of the search. The
Amazon SNS topic must have a topic name that begins with
<em>AmazonRekognition</em> if you are using the
AmazonRekognitionServiceRole permissions policy to access the
topic.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_start_face_search_:_JobTag">JobTag</code></td>
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

    svc$start_face_search(
      Video = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      ClientRequestToken = "string",
      FaceMatchThreshold = 123.0,
      CollectionId = "string",
      NotificationChannel = list(
        SNSTopicArn = "string",
        RoleArn = "string"
      ),
      JobTag = "string"
    )
