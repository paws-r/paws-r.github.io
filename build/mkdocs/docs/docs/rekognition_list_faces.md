<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_faces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata for faces in the specified collection

### Description

Returns metadata for faces in the specified collection. This metadata
includes information such as the bounding box coordinates, the
confidence (that the bounding box contains a face), and face ID. For an
example, see Listing Faces in a Collection in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
`rekognition:ListFaces` action.

### Usage

    rekognition_list_faces(CollectionId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_faces_:_CollectionId">CollectionId</code></td>
<td><p>[required] ID of the collection from which to list the
faces.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_list_faces_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Rekognition returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
faces.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_list_faces_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of faces to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Faces = list(
        list(
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
      ),
      NextToken = "string",
      FaceModelVersion = "string"
    )

### Request syntax

    svc$list_faces(
      CollectionId = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This operation lists the faces in a Rekognition collection.
    svc$list_faces(
      CollectionId = "myphotos",
      MaxResults = 20L
    )

    ## End(Not run)
