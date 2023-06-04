<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_face_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets face detection results for a Amazon Rekognition Video analysis started by StartFaceDetection

### Description

Gets face detection results for a Amazon Rekognition Video analysis
started by `start_face_detection`.

Face detection with Amazon Rekognition Video is an asynchronous
operation. You start face detection by calling `start_face_detection`
which returns a job identifier (`JobId`). When the face detection
operation finishes, Amazon Rekognition Video publishes a completion
status to the Amazon Simple Notification Service topic registered in the
initial call to `start_face_detection`. To get the results of the face
detection operation, first check that the status value published to the
Amazon SNS topic is `SUCCEEDED`. If so, call `get_face_detection` and
pass the job identifier (`JobId`) from the initial call to
`start_face_detection`.

`get_face_detection` returns an array of detected faces (`Faces`) sorted
by the time the faces were detected.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in `MaxResults`, the value of
`NextToken` in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
`get_face_detection` and populate the `NextToken` request parameter with
the token value returned from the previous call to `get_face_detection`.

### Usage

    rekognition_get_face_detection(JobId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_get_face_detection_:_JobId">JobId</code></td>
<td><p>[required] Unique identifier for the face detection job. The
<code>JobId</code> is returned from
<code>start_face_detection</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_face_detection_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000. If you specify a value greater
than 1000, a maximum of 1000 results is returned. The default value is
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_face_detection_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
faces to retrieve), Amazon Rekognition Video returns a pagination token
in the response. You can use this pagination token to retrieve the next
set of faces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
      StatusMessage = "string",
      VideoMetadata = list(
        Codec = "string",
        DurationMillis = 123,
        Format = "string",
        FrameRate = 123.0,
        FrameHeight = 123,
        FrameWidth = 123,
        ColorRange = "FULL"|"LIMITED"
      ),
      NextToken = "string",
      Faces = list(
        list(
          Timestamp = 123,
          Face = list(
            BoundingBox = list(
              Width = 123.0,
              Height = 123.0,
              Left = 123.0,
              Top = 123.0
            ),
            AgeRange = list(
              Low = 123,
              High = 123
            ),
            Smile = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            Eyeglasses = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            Sunglasses = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            Gender = list(
              Value = "Male"|"Female",
              Confidence = 123.0
            ),
            Beard = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            Mustache = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            EyesOpen = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            MouthOpen = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            Emotions = list(
              list(
                Type = "HAPPY"|"SAD"|"ANGRY"|"CONFUSED"|"DISGUSTED"|"SURPRISED"|"CALM"|"UNKNOWN"|"FEAR",
                Confidence = 123.0
              )
            ),
            Landmarks = list(
              list(
                Type = "eyeLeft"|"eyeRight"|"nose"|"mouthLeft"|"mouthRight"|"leftEyeBrowLeft"|"leftEyeBrowRight"|"leftEyeBrowUp"|"rightEyeBrowLeft"|"rightEyeBrowRight"|"rightEyeBrowUp"|"leftEyeLeft"|"leftEyeRight"|"leftEyeUp"|"leftEyeDown"|"rightEyeLeft"|"rightEyeRight"|"rightEyeUp"|"rightEyeDown"|"noseLeft"|"noseRight"|"mouthUp"|"mouthDown"|"leftPupil"|"rightPupil"|"upperJawlineLeft"|"midJawlineLeft"|"chinBottom"|"midJawlineRight"|"upperJawlineRight",
                X = 123.0,
                Y = 123.0
              )
            ),
            Pose = list(
              Roll = 123.0,
              Yaw = 123.0,
              Pitch = 123.0
            ),
            Quality = list(
              Brightness = 123.0,
              Sharpness = 123.0
            ),
            Confidence = 123.0,
            FaceOccluded = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            ),
            EyeDirection = list(
              Yaw = 123.0,
              Pitch = 123.0,
              Confidence = 123.0
            )
          )
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

    svc$get_face_detection(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
