<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_public_ipv_4_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a public IPv4 pool

### Description

Delete a public IPv4 pool. A public IPv4 pool is an EC2 IP address pool
required for the public IPv4 CIDRs that you own and bring to Amazon Web
Services to manage with IPAM. IPv6 addresses you bring to Amazon Web
Services, however, use IPAM pools only.

### Usage

    ec2_delete_public_ipv_4_pool(DryRun, PoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_public_ipv_4_pool_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_public_ipv_4_pool_:_PoolId">PoolId</code></td>
<td><p>[required] The ID of the public IPv4 pool you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$delete_public_ipv_4_pool(
      DryRun = TRUE|FALSE,
      PoolId = "string"
    )
