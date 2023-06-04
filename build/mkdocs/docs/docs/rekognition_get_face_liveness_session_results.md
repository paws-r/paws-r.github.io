<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_face_liveness_session_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the results of a specific Face Liveness session

### Description

Retrieves the results of a specific Face Liveness session. It requires
the `sessionId` as input, which was created using
`create_face_liveness_session`. Returns the corresponding Face Liveness
confidence score, a reference image that includes a face bounding box,
and audit images that also contain face bounding boxes. The Face
Liveness confidence score ranges from 0 to 100. The reference image can
optionally be returned.

### Usage

    rekognition_get_face_liveness_session_results(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_get_face_liveness_session_results_:_SessionId">SessionId</code></td>
<td><p>[required] A unique 128-bit UUID. This is used to uniquely
identify the session and also acts as an idempotency token for all
operations associated with the session.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string",
      Status = "CREATED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"EXPIRED",
      Confidence = 123.0,
      ReferenceImage = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        ),
        BoundingBox = list(
          Width = 123.0,
          Height = 123.0,
          Left = 123.0,
          Top = 123.0
        )
      ),
      AuditImages = list(
        list(
          Bytes = raw,
          S3Object = list(
            Bucket = "string",
            Name = "string",
            Version = "string"
          ),
          BoundingBox = list(
            Width = 123.0,
            Height = 123.0,
            Left = 123.0,
            Top = 123.0
          )
        )
      )
    )

### Request syntax

    svc$get_face_liveness_session_results(
      SessionId = "string"
    )
