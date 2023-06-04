<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing VpcLink of a specified identifier

### Description

Deletes an existing VpcLink of a specified identifier.

### Usage

    apigateway_delete_vpc_link(vpcLinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_vpc_link_:_vpcLinkId">vpcLinkId</code></td>
<td><p>[required] The identifier of the VpcLink. It is used in an
Integration to reference this VpcLink.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_vpc_link(
      vpcLinkId = "string"
    )
