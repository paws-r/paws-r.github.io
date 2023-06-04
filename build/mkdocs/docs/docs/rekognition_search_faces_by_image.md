<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_search_faces_by_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a given input image, first detects the largest face in the image, and then searches the specified collection for matching faces

### Description

For a given input image, first detects the largest face in the image,
and then searches the specified collection for matching faces. The
operation compares the features of the input face with faces in the
specified collection.

To search for all faces in an input image, you might first call the
`index_faces` operation, and then use the face IDs returned in
subsequent calls to the `search_faces` operation.

You can also call the `detect_faces` operation and use the bounding
boxes in the response to make face crops, which then you can pass in to
the `search_faces_by_image` operation.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

The response returns an array of faces that match, ordered by similarity
score with the highest similarity first. More specifically, it is an
array of metadata for each face match found. Along with the metadata,
the response also includes a `similarity` indicating how similar the
face is to the input face. In the response, the operation also returns
the bounding box (and a confidence level that the bounding box contains
a face) of the face that Amazon Rekognition used for the input image.

If no faces are detected in the input image, `search_faces_by_image`
returns an `InvalidParameterException` error.

For an example, Searching for a Face Using an Image in the Amazon
Rekognition Developer Guide.

The `QualityFilter` input parameter allows you to filter out detected
faces that don’t meet a required quality bar. The quality bar is based
on a variety of common use cases. Use `QualityFilter` to set the quality
bar for filtering by specifying `LOW`, `MEDIUM`, or `HIGH`. If you do
not want to filter detected faces, specify `NONE`. The default value is
`NONE`.

To use quality filtering, you need a collection associated with version
3 of the face model or higher. To get the version of the face model
associated with a collection, call `describe_collection`.

This operation requires permissions to perform the
`rekognition:SearchFacesByImage` action.

### Usage

    rekognition_search_faces_by_image(CollectionId, Image, MaxFaces,
      FaceMatchThreshold, QualityFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_search_faces_by_image_:_CollectionId">CollectionId</code></td>
<td><p>[required] ID of the collection to search.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_search_faces_by_image_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing base64-encoded image bytes is not supported.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_search_faces_by_image_:_MaxFaces">MaxFaces</code></td>
<td><p>Maximum number of faces to return. The operation returns the
maximum number of faces with the highest confidence in the
match.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_search_faces_by_image_:_FaceMatchThreshold">FaceMatchThreshold</code></td>
<td><p>(Optional) Specifies the minimum confidence in the face match to
return. For example, don't return any matches where confidence in
matches is less than 70%. The default value is 80%.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_search_faces_by_image_:_QualityFilter">QualityFilter</code></td>
<td><p>A filter that specifies a quality bar for how much filtering is
done to identify faces. Filtered faces aren't searched for in the
collection. If you specify <code>AUTO</code>, Amazon Rekognition chooses
the quality bar. If you specify <code>LOW</code>, <code>MEDIUM</code>,
or <code>HIGH</code>, filtering removes all faces that don’t meet the
chosen quality bar. The quality bar is based on a variety of common use
cases. Low-quality detections can occur for a number of reasons. Some
examples are an object that's misidentified as a face, a face that's too
blurry, or a face with a pose that's too extreme to use. If you specify
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
      SearchedFaceBoundingBox = list(
        Width = 123.0,
        Height = 123.0,
        Left = 123.0,
        Top = 123.0
      ),
      SearchedFaceConfidence = 123.0,
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
      ),
      FaceModelVersion = "string"
    )

### Request syntax

    svc$search_faces_by_image(
      CollectionId = "string",
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      MaxFaces = 123,
      FaceMatchThreshold = 123.0,
      QualityFilter = "NONE"|"AUTO"|"LOW"|"MEDIUM"|"HIGH"
    )

### Examples

    ## Not run: 
    # This operation searches for faces in a Rekognition collection that match
    # the largest face in an S3 bucket stored image.
    svc$search_faces_by_image(
      CollectionId = "myphotos",
      FaceMatchThreshold = 95L,
      Image = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "myphoto"
        )
      ),
      MaxFaces = 5L
    )

    ## End(Not run)
