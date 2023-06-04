<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_index_faces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects faces in the input image and adds them to the specified collection

### Description

Detects faces in the input image and adds them to the specified
collection.

Amazon Rekognition doesn't save the actual faces that are detected.
Instead, the underlying detection algorithm first detects the faces in
the input image. For each face, the algorithm extracts facial features
into a feature vector, and stores it in the backend database. Amazon
Rekognition uses feature vectors when it performs face match and search
operations using the `search_faces` and `search_faces_by_image`
operations.

For more information, see Adding faces to a collection in the Amazon
Rekognition Developer Guide.

To get the number of faces in a collection, call `describe_collection`.

If you're using version 1.0 of the face detection model, `index_faces`
indexes the 15 largest faces in the input image. Later versions of the
face detection model index the 100 largest faces in the input image.

If you're using version 4 or later of the face model, image orientation
information is not returned in the `OrientationCorrection` field.

To determine which version of the model you're using, call
`describe_collection` and supply the collection ID. You can also get the
model version from the value of `FaceModelVersion` in the response from
`index_faces`

For more information, see Model Versioning in the Amazon Rekognition
Developer Guide.

If you provide the optional `ExternalImageId` for the input image you
provided, Amazon Rekognition associates this ID with all faces that it
detects. When you call the `list_faces` operation, the response returns
the external ID. You can use this external image ID to create a
client-side index to associate the faces with each image. You can then
use the index to find all faces in an image.

You can specify the maximum number of faces to index with the `MaxFaces`
input parameter. This is useful when you want to index the largest faces
in an image and don't want to index smaller faces, such as those
belonging to people standing in the background.

The `QualityFilter` input parameter allows you to filter out detected
faces that don’t meet a required quality bar. The quality bar is based
on a variety of common use cases. By default, `index_faces` chooses the
quality bar that's used to filter faces. You can also explicitly choose
the quality bar. Use `QualityFilter`, to set the quality bar by
specifying `LOW`, `MEDIUM`, or `HIGH`. If you do not want to filter
detected faces, specify `NONE`.

To use quality filtering, you need a collection associated with version
3 of the face model or higher. To get the version of the face model
associated with a collection, call `describe_collection`.

Information about faces detected in an image, but not indexed, is
returned in an array of UnindexedFace objects, `UnindexedFaces`. Faces
aren't indexed for reasons such as:

-   The number of faces detected exceeds the value of the `MaxFaces`
    request parameter.

-   The face is too small compared to the image dimensions.

-   The face is too blurry.

-   The image is too dark.

-   The face has an extreme pose.

-   The face doesn’t have enough detail to be suitable for face search.

In response, the `index_faces` operation returns an array of metadata
for all detected faces, `FaceRecords`. This includes:

-   The bounding box, `BoundingBox`, of the detected face.

-   A confidence value, `Confidence`, which indicates the confidence
    that the bounding box contains a face.

-   A face ID, `FaceId`, assigned by the service for each face that's
    detected and stored.

-   An image ID, `ImageId`, assigned by the service for the input image.

If you request `ALL` or specific facial attributes (e.g.,
`FACE_OCCLUDED`) by using the detectionAttributes parameter, Amazon
Rekognition returns detailed facial attributes, such as facial landmarks
(for example, location of eye and mouth), facial occlusion, and other
facial attributes.

If you provide the same image, specify the same collection, and use the
same external ID in the `index_faces` operation, Amazon Rekognition
doesn't save duplicate face metadata.

The input image is passed either as base64-encoded image bytes, or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes isn't supported.
The image must be formatted as a PNG or JPEG file.

This operation requires permissions to perform the
`rekognition:IndexFaces` action.

