<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a VPC link

### Description

Deletes a VPC link.

### Usage

    apigatewayv2_delete_vpc_link(VpcLinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_vpc_link_:_VpcLinkId">VpcLinkId</code></td>
<td><p>[required] The ID of the VPC link.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_vpc_link(
      VpcLinkId = "string"
    )
