<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_object_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves attributes within a facet that are associated with an object

### Description

Retrieves attributes within a facet that are associated with an object.

### Usage

    clouddirectory_get_object_attributes(DirectoryArn, ObjectReference,
      ConsistencyLevel, SchemaFacet, AttributeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_object_attributes_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_get_object_attributes_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] Reference that identifies the object whose attributes
will be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_get_object_attributes_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>The consistency level at which to retrieve the attributes on an
object.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_get_object_attributes_:_SchemaFacet">SchemaFacet</code></td>
<td><p>[required] Identifier for the facet whose attributes will be
retrieved. See SchemaFacet for details.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_get_object_attributes_:_AttributeNames">AttributeNames</code></td>
<td><p>[required] List of attribute names whose values will be
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
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
      )
    )

### Request syntax

    svc$get_object_attributes(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL",
      SchemaFacet = list(
        SchemaArn = "string",
        FacetName = "string"
      ),
      AttributeNames = list(
        "string"
      )
    )
