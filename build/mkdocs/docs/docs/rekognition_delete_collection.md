<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified collection

### Description

Deletes the specified collection. Note that this operation removes all
faces in the collection. For an example, see [Deleting a
collection](https://docs.aws.amazon.com/rekognition/latest/dg/delete-collection-procedure.html).

This operation requires permissions to perform the
`rekognition:DeleteCollection` action.

### Usage

    rekognition_delete_collection(CollectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_collection_:_CollectionId">CollectionId</code></td>
<td><p>[required] ID of the collection to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StatusCode = 123
    )

### Request syntax

    svc$delete_collection(
      CollectionId = "string"
    )

### Examples

    ## Not run: 
    # This operation deletes a Rekognition collection.
    svc$delete_collection(
      CollectionId = "myphotos"
    )

    ## End(Not run)
