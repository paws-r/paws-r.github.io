<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_elastic_ips</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes Elastic IP addresses

### Description

Describes [Elastic IP
addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_elastic_ips(InstanceId, StackId, Ips)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_elastic_ips_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID. If you include this parameter,
<code>describe_elastic_ips</code> returns a description of the Elastic
IP addresses associated with the specified instance.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_elastic_ips_:_StackId">StackId</code></td>
<td><p>A stack ID. If you include this parameter,
<code>describe_elastic_ips</code> returns a description of the Elastic
IP addresses that are registered with the specified stack.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_describe_elastic_ips_:_Ips">Ips</code></td>
<td><p>An array of Elastic IP addresses to be described. If you include
this parameter, <code>describe_elastic_ips</code> returns a description
of the specified Elastic IP addresses. Otherwise, it returns a
description of every Elastic IP address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ElasticIps = list(
        list(
          Ip = "string",
          Name = "string",
          Domain = "string",
          Region = "string",
          InstanceId = "string"
        )
      )
    )

### Request syntax

    svc$describe_elastic_ips(
      InstanceId = "string",
      StackId = "string",
      Ips = list(
        "string"
      )
    )
