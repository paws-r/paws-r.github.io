<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a VPC link

### Description

Updates a VPC link.

### Usage

    apigatewayv2_update_vpc_link(Name, VpcLinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_update_vpc_link_:_Name">Name</code></td>
<td><p>The name of the VPC link.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_vpc_link_:_VpcLinkId">VpcLinkId</code></td>
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

    svc$update_vpc_link(
      Name = "string",
      VpcLinkId = "string"
    )
