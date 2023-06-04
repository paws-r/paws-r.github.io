<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_deprovision_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Releases the specified address range that you provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool

### Description

Releases the specified address range that you provisioned for use with
your Amazon Web Services resources through bring your own IP addresses
(BYOIP) and deletes the corresponding address pool.

Before you can release an address range, you must stop advertising it
using `withdraw_byoip_cidr` and you must not have any IP addresses
allocated from its address range.

### Usage

    ec2_deprovision_byoip_cidr(Cidr, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_deprovision_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The address range, in CIDR notation. The prefix must
be the same prefix that you specified when you provisioned the address
range.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_deprovision_byoip_cidr_:_DryRun">DryRun</code></td>
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

    svc$deprovision_byoip_cidr(
      Cidr = "string",
      DryRun = TRUE|FALSE
    )
