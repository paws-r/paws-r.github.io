<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_advertise_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Advertises an IPv4 address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP)

### Description

Advertises an IPv4 address range that is provisioned for use with your
Amazon Web Services resources through bring your own IP addresses
(BYOIP). It can take a few minutes before traffic to the specified
addresses starts routing to Amazon Web Services because of propagation
delays.

To stop advertising the BYOIP address range, use
[WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/).

For more information, see [Bring your own IP addresses
(BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_advertise_byoip_cidr(Cidr)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_advertise_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The address range, in CIDR notation. This must be the
exact range that you provisioned. You can't advertise only a portion of
the provisioned range.</p></td>
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

    svc$advertise_byoip_cidr(
      Cidr = "string"
    )
