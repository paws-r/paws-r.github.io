<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_deprovision_ipam_pool_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deprovision a CIDR provisioned from an IPAM pool

### Description

Deprovision a CIDR provisioned from an IPAM pool. If you deprovision a
CIDR from a pool that has a source pool, the CIDR is recycled back into
the source pool. For more information, see [Deprovision pool
CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/depro-pool-cidr-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_deprovision_ipam_pool_cidr(DryRun, IpamPoolId, Cidr)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_deprovision_ipam_pool_cidr_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_deprovision_ipam_pool_cidr_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the pool that has the CIDR you want to
deprovision.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_deprovision_ipam_pool_cidr_:_Cidr">Cidr</code></td>
<td><p>The CIDR which you want to deprovision from the pool.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamPoolCidr = list(
        Cidr = "string",
        State = "pending-provision"|"provisioned"|"failed-provision"|"pending-deprovision"|"deprovisioned"|"failed-deprovision"|"pending-import"|"failed-import",
        FailureReason = list(
          Code = "cidr-not-available"|"limit-exceeded",
          Message = "string"
        ),
        IpamPoolCidrId = "string",
        NetmaskLength = 123
      )
    )

### Request syntax

    svc$deprovision_ipam_pool_cidr(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      Cidr = "string"
    )
