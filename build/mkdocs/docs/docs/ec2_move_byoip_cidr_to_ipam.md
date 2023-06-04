<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_move_byoip_cidr_to_ipam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Move a BYOIPv4 CIDR to IPAM from a public IPv4 pool

### Description

Move a BYOIPv4 CIDR to IPAM from a public IPv4 pool.

If you already have a BYOIPv4 CIDR with Amazon Web Services, you can
move the CIDR to IPAM from a public IPv4 pool. You cannot move an IPv6
CIDR to IPAM. If you are bringing a new IP address to Amazon Web
Services for the first time, complete the steps in [Tutorial: BYOIP
address CIDRs to
IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoip-ipam.html).

### Usage

    ec2_move_byoip_cidr_to_ipam(DryRun, Cidr, IpamPoolId, IpamPoolOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_move_byoip_cidr_to_ipam_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_move_byoip_cidr_to_ipam_:_Cidr">Cidr</code></td>
<td><p>[required] The BYOIP CIDR.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_move_byoip_cidr_to_ipam_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The IPAM pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_move_byoip_cidr_to_ipam_:_IpamPoolOwner">IpamPoolOwner</code></td>
<td><p>[required] The Amazon Web Services account ID of the owner of the
IPAM pool.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ByoipCidr = list(
        Cidr = "string",
        Description = "string",
        StatusMessage = "string",
        State = "advertised"|"deprovisioned"|"failed-deprovision"|"failed-provision"|"pending-deprovision"|"pending-provision"|"provisioned"|"provisioned-not-publicly-advertisable"
      )
    )

### Request syntax

    svc$move_byoip_cidr_to_ipam(
      DryRun = TRUE|FALSE,
      Cidr = "string",
      IpamPoolId = "string",
      IpamPoolOwner = "string"
    )
