<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_search_faces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a given input face ID, searches for matching faces in the collection the face belongs to

### Description

For a given input face ID, searches for matching faces in the collection
the face belongs to. You get a face ID when you add a face to the
collection using the `index_faces` operation. The operation compares the
features of the input face with faces in the specified collection.

You can also search faces without indexing faces by using the
`search_faces_by_image` operation.

The operation response returns an array of faces that match, ordered by
similarity score with the highest similarity first. More specifically,
it is an array of metadata for each face match that is found. Along with
the metadata, the response also includes a `confidence` value for each
face match, indicating the confidence that the specific face matches the
input face.

For an example, see Searching for a face using its face ID in the Amazon
Rekognition Developer Guide.

This operation requires permissions to perform the
`rekognition:SearchFaces` action.

### Usage

    rekognition_search_faces(CollectionId, FaceId, MaxFaces,
      FaceMatchThreshold)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_search_faces_:_CollectionId">CollectionId</code></td>
<td><p>[required] ID of the collection the face belongs to.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_search_faces_:_FaceId">FaceId</code></td>
<td><p>[required] ID of a face to find matches for in the
collection.</p></td>
</tr>
<tr class="odd">
<td><code id="rekognition_search_faces_:_MaxFaces">MaxFaces</code></td>
<td><p>Maximum number of faces to return. The operation returns the
maximum number of faces with the highest confidence in the
match.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_search_faces_:_FaceMatchThreshold">FaceMatchThreshold</code></td>
<td><p>Optional value specifying the minimum confidence in the face
match to return. For example, don't return any matches where confidence
in matches is less than 70%. The default value is 80%.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SearchedFaceId = "string",
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

    svc$search_faces(
      CollectionId = "string",
      FaceId = "string",
      MaxFaces = 123,
      FaceMatchThreshold = 123.0
    )

### Examples

    ## Not run: 
    # This operation searches for matching faces in the collection the
    # supplied face belongs to.
    svc$search_faces(
      CollectionId = "myphotos",
      FaceId = "70008e50-75e4-55d0-8e80-363fb73b3a14",
      FaceMatchThreshold = 90L,
      MaxFaces = 10L
    )

    ## End(Not run)
