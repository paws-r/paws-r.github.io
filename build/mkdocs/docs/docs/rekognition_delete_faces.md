<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_faces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes faces from a collection

### Description

Deletes faces from a collection. You specify a collection ID and an
array of face IDs to remove from the collection.

This operation requires permissions to perform the
`rekognition:DeleteFaces` action.

### Usage

    rekognition_delete_faces(CollectionId, FaceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_faces_:_CollectionId">CollectionId</code></td>
<td><p>[required] Collection from which to remove the specific
faces.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_delete_faces_:_FaceIds">FaceIds</code></td>
<td><p>[required] An array of face IDs to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeletedFaces = list(
        "string"
      )
    )

### Request syntax

    svc$delete_faces(
      CollectionId = "string",
      FaceIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This operation deletes one or more faces from a Rekognition collection.
    svc$delete_faces(
      CollectionId = "myphotos",
      FaceIds = list(
        "ff43d742-0c13-5d16-a3e8-03d3f58e980b"
      )
    )

    ## End(Not run)
