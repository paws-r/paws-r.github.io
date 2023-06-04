<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_text_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the text detection results of a Amazon Rekognition Video analysis started by StartTextDetection

### Description

Gets the text detection results of a Amazon Rekognition Video analysis
started by `start_text_detection`.

Text detection with Amazon Rekognition Video is an asynchronous
operation. You start text detection by calling `start_text_detection`
which returns a job identifier (`JobId`) When the text detection
operation finishes, Amazon Rekognition publishes a completion status to
the Amazon Simple Notification Service topic registered in the initial
call to `start_text_detection`. To get the results of the text detection
operation, first check that the status value published to the Amazon SNS
topic is `SUCCEEDED`. if so, call `get_text_detection` and pass the job
identifier (`JobId`) from the initial call of `start_label_detection`.

`get_text_detection` returns an array of detected text
(`TextDetections`) sorted by the time the text was detected, up to 50
words per frame of video.

Each element of the array includes the detected text, the precentage
confidence in the acuracy of the detected text, the time the text was
detected, bounding box information for where the text was located, and
unique identifiers for words and their lines.

Use MaxResults parameter to limit the number of text detections
returned. If there are more results than specified in `MaxResults`, the
value of `NextToken` in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call `get_text_detection` and populate the `NextToken` request
parameter with the token value returned from the previous call to
`get_text_detection`.

### Usage

    rekognition_get_text_detection(JobId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_get_text_detection_:_JobId">JobId</code></td>
<td><p>[required] Job identifier for the text detection operation for
which you want results returned. You get the job identifer from an
initial call to <code>start_text_detection</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_text_detection_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_text_detection_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
labels to retrieve), Amazon Rekognition Video returns a pagination token
in the response. You can use this pagination token to retrieve the next
set of text.</p></td>
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
      TextDetections = list(
        list(
          Timestamp = 123,
          TextDetection = list(
            DetectedText = "string",
            Type = "LINE"|"WORD",
            Id = 123,
            ParentId = 123,
            Confidence = 123.0,
            Geometry = list(
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
      ),
      NextToken = "string",
      TextModelVersion = "string",
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

    svc$get_text_detection(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
