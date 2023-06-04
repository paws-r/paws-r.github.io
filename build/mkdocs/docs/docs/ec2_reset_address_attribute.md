<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reset_address_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the attribute of the specified IP address

### Description

Resets the attribute of the specified IP address. For requirements, see
[Using reverse DNS for email
applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).

### Usage

    ec2_reset_address_attribute(AllocationId, Attribute, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reset_address_attribute_:_AllocationId">AllocationId</code></td>
<td><p>[required] [EC2-VPC] The allocation ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reset_address_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The attribute of the IP address.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_reset_address_attribute_:_DryRun">DryRun</code></td>
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
      Address = list(
        PublicIp = "string",
        AllocationId = "string",
        PtrRecord = "string",
        PtrRecordUpdate = list(
          Value = "string",
          Status = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$reset_address_attribute(
      AllocationId = "string",
      Attribute = "domain-name",
      DryRun = TRUE|FALSE
    )
