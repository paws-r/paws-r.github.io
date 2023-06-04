<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_withdraw_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops advertising an address range that is provisioned as an address pool

### Description

Stops advertising an address range that is provisioned as an address
pool. You can perform this operation at most once every 10 seconds, even
if you specify different address ranges each time.

It can take a few minutes before traffic to the specified addresses
stops routing to Amazon Web Services because of propagation delays.

For more information, see [Bring your own IP addresses
(BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_withdraw_byoip_cidr(Cidr)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_withdraw_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The address range, in CIDR notation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ByoipCidr = list(
        Cidr = "string",
        State = "PENDING_PROVISIONING"|"READY"|"PENDING_ADVERTISING"|"ADVERTISING"|"PENDING_WITHDRAWING"|"PENDING_DEPROVISIONING"|"DEPROVISIONED"|"FAILED_PROVISION"|"FAILED_ADVERTISING"|"FAILED_WITHDRAW"|"FAILED_DEPROVISION",
        Events = list(
          list(
            Message = "string",
            Timestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$withdraw_byoip_cidr(
      Cidr = "string"
    )
