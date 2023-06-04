<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_withdraw_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops advertising an address range that is provisioned as an address pool

### Description

Stops advertising an address range that is provisioned as an address
pool.

You can perform this operation at most once every 10 seconds, even if
you specify different address ranges each time.

It can take a few minutes before traffic to the specified addresses
stops routing to Amazon Web Services because of BGP propagation delays.

### Usage

    ec2_withdraw_byoip_cidr(Cidr, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_withdraw_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The address range, in CIDR notation.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_withdraw_byoip_cidr_:_DryRun">DryRun</code></td>
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

    svc$withdraw_byoip_cidr(
      Cidr = "string",
      DryRun = TRUE|FALSE
    )
