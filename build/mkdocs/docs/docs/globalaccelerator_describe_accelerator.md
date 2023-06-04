<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_describe_accelerator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe an accelerator

### Description

Describe an accelerator.

### Usage

    globalaccelerator_describe_accelerator(AcceleratorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_describe_accelerator_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the accelerator to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Accelerator = list(
        AcceleratorArn = "string",
        Name = "string",
        IpAddressType = "IPV4"|"DUAL_STACK",
        Enabled = TRUE|FALSE,
        IpSets = list(
          list(
            IpFamily = "string",
            IpAddresses = list(
              "string"
            ),
            IpAddressFamily = "IPv4"|"IPv6"
          )
        ),
        DnsName = "string",
        Status = "DEPLOYED"|"IN_PROGRESS",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        DualStackDnsName = "string",
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

    svc$describe_accelerator(
      AcceleratorArn = "string"
    )
