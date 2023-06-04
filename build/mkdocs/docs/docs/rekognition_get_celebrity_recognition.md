<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_celebrity_recognition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by StartCelebrityRecognition

### Description

Gets the celebrity recognition results for a Amazon Rekognition Video
analysis started by `start_celebrity_recognition`.

Celebrity recognition in a video is an asynchronous operation. Analysis
is started by a call to `start_celebrity_recognition` which returns a
job identifier (`JobId`).

When the celebrity recognition operation finishes, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic registered in the initial call to
`start_celebrity_recognition`. To get the results of the celebrity
recognition analysis, first check that the status value published to the
Amazon SNS topic is `SUCCEEDED`. If so, call `GetCelebrityDetection` and
pass the job identifier (`JobId`) from the initial call to
`StartCelebrityDetection`.

For more information, see Working With Stored Videos in the Amazon
Rekognition Developer Guide.

`get_celebrity_recognition` returns detected celebrities and the time(s)
they are detected in an array (`Celebrities`) of CelebrityRecognition
objects. Each `CelebrityRecognition` contains information about the
celebrity in a CelebrityDetail object and the time, `Timestamp`, the
celebrity was detected. This CelebrityDetail object stores information
about the detected celebrity's face attributes, a face bounding box,
known gender, the celebrity's name, and a confidence estimate.

`get_celebrity_recognition` only returns the default facial attributes
(`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The
`BoundingBox` field only applies to the detected face instance. The
other facial attributes listed in the `Face` object of the following
response syntax are not returned. For more information, see FaceDetail
in the Amazon Rekognition Developer Guide.

By default, the `Celebrities` array is sorted by time (milliseconds from
the start of the video). You can also sort the array by celebrity by
specifying the value `ID` in the `SortBy` input parameter.

The `CelebrityDetail` object includes the celebrity identifer and
additional information urls. If you don't store the additional
information urls, you can get them later by calling `get_celebrity_info`
with the celebrity identifer.

No information is returned for faces not recognized as celebrities.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in `MaxResults`, the value of
`NextToken` in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
`GetCelebrityDetection` and populate the `NextToken` request parameter
with the token value returned from the previous call to
`get_celebrity_recognition`.

### Usage

    rekognition_get_celebrity_recognition(JobId, MaxResults, NextToken,
      SortBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_get_celebrity_recognition_:_JobId">JobId</code></td>
<td><p>[required] Job identifier for the required celebrity recognition
analysis. You can get the job identifer from a call to
<code>start_celebrity_recognition</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_celebrity_recognition_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000. If you specify a value greater
than 1000, a maximum of 1000 results is returned. The default value is
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_celebrity_recognition_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
recognized celebrities to retrieve), Amazon Rekognition Video returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of celebrities.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_celebrity_recognition_:_SortBy">SortBy</code></td>
<td><p>Sort to use for celebrities returned in <code>Celebrities</code>
field. Specify <code>ID</code> to sort by the celebrity identifier,
specify <code>TIMESTAMP</code> to sort by the time the celebrity was
recognized.</p></td>
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
      Celebrities = list(
        list(
          Timestamp = 123,
          Celebrity = list(
            Urls = list(
              "string"
            ),
            Name = "string",
            Id = "string",
            Confidence = 123.0,
            BoundingBox = list(
              Width = 123.0,
              Height = 123.0,
              Left = 123.0,
              Top = 123.0
            ),
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
            ),
            KnownGender = list(
              Type = "Male"|"Female"|"Nonbinary"|"Unlisted"
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

    svc$get_celebrity_recognition(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string",
      SortBy = "ID"|"TIMESTAMP"
    )
