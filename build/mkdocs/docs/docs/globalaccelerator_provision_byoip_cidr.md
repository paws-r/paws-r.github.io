<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_provision_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provisions an IP address range to use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool

### Description

Provisions an IP address range to use with your Amazon Web Services
resources through bring your own IP addresses (BYOIP) and creates a
corresponding address pool. After the address range is provisioned, it
is ready to be advertised using
[AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/).

For more information, see [Bring your own IP addresses
(BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_provision_byoip_cidr(Cidr, CidrAuthorizationContext)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_provision_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The public IPv4 address range, in CIDR notation. The
most specific IP prefix that you can specify is /24. The address range
cannot overlap with another address range that you've brought to this or
another Region.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_provision_byoip_cidr_:_CidrAuthorizationContext">CidrAuthorizationContext</code></td>
<td><p>[required] A signed document that proves that you are authorized
to bring the specified IP address range to Amazon using BYOIP.</p></td>
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

    svc$provision_byoip_cidr(
      Cidr = "string",
      CidrAuthorizationContext = list(
        Message = "string",
        Signature = "string"
      )
    )
