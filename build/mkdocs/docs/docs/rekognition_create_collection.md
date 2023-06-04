<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_create_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a collection in an AWS Region

### Description

Creates a collection in an AWS Region. You can add faces to the
collection using the `index_faces` operation.

For example, you might create collections, one for each of your
application users. A user can then index faces using the `index_faces`
operation and persist results in a specific collection. Then, a user can
search the collection for faces in the user-specific container.

When you create a collection, it is associated with the latest version
of the face model version.

Collection names are case-sensitive.

This operation requires permissions to perform the
`rekognition:CreateCollection` action. If you want to tag your
collection, you also require permission to perform the
`rekognition:TagResource` operation.

### Usage

    rekognition_create_collection(CollectionId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_create_collection_:_CollectionId">CollectionId</code></td>
<td><p>[required] ID for the collection that you are creating.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_create_collection_:_Tags">Tags</code></td>
<td><p>A set of tags (key-value pairs) that you want to attach to the
collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StatusCode = 123,
      CollectionArn = "string",
      FaceModelVersion = "string"
    )

### Request syntax

    svc$create_collection(
      CollectionId = "string",
      Tags = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This operation creates a Rekognition collection for storing image data.
    svc$create_collection(
      CollectionId = "myphotos"
    )

    ## End(Not run)
