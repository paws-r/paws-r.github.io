<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_detect_faces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects faces within an image that is provided as input

### Description

Detects faces within an image that is provided as input.

`detect_faces` detects the 100 largest faces in the image. For each face
detected, the operation returns face details. These details include a
bounding box of the face, a confidence value (that the bounding box
contains a face), and a fixed set of attributes such as facial landmarks
(for example, coordinates of eye and mouth), pose, presence of facial
occlusion, and so on.

The face-detection algorithm is most effective on frontal faces. For
non-frontal or obscured faces, the algorithm might not detect the faces
or might detect faces with lower confidence.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
`rekognition:DetectFaces` action.

### Usage

    rekognition_detect_faces(Image, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_detect_faces_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing base64-encoded image bytes is not supported.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_detect_faces_:_Attributes">Attributes</code></td>
<td><p>An array of facial attributes you want to be returned. A
<code>DEFAULT</code> subset of facial attributes -
<code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
<code>Quality</code>, and <code>Landmarks</code> - will always be
returned. You can request for specific facial attributes (in addition to
the default list) - by using [<code
style="white-space: pre;">⁠"DEFAULT", "FACE_OCCLUDED"⁠</code>] or just
[<code>"FACE_OCCLUDED"</code>]. You can request for all facial
attributes by using [<code style="white-space: pre;">⁠"ALL"]⁠</code>.
Requesting more attributes may increase response time.</p>
<p>If you provide both, <code
style="white-space: pre;">⁠["ALL", "DEFAULT"]⁠</code>, the service uses a
logical "AND" operator to determine which attributes to return (in this
case, all attributes).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FaceDetails = list(
        list(
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
      OrientationCorrection = "ROTATE_0"|"ROTATE_90"|"ROTATE_180"|"ROTATE_270"
    )

### Request syntax

    svc$detect_faces(
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      Attributes = list(
        "DEFAULT"|"ALL"|"AGE_RANGE"|"BEARD"|"EMOTIONS"|"EYE_DIRECTION"|"EYEGLASSES"|"EYES_OPEN"|"GENDER"|"MOUTH_OPEN"|"MUSTACHE"|"FACE_OCCLUDED"|"SMILE"|"SUNGLASSES"
      )
    )

### Examples

    ## Not run: 
    # This operation detects faces in an image stored in an AWS S3 bucket.
    svc$detect_faces(
      Image = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "myphoto"
        )
      )
    )

    ## End(Not run)
