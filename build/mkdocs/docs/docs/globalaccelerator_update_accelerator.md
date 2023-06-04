<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_update_accelerator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an accelerator

### Description

Update an accelerator.

Global Accelerator is a global service that supports endpoints in
multiple Amazon Web Services Regions but you must specify the US West
(Oregon) Region to create, update, or otherwise work with accelerators.
That is, for example, specify `⁠--region us-west-2⁠` on AWS CLI commands.

### Usage

    globalaccelerator_update_accelerator(AcceleratorArn, Name,
      IpAddressType, Enabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_update_accelerator_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the accelerator to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_accelerator_:_Name">Name</code></td>
<td><p>The name of the accelerator. The name can have a maximum of 64
characters, must contain only alphanumeric characters, periods (.), or
hyphens (-), and must not begin or end with a hyphen or period.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_accelerator_:_IpAddressType">IpAddressType</code></td>
<td><p>The IP address type that an accelerator supports. For a standard
accelerator, the value can be IPV4 or DUAL_STACK.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_accelerator_:_Enabled">Enabled</code></td>
<td><p>Indicates whether an accelerator is enabled. The value is true or
false. The default value is true.</p>
<p>If the value is set to true, the accelerator cannot be deleted. If
set to false, the accelerator can be deleted.</p></td>
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

    svc$update_accelerator(
      AcceleratorArn = "string",
      Name = "string",
      IpAddressType = "IPV4"|"DUAL_STACK",
      Enabled = TRUE|FALSE
    )
