<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_person_tracking</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the path tracking results of a Amazon Rekognition Video analysis started by StartPersonTracking

### Description

Gets the path tracking results of a Amazon Rekognition Video analysis
started by `start_person_tracking`.

The person path tracking operation is started by a call to
`start_person_tracking` which returns a job identifier (`JobId`). When
the operation finishes, Amazon Rekognition Video publishes a completion
status to the Amazon Simple Notification Service topic registered in the
initial call to `start_person_tracking`.

To get the results of the person path tracking operation, first check
that the status value published to the Amazon SNS topic is `SUCCEEDED`.
If so, call `get_person_tracking` and pass the job identifier (`JobId`)
from the initial call to `start_person_tracking`.

`get_person_tracking` returns an array, `Persons`, of tracked persons
and the time(s) their paths were tracked in the video.

`get_person_tracking` only returns the default facial attributes
(`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The
other facial attributes listed in the `Face` object of the following
response syntax are not returned.

For more information, see FaceDetail in the Amazon Rekognition Developer
Guide.

By default, the array is sorted by the time(s) a person's path is
tracked in the video. You can sort by tracked persons by specifying
`INDEX` for the `SortBy` input parameter.

Use the `MaxResults` parameter to limit the number of items returned. If
there are more results than specified in `MaxResults`, the value of
`NextToken` in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
`get_person_tracking` and populate the `NextToken` request parameter
with the token value returned from the previous call to
`get_person_tracking`.

### Usage

    rekognition_get_person_tracking(JobId, MaxResults, NextToken, SortBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_get_person_tracking_:_JobId">JobId</code></td>
<td><p>[required] The identifier for a job that tracks persons in a
video. You get the <code>JobId</code> from a call to
<code>start_person_tracking</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_person_tracking_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000. If you specify a value greater
than 1000, a maximum of 1000 results is returned. The default value is
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_person_tracking_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
persons to retrieve), Amazon Rekognition Video returns a pagination
token in the response. You can use this pagination token to retrieve the
next set of persons.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_person_tracking_:_SortBy">SortBy</code></td>
<td><p>Sort to use for elements in the <code>Persons</code> array. Use
<code>TIMESTAMP</code> to sort array elements by the time persons are
detected. Use <code>INDEX</code> to sort by the tracked persons. If you
sort by <code>INDEX</code>, the array elements for each person are
sorted by detection confidence. The default sort is by
<code>TIMESTAMP</code>.</p></td>
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
      Persons = list(
        list(
          Timestamp = 123,
          Person = list(
            Index = 123,
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

    svc$get_person_tracking(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string",
      SortBy = "INDEX"|"TIMESTAMP"
    )
