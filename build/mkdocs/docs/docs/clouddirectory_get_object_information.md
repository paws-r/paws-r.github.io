<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_object_information</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves metadata about an object

### Description

Retrieves metadata about an object.

### Usage

    clouddirectory_get_object_information(DirectoryArn, ObjectReference,
      ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_object_information_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory being retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_get_object_information_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] A reference to the object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_get_object_information_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>The consistency level at which to retrieve the object
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaFacets = list(
        list(
          SchemaArn = "string",
          FacetName = "string"
        )
      ),
      ObjectIdentifier = "string"
    )

### Request syntax

    svc$get_object_information(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