### Usage

    rekognition_index_faces(CollectionId, Image, ExternalImageId,
      DetectionAttributes, MaxFaces, QualityFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_index_faces_:_CollectionId">CollectionId</code></td>
<td><p>[required] The ID of an existing collection to which you want to
add the faces that are detected in the input images.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_index_faces_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing base64-encoded image bytes isn't supported.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_index_faces_:_ExternalImageId">ExternalImageId</code></td>
<td><p>The ID you want to assign to all the faces detected in the
image.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_index_faces_:_DetectionAttributes">DetectionAttributes</code></td>
<td><p>An array of facial attributes you want to be returned. A
<code>DEFAULT</code> subset of facial attributes -
<code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
<code>Quality</code>, and <code>Landmarks</code> - will always be
returned. You can request for specific facial attributes (in addition to
the default list) - by using <code
style="white-space: pre;">⁠["DEFAULT", "FACE_OCCLUDED"]⁠</code> or just
<code style="white-space: pre;">⁠["FACE_OCCLUDED"]⁠</code>. You can
request for all facial attributes by using <code
style="white-space: pre;">⁠["ALL"]⁠</code>. Requesting more attributes may
increase response time.</p>
<p>If you provide both, <code
style="white-space: pre;">⁠["ALL", "DEFAULT"]⁠</code>, the service uses a
logical AND operator to determine which attributes to return (in this
case, all attributes).</p></td>
</tr>
<tr class="odd">
<td><code id="rekognition_index_faces_:_MaxFaces">MaxFaces</code></td>
<td><p>The maximum number of faces to index. The value of
<code>MaxFaces</code> must be greater than or equal to 1.
<code>index_faces</code> returns no more than 100 detected faces in an
image, even if you specify a larger value for <code>MaxFaces</code>.</p>
<p>If <code>index_faces</code> detects more faces than the value of
<code>MaxFaces</code>, the faces with the lowest quality are filtered
out first. If there are still more faces than the value of
<code>MaxFaces</code>, the faces with the smallest bounding boxes are
filtered out (up to the number that's needed to satisfy the value of
<code>MaxFaces</code>). Information about the unindexed faces is
available in the <code>UnindexedFaces</code> array.</p>
<p>The faces that are returned by <code>index_faces</code> are sorted by
the largest face bounding box size to the smallest size, in descending
order.</p>
<p><code>MaxFaces</code> can be used with a collection associated with
any version of the face model.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_index_faces_:_QualityFilter">QualityFilter</code></td>
<td><p>A filter that specifies a quality bar for how much filtering is
done to identify faces. Filtered faces aren't indexed. If you specify
<code>AUTO</code>, Amazon Rekognition chooses the quality bar. If you
specify <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>,
filtering removes all faces that don’t meet the chosen quality bar. The
default value is <code>AUTO</code>. The quality bar is based on a
variety of common use cases. Low-quality detections can occur for a
number of reasons. Some examples are an object that's misidentified as a
face, a face that's too blurry, or a face with a pose that's too extreme
to use. If you specify <code>NONE</code>, no filtering is performed.</p>
<p>To use quality filtering, the collection you are using must be
associated with version 3 of the face model or higher.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FaceRecords = list(
        list(
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
          ),
          FaceDetail = list(
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
      OrientationCorrection = "ROTATE_0"|"ROTATE_90"|"ROTATE_180"|"ROTATE_270",
      FaceModelVersion = "string",
      UnindexedFaces = list(
        list(
          Reasons = list(
            "EXCEEDS_MAX_FACES"|"EXTREME_POSE"|"LOW_BRIGHTNESS"|"LOW_SHARPNESS"|"LOW_CONFIDENCE"|"SMALL_BOUNDING_BOX"|"LOW_FACE_QUALITY"
          ),
          FaceDetail = list(
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
    )

### Request syntax

    svc$index_faces(
      CollectionId = "string",
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      ExternalImageId = "string",
      DetectionAttributes = list(
        "DEFAULT"|"ALL"|"AGE_RANGE"|"BEARD"|"EMOTIONS"|"EYE_DIRECTION"|"EYEGLASSES"|"EYES_OPEN"|"GENDER"|"MOUTH_OPEN"|"MUSTACHE"|"FACE_OCCLUDED"|"SMILE"|"SUNGLASSES"
      ),
      MaxFaces = 123,
      QualityFilter = "NONE"|"AUTO"|"LOW"|"MEDIUM"|"HIGH"
    )

### Examples

    ## Not run: 
    # This operation detects faces in an image and adds them to the specified
    # Rekognition collection.
    svc$index_faces(
      CollectionId = "myphotos",
      DetectionAttributes = list(),
      ExternalImageId = "myphotoid",
      Image = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "myphoto"
        )
      )
    )

    ## End(Not run)
