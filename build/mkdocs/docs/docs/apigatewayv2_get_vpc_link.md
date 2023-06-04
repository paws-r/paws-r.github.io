<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a VPC link

### Description

Gets a VPC link.

### Usage

    apigatewayv2_get_vpc_link(VpcLinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_vpc_link_:_VpcLinkId">VpcLinkId</code></td>
<td><p>[required] The ID of the VPC link.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      Name = "string",
      SecurityGroupIds = list(
        "string"
      ),
      SubnetIds = list(
        "string"
      ),
      Tags = list(
        "string"
      ),
      VpcLinkId = "string",
      VpcLinkStatus = "PENDING"|"AVAILABLE"|"DELETING"|"FAILED"|"INACTIVE",
      VpcLinkStatusMessage = "string",
      VpcLinkVersion = "V2"
    )

### Request syntax

    svc$get_vpc_link(
      VpcLinkId = "string"
    )
