<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_add_facet_to_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new Facet to an object

### Description

Adds a new Facet to an object. An object can have more than one facet
applied on it.

### Usage

    clouddirectory_add_facet_to_object(DirectoryArn, SchemaFacet,
      ObjectAttributeList, ObjectReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_add_facet_to_object_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_add_facet_to_object_:_SchemaFacet">SchemaFacet</code></td>
<td><p>[required] Identifiers for the facet that you are adding to the
object. See SchemaFacet for details.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_add_facet_to_object_:_ObjectAttributeList">ObjectAttributeList</code></td>
<td><p>Attributes on the facet that you are adding to the
object.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_add_facet_to_object_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] A reference to the object you are adding the specified
facet to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_facet_to_object(
      DirectoryArn = "string",
      SchemaFacet = list(
        SchemaArn = "string",
        FacetName = "string"
      ),
      ObjectAttributeList = list(
        list(
          Key = list(
            SchemaArn = "string",
            FacetName = "string",
            Name = "string"
          ),
          Value = list(
            StringValue = "string",
            BinaryValue = raw,
            BooleanValue = TRUE|FALSE,
            NumberValue = "string",
            DatetimeValue = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      ObjectReference = list(
        Selector = "string"
      )
    )
