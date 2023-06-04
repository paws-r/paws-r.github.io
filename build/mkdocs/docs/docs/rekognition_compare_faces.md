<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_compare_faces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Compares a face in the source input image with each of the 100 largest faces detected in the target input image

### Description

Compares a face in the *source* input image with each of the 100 largest
faces detected in the *target* input image.

If the source image contains multiple faces, the service detects the
largest face and compares it with each face detected in the target
image.

CompareFaces uses machine learning algorithms, which are probabilistic.
A false negative is an incorrect prediction that a face in the target
image has a low similarity confidence score when compared to the face in
the source image. To reduce the probability of false negatives, we
recommend that you compare the target image against multiple source
images. If you plan to use `compare_faces` to make a decision that
impacts an individual's rights, privacy, or access to services, we
recommend that you pass the result to a human for review and further
validation before taking action.

You pass the input and target images either as base64-encoded image
bytes or as references to images in an Amazon S3 bucket. If you use the
AWS CLI to call Amazon Rekognition operations, passing image bytes isn't
supported. The image must be formatted as a PNG or JPEG file.

In response, the operation returns an array of face matches ordered by
similarity score in descending order. For each face match, the response
provides a bounding box of the face, facial landmarks, pose details
(pitch, roll, and yaw), quality (brightness and sharpness), and
confidence value (indicating the level of confidence that the bounding
box contains a face). The response also provides a similarity score,
which indicates how closely the faces match.

By default, only faces with a similarity score of greater than or equal
to 80% are returned in the response. You can change this value by
specifying the `SimilarityThreshold` parameter.

`compare_faces` also returns an array of faces that don't match the
source image. For each face, it returns a bounding box, confidence
value, landmarks, pose details, and quality. The response also returns
information about the face in the source image, including the bounding
box of the face and confidence value.

The `QualityFilter` input parameter allows you to filter out detected
faces that don’t meet a required quality bar. The quality bar is based
on a variety of common use cases. Use `QualityFilter` to set the quality
bar by specifying `LOW`, `MEDIUM`, or `HIGH`. If you do not want to
filter detected faces, specify `NONE`. The default value is `NONE`.

If the image doesn't contain Exif metadata, `compare_faces` returns
orientation information for the source and target images. Use these
values to display the images with the correct image orientation.

If no faces are detected in the source or target images, `compare_faces`
returns an `InvalidParameterException` error.

This is a stateless API operation. That is, data returned by this
operation doesn't persist.

For an example, see Comparing Faces in Images in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
`rekognition:CompareFaces` action.

### Usage

    rekognition_compare_faces(SourceImage, TargetImage, SimilarityThreshold,
      QualityFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_compare_faces_:_SourceImage">SourceImage</code></td>
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
id="rekognition_compare_faces_:_TargetImage">TargetImage</code></td>
<td><p>[required] The target image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing base64-encoded image bytes is not supported.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_compare_faces_:_SimilarityThreshold">SimilarityThreshold</code></td>
<td><p>The minimum level of confidence in the face matches that a match
must meet to be included in the <code>FaceMatches</code> array.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_compare_faces_:_QualityFilter">QualityFilter</code></td>
<td><p>A filter that specifies a quality bar for how much filtering is
done to identify faces. Filtered faces aren't compared. If you specify
<code>AUTO</code>, Amazon Rekognition chooses the quality bar. If you
specify <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>,
filtering removes all faces that don’t meet the chosen quality bar. The
quality bar is based on a variety of common use cases. Low-quality
detections can occur for a number of reasons. Some examples are an
object that's misidentified as a face, a face that's too blurry, or a
face with a pose that's too extreme to use. If you specify
<code>NONE</code>, no filtering is performed. The default value is
<code>NONE</code>.</p>
<p>To use quality filtering, the collection you are using must be
associated with version 3 of the face model or higher.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SourceImageFace = list(
        BoundingBox = list(
          Width = 123.0,
          Height = 123.0,
          Left = 123.0,
          Top = 123.0
        ),
        Confidence = 123.0
      ),
      FaceMatches = list(
        list(
          Similarity = 123.0,
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
          )
        )
      ),
      UnmatchedFaces = list(
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
      SourceImageOrientationCorrection = "ROTATE_0"|"ROTATE_90"|"ROTATE_180"|"ROTATE_270",
      TargetImageOrientationCorrection = "ROTATE_0"|"ROTATE_90"|"ROTATE_180"|"ROTATE_270"
    )

### Request syntax

    svc$compare_faces(
      SourceImage = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      TargetImage = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      SimilarityThreshold = 123.0,
      QualityFilter = "NONE"|"AUTO"|"LOW"|"MEDIUM"|"HIGH"
    )

### Examples

    ## Not run: 
    # This operation compares the largest face detected in the source image
    # with each face detected in the target image.
    svc$compare_faces(
      SimilarityThreshold = 90L,
      SourceImage = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "mysourceimage"
        )
      ),
      TargetImage = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "mytargetimage"
        )
      )
    )

    ## End(Not run)
