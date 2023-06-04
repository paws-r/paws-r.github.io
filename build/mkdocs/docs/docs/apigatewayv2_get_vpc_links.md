<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_vpc_links</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a collection of VPC links

### Description

Gets a collection of VPC links.

### Usage

    apigatewayv2_get_vpc_links(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_vpc_links_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_vpc_links_:_NextToken">NextToken</code></td>
<td><p>The next page of elements from this collection. Not valid for the
last element of the collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_vpc_links(
      MaxResults = "string",
      NextToken = "string"
    )
