<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_recognize_celebrities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of celebrities recognized in the input image

### Description

Returns an array of celebrities recognized in the input image. For more
information, see Recognizing celebrities in the Amazon Rekognition
Developer Guide.

`recognize_celebrities` returns the 64 largest faces in the image. It
lists the recognized celebrities in the `CelebrityFaces` array and any
unrecognized faces in the `UnrecognizedFaces` array.
`recognize_celebrities` doesn't return celebrities whose faces aren't
among the largest 64 faces in the image.

For each celebrity recognized, `recognize_celebrities` returns a
`Celebrity` object. The `Celebrity` object contains the celebrity name,
ID, URL links to additional information, match confidence, and a
`ComparedFace` object that you can use to locate the celebrity's face on
the image.

Amazon Rekognition doesn't retain information about which images a
celebrity has been recognized in. Your application must store this
information and use the `Celebrity` ID property as a unique identifier
for the celebrity. If you don't store the celebrity name or additional
information URLs returned by `recognize_celebrities`, you will need the
ID to identify the celebrity in a call to the `get_celebrity_info`
operation.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

For an example, see Recognizing celebrities in an image in the Amazon
Rekognition Developer Guide.

This operation requires permissions to perform the
`rekognition:RecognizeCelebrities` operation.

### Usage

    rekognition_recognize_celebrities(Image)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_recognize_celebrities_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing base64-encoded image bytes is not supported.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CelebrityFaces = list(
        list(
          Urls = list(
            "string"
          ),
          Name = "string",
          Id = "string",
          Face = list(
            BoundingBox = list(
              Width = 123.0,
              Height = 123.0,
              Left = 123.0,
              Top = 123.0
            ),
            Confidence = 123.0,
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
            Emotions = list(
              list(
                Type = "HAPPY"|"SAD"|"ANGRY"|"CONFUSED"|"DISGUSTED"|"SURPRISED"|"CALM"|"UNKNOWN"|"FEAR",
                Confidence = 123.0
              )
            ),
            Smile = list(
              Value = TRUE|FALSE,
              Confidence = 123.0
            )
          ),
          MatchConfidence = 123.0,
          KnownGender = list(
            Type = "Male"|"Female"|"Nonbinary"|"Unlisted"
          )
        )
      ),
      UnrecognizedFaces = list(
        list(
          BoundingBox = list(
            Width = 123.0,
            Height = 123.0,
            Left = 123.0,
            Top = 123.0
          ),
          Confidence = 123.0,
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
          Emotions = list(
            list(
              Type = "HAPPY"|"SAD"|"ANGRY"|"CONFUSED"|"DISGUSTED"|"SURPRISED"|"CALM"|"UNKNOWN"|"FEAR",
              Confidence = 123.0
            )
          ),
          Smile = list(
            Value = TRUE|FALSE,
            Confidence = 123.0
          )
        )
      ),
      OrientationCorrection = "ROTATE_0"|"ROTATE_90"|"ROTATE_180"|"ROTATE_270"
    )

### Request syntax

    svc$recognize_celebrities(
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      )
    )
