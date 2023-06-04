<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_delete_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a given Facet

### Description

Deletes a given Facet. All attributes and Rules that are associated with
the facet will be deleted. Only development schema facets are allowed
deletion.

### Usage

    clouddirectory_delete_facet(SchemaArn, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_delete_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Facet. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_delete_facet_:_Name">Name</code></td>
<td><p>[required] The name of the facet to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_facet(
      SchemaArn = "string",
      Name = "string"
    )
