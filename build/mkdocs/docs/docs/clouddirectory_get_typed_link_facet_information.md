<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_typed_link_facet_information</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the identity attribute order for a specific TypedLinkFacet

### Description

Returns the identity attribute order for a specific TypedLinkFacet. For
more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_get_typed_link_facet_information(SchemaArn, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_typed_link_facet_information_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_get_typed_link_facet_information_:_Name">Name</code></td>
<td><p>[required] The unique name of the typed link facet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityAttributeOrder = list(
        "string"
      )
    )

### Request syntax

    svc$get_typed_link_facet_information(
      SchemaArn = "string",
      Name = "string"
    )
