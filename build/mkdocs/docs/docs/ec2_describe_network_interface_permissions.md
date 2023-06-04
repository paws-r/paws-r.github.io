<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_interface_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions for your network interfaces

### Description

Describes the permissions for your network interfaces.

### Usage

    ec2_describe_network_interface_permissions(
      NetworkInterfacePermissionIds, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_network_interface_permissions_:_NetworkInterfacePermissionIds">NetworkInterfacePermissionIds</code></td>
<td><p>The network interface permission IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_interface_permissions_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>network-interface-permission.network-interface-permission-id</code>
- The ID of the permission.</p></li>
<li><p><code>network-interface-permission.network-interface-id</code> -
The ID of the network interface.</p></li>
<li><p><code>network-interface-permission.aws-account-id</code> - The
Amazon Web Services account ID.</p></li>
<li><p><code>network-interface-permission.aws-service</code> - The
Amazon Web Service.</p></li>
<li><p><code>network-interface-permission.permission</code> - The type
of permission (<code>INSTANCE-ATTACH</code> |
<code>EIP-ASSOCIATE</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_interface_permissions_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_interface_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. If this parameter is not specified, up to 50 results are
returned by default. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInterfacePermissions = list(
        list(
          NetworkInterfacePermissionId = "string",
          NetworkInterfaceId = "string",
          AwsAccountId = "string",
          AwsService = "string",
          Permission = "INSTANCE-ATTACH"|"EIP-ASSOCIATE",
          PermissionState = list(
            State = "pending"|"granted"|"revoking"|"revoked",
            StatusMessage = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_network_interface_permissions(
      NetworkInterfacePermissionIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
