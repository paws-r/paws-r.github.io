<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_disassociate_tag_option_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified TagOption from the specified resource

### Description

Disassociates the specified TagOption from the specified resource.

### Usage

    servicecatalog_disassociate_tag_option_from_resource(ResourceId,
      TagOptionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_disassociate_tag_option_from_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_disassociate_tag_option_from_resource_:_TagOptionId">TagOptionId</code></td>
<td><p>[required] The TagOption identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_tag_option_from_resource(
      ResourceId = "string",
      TagOptionId = "string"
    )
