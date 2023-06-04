<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_remove_facet_from_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified facet from the specified object

### Description

Removes the specified facet from the specified object.

### Usage

    clouddirectory_remove_facet_from_object(DirectoryArn, SchemaFacet,
      ObjectReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_remove_facet_from_object_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory in which the object
resides.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_remove_facet_from_object_:_SchemaFacet">SchemaFacet</code></td>
<td><p>[required] The facet to remove. See SchemaFacet for
details.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_remove_facet_from_object_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] A reference to the object to remove the facet
from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_facet_from_object(
      DirectoryArn = "string",
      SchemaFacet = list(
        SchemaArn = "string",
        FacetName = "string"
      ),
      ObjectReference = list(
        Selector = "string"
      )
    )
