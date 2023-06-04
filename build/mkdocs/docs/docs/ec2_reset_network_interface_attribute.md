<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reset_network_interface_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets a network interface attribute

### Description

Resets a network interface attribute. You can specify only one attribute
at a time.

### Usage

    ec2_reset_network_interface_attribute(DryRun, NetworkInterfaceId,
      SourceDestCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reset_network_interface_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reset_network_interface_attribute_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_reset_network_interface_attribute_:_SourceDestCheck">SourceDestCheck</code></td>
<td><p>The source/destination checking attribute. Resets the value to
<code>true</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reset_network_interface_attribute(
      DryRun = TRUE|FALSE,
      NetworkInterfaceId = "string",
      SourceDestCheck = "string"
    )
