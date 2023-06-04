<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_create_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a VPC link

### Description

Creates a VPC link.

### Usage

    apigatewayv2_create_vpc_link(Name, SecurityGroupIds, SubnetIds, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_create_vpc_link_:_Name">Name</code></td>
<td><p>[required] The name of the VPC link.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_vpc_link_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of security group IDs for the VPC link.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_vpc_link_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] A list of subnet IDs to include in the VPC
link.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_create_vpc_link_:_Tags">Tags</code></td>
<td><p>A list of tags.</p></td>
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

    svc$create_vpc_link(
      Name = "string",
      SecurityGroupIds = list(
        "string"
      ),
      SubnetIds = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
