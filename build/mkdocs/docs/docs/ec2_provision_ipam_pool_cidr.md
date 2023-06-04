<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_provision_ipam_pool_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provision a CIDR to an IPAM pool

### Description

Provision a CIDR to an IPAM pool. You can use this action to provision
new CIDRs to a top-level pool or to transfer a CIDR from a top-level
pool to a pool within it.

For more information, see [Provision CIDRs to
pools](https://docs.aws.amazon.com/vpc/latest/ipam/prov-cidr-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_provision_ipam_pool_cidr(DryRun, IpamPoolId, Cidr,
      CidrAuthorizationContext, NetmaskLength, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_provision_ipam_pool_cidr_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_ipam_pool_cidr_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool to which you want to assign a
CIDR.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_provision_ipam_pool_cidr_:_Cidr">Cidr</code></td>
<td><p>The CIDR you want to assign to the IPAM pool. Either
"NetmaskLength" or "Cidr" is required. This value will be null if you
specify "NetmaskLength" and will be filled in during the provisioning
process.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_ipam_pool_cidr_:_CidrAuthorizationContext">CidrAuthorizationContext</code></td>
<td><p>A signed document that proves that you are authorized to bring a
specified IP address range to Amazon using BYOIP. This option applies to
public pools only.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_provision_ipam_pool_cidr_:_NetmaskLength">NetmaskLength</code></td>
<td><p>The netmask length of the CIDR you'd like to provision to a pool.
Can be used for provisioning Amazon-provided IPv6 CIDRs to top-level
pools and for provisioning CIDRs to pools with source pools. Cannot be
used to provision BYOIP CIDRs to top-level pools. Either "NetmaskLength"
or "Cidr" is required.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_ipam_pool_cidr_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
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

    svc$provision_ipam_pool_cidr(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      Cidr = "string",
      CidrAuthorizationContext = list(
        Message = "string",
        Signature = "string"
      ),
      NetmaskLength = 123,
      ClientToken = "string"
    )
