<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_face_search</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the face search results for Amazon Rekognition Video face search started by StartFaceSearch

### Description

Gets the face search results for Amazon Rekognition Video face search
started by `start_face_search`. The search returns faces in a collection
that match the faces of persons detected in a video. It also includes
the time(s) that faces are matched in the video.

Face search in a video is an asynchronous operation. You start face
search by calling to `start_face_search` which returns a job identifier
(`JobId`). When the search operation finishes, Amazon Rekognition Video
publishes a completion status to the Amazon Simple Notification Service
topic registered in the initial call to `start_face_search`. To get the
search results, first check that the status value published to the
Amazon SNS topic is `SUCCEEDED`. If so, call `get_face_search` and pass
the job identifier (`JobId`) from the initial call to
`start_face_search`.

For more information, see Searching Faces in a Collection in the Amazon
Rekognition Developer Guide.

The search results are retured in an array, `Persons`, of PersonMatch
objects. Each`PersonMatch` element contains details about the matching
faces in the input collection, person information (facial attributes,
bounding boxes, and person identifer) for the matched person, and the
time the person was matched in the video.

`get_face_search` only returns the default facial attributes
(`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The
other facial attributes listed in the `Face` object of the following
response syntax are not returned. For more information, see FaceDetail
in the Amazon Rekognition Developer Guide.

By default, the `Persons` array is sorted by the time, in milliseconds
from the start of the video, persons are matched. You can also sort by
persons by specifying `INDEX` for the `SORTBY` input parameter.

### Usage

    rekognition_get_face_search(JobId, MaxResults, NextToken, SortBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_get_face_search_:_JobId">JobId</code></td>
<td><p>[required] The job identifer for the search request. You get the
job identifier from an initial call to
<code>start_face_search</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_face_search_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000. If you specify a value greater
than 1000, a maximum of 1000 results is returned. The default value is
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_face_search_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
search results to retrieve), Amazon Rekognition Video returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of search results.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_get_face_search_:_SortBy">SortBy</code></td>
<td><p>Sort to use for grouping faces in the response. Use
<code>TIMESTAMP</code> to group faces by the time that they are
recognized. Use <code>INDEX</code> to sort by recognized faces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
      StatusMessage = "string",
      NextToken = "string",
      VideoMetadata = list(
        Codec = "string",
        DurationMillis = 123,
        Format = "string",
        FrameRate = 123.0,
        FrameHeight = 123,
        FrameWidth = 123,
        ColorRange = "FULL"|"LIMITED"
      ),
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
          ),
          FaceMatches = list(
            list(
              Similarity = 123.0,
              Face = list(
                FaceId = "string",
                BoundingBox = list(
                  Width = 123.0,
                  Height = 123.0,
                  Left = 123.0,
                  Top = 123.0
                ),
                ImageId = "string",
                ExternalImageId = "string",
                Confidence = 123.0,
                IndexFacesModelVersion = "string"
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

    svc$get_face_search(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string",
      SortBy = "INDEX"|"TIMESTAMP"
    )
