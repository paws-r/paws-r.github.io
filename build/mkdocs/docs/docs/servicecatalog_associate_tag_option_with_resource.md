<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_associate_tag_option_with_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate the specified TagOption with the specified portfolio or product

### Description

Associate the specified TagOption with the specified portfolio or
product.

### Usage

    servicecatalog_associate_tag_option_with_resource(ResourceId,
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
id="servicecatalog_associate_tag_option_with_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_tag_option_with_resource_:_TagOptionId">TagOptionId</code></td>
<td><p>[required] The TagOption identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_tag_option_with_resource(
      ResourceId = "string",
      TagOptionId = "string"
    )
