<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_ipam_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an IPAM pool

### Description

Delete an IPAM pool.

You cannot delete an IPAM pool if there are allocations in it or CIDRs
provisioned to it. To release allocations, see
`release_ipam_pool_allocation`. To deprovision pool CIDRs, see
`deprovision_ipam_pool_cidr`.

For more information, see [Delete a
pool](https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_delete_ipam_pool(DryRun, IpamPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_ipam_pool_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_ipam_pool_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the pool to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamPool = list(
        OwnerId = "string",
        IpamPoolId = "string",
        SourceIpamPoolId = "string",
        IpamPoolArn = "string",
        IpamScopeArn = "string",
        IpamScopeType = "public"|"private",
        IpamArn = "string",
        IpamRegion = "string",
        Locale = "string",
        PoolDepth = 123,
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"delete-in-progress"|"delete-complete"|"delete-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
        StateMessage = "string",
        Description = "string",
        AutoImport = TRUE|FALSE,
        PubliclyAdvertisable = TRUE|FALSE,
        AddressFamily = "ipv4"|"ipv6",
        AllocationMinNetmaskLength = 123,
        AllocationMaxNetmaskLength = 123,
        AllocationDefaultNetmaskLength = 123,
        AllocationResourceTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        AwsService = "ec2",
        PublicIpSource = "amazon"|"byoip"
      )
    )

### Request syntax

    svc$delete_ipam_pool(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string"
    )
