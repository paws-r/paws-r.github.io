<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_deprovision_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Releases the specified address range that you provisioned to use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool

### Description

Releases the specified address range that you provisioned to use with
your Amazon Web Services resources through bring your own IP addresses
(BYOIP) and deletes the corresponding address pool.

Before you can release an address range, you must stop advertising it by
using `withdraw_byoip_cidr` and you must not have any accelerators that
are using static IP addresses allocated from its address range.

For more information, see [Bring your own IP addresses
(BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_deprovision_byoip_cidr(Cidr)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_deprovision_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The address range, in CIDR notation. The prefix must
be the same prefix that you specified when you provisioned the address
range.</p></td>
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

    svc$deprovision_byoip_cidr(
      Cidr = "string"
    )
