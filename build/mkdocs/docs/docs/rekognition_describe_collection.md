<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_describe_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified collection

### Description

Describes the specified collection. You can use `describe_collection` to
get information, such as the number of faces indexed into a collection
and the version of the model used by the collection for face detection.

For more information, see Describing a Collection in the Amazon
Rekognition Developer Guide.

### Usage

    rekognition_describe_collection(CollectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_describe_collection_:_CollectionId">CollectionId</code></td>
<td><p>[required] The ID of the collection to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FaceCount = 123,
      FaceModelVersion = "string",
      CollectionARN = "string",
      CreationTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_collection(
      CollectionId = "string"
    )
