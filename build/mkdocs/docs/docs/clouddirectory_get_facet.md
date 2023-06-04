<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType

### Description

Gets details of the Facet, such as facet name, attributes, Rules, or
`ObjectType`. You can call this on all kinds of schema facets –
published, development, or applied.

### Usage

    clouddirectory_get_facet(SchemaArn, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Facet. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_get_facet_:_Name">Name</code></td>
<td><p>[required] The name of the facet to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Facet = list(
        Name = "string",
        ObjectType = "NODE"|"LEAF_NODE"|"POLICY"|"INDEX",
        FacetStyle = "STATIC"|"DYNAMIC"
      )
    )

### Request syntax

    svc$get_facet(
      SchemaArn = "string",
      Name = "string"
    )
