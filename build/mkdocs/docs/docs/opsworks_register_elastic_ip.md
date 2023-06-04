<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_register_elastic_ip</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an Elastic IP address with a specified stack

### Description

Registers an Elastic IP address with a specified stack. An address can
be registered with only one stack at a time. If the address is already
registered, you must first deregister it by calling
`deregister_elastic_ip`. For more information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_register_elastic_ip(ElasticIp, StackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_register_elastic_ip_:_ElasticIp">ElasticIp</code></td>
<td><p>[required] The Elastic IP address.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_elastic_ip_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ElasticIp = "string"
    )

### Request syntax

    svc$register_elastic_ip(
      ElasticIp = "string",
      StackId = "string"
    )
