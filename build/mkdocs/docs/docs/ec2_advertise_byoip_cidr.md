<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_advertise_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Advertises an IPv4 or IPv6 address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP)

### Description

Advertises an IPv4 or IPv6 address range that is provisioned for use
with your Amazon Web Services resources through bring your own IP
addresses (BYOIP).

You can perform this operation at most once every 10 seconds, even if
you specify different address ranges each time.

We recommend that you stop advertising the BYOIP CIDR from other
locations when you advertise it from Amazon Web Services. To minimize
down time, you can configure your Amazon Web Services resources to use
an address from a BYOIP CIDR before it is advertised, and then
simultaneously stop advertising it from the current location and start
advertising it through Amazon Web Services.

It can take a few minutes before traffic to the specified addresses
starts routing to Amazon Web Services because of BGP propagation delays.

To stop advertising the BYOIP CIDR, use `withdraw_byoip_cidr`.

### Usage

    ec2_advertise_byoip_cidr(Cidr, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_advertise_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The address range, in CIDR notation. This must be the
exact range that you provisioned. You can't advertise only a portion of
the provisioned range.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_advertise_byoip_cidr_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
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

    svc$advertise_byoip_cidr(
      Cidr = "string",
      DryRun = TRUE|FALSE
    )
