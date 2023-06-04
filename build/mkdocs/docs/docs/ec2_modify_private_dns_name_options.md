<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_private_dns_name_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the options for instance hostnames for the specified instance

### Description

Modifies the options for instance hostnames for the specified instance.

### Usage

    ec2_modify_private_dns_name_options(DryRun, InstanceId,
      PrivateDnsHostnameType, EnableResourceNameDnsARecord,
      EnableResourceNameDnsAAAARecord)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_private_dns_name_options_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_private_dns_name_options_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_private_dns_name_options_:_PrivateDnsHostnameType">PrivateDnsHostnameType</code></td>
<td><p>The type of hostname for EC2 instances. For IPv4 only subnets, an
instance DNS name must be based on the instance IPv4 address. For IPv6
only subnets, an instance DNS name must be based on the instance ID. For
dual-stack subnets, you can specify whether DNS names use the instance
IPv4 address or the instance ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_private_dns_name_options_:_EnableResourceNameDnsARecord">EnableResourceNameDnsARecord</code></td>
<td><p>Indicates whether to respond to DNS queries for instance
hostnames with DNS A records.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_private_dns_name_options_:_EnableResourceNameDnsAAAARecord">EnableResourceNameDnsAAAARecord</code></td>
<td><p>Indicates whether to respond to DNS queries for instance
hostnames with DNS AAAA records.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_private_dns_name_options(
      DryRun = TRUE|FALSE,
      InstanceId = "string",
      PrivateDnsHostnameType = "ip-name"|"resource-name",
      EnableResourceNameDnsARecord = TRUE|FALSE,
      EnableResourceNameDnsAAAARecord = TRUE|FALSE
    )
