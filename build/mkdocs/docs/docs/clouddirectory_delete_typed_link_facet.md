<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_delete_typed_link_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a TypedLinkFacet

### Description

Deletes a TypedLinkFacet. For more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_delete_typed_link_facet(SchemaArn, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_delete_typed_link_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_delete_typed_link_facet_:_Name">Name</code></td>
<td><p>[required] The unique name of the typed link facet.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_typed_link_facet(
      SchemaArn = "string",
      Name = "string"
    )
