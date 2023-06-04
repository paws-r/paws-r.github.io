<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a specified VPC link under the caller's account in a region

### Description

Gets a specified VPC link under the caller's account in a region.

### Usage

    apigateway_get_vpc_link(vpcLinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_vpc_link_:_vpcLinkId">vpcLinkId</code></td>
<td><p>[required] The identifier of the VpcLink. It is used in an
Integration to reference this VpcLink.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      description = "string",
      targetArns = list(
        "string"
      ),
      status = "AVAILABLE"|"PENDING"|"DELETING"|"FAILED",
      statusMessage = "string",
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_vpc_link(
      vpcLinkId = "string"
    )
