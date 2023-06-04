<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_create_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an object in a Directory

### Description

Creates an object in a Directory. Additionally attaches the object to a
parent, if a parent reference and `LinkName` is specified. An object is
simply a collection of Facet attributes. You can also use this API call
to create a policy object, if the facet from which you create the object
is a policy facet.

### Usage

    clouddirectory_create_object(DirectoryArn, SchemaFacets,
      ObjectAttributeList, ParentReference, LinkName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_create_object_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory in which the object will be created. For more information,
see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_object_:_SchemaFacets">SchemaFacets</code></td>
<td><p>[required] A list of schema facets to be associated with the
object. Do not provide minor version components. See SchemaFacet for
details.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_create_object_:_ObjectAttributeList">ObjectAttributeList</code></td>
<td><p>The attribute map whose attribute ARN contains the key and
attribute value as the map value.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_object_:_ParentReference">ParentReference</code></td>
<td><p>If specified, the parent reference to which this object will be
attached.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_create_object_:_LinkName">LinkName</code></td>
<td><p>The name of link that is used to attach this object to a
parent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectIdentifier = "string"
    )

### Request syntax

    svc$create_object(
      DirectoryArn = "string",
      SchemaFacets = list(
        list(
          SchemaArn = "string",
          FacetName = "string"
        )
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
      ParentReference = list(
        Selector = "string"
      ),
      LinkName = "string"
    )
