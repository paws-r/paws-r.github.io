<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3outposts_create_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an endpoint and associates it with the specified Outpost

### Description

Creates an endpoint and associates it with the specified Outpost.

It can take up to 5 minutes for this action to finish.

Related actions include:

-   `delete_endpoint`

-   `list_endpoints`

### Usage

    s3outposts_create_endpoint(OutpostId, SubnetId, SecurityGroupId,
      AccessType, CustomerOwnedIpv4Pool)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3outposts_create_endpoint_:_OutpostId">OutpostId</code></td>
<td><p>[required] The ID of the Outposts.</p></td>
</tr>
<tr class="even">
<td><code
id="s3outposts_create_endpoint_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet in the selected VPC. The endpoint
subnet must belong to the Outpost that has Amazon S3 on Outposts
provisioned.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3outposts_create_endpoint_:_SecurityGroupId">SecurityGroupId</code></td>
<td><p>[required] The ID of the security group to use with the
endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="s3outposts_create_endpoint_:_AccessType">AccessType</code></td>
<td><p>The type of access for the network connectivity for the Amazon S3
on Outposts endpoint. To use the Amazon Web Services VPC, choose
<code>Private</code>. To use the endpoint with an on-premises network,
choose <code>CustomerOwnedIp</code>. If you choose
<code>CustomerOwnedIp</code>, you must also provide the customer-owned
IP address pool (CoIP pool).</p>
<p><code>Private</code> is the default access type value.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3outposts_create_endpoint_:_CustomerOwnedIpv4Pool">CustomerOwnedIpv4Pool</code></td>
<td><p>The ID of the customer-owned IPv4 address pool (CoIP pool) for
the endpoint. IP addresses are allocated from this pool for the
endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointArn = "string"
    )

### Request syntax

    svc$create_endpoint(
      OutpostId = "string",
      SubnetId = "string",
      SecurityGroupId = "string",
      AccessType = "Private"|"CustomerOwnedIp",
      CustomerOwnedIpv4Pool = "string"
    )
