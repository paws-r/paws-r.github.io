<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_disassociate_elastic_ip</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Elastic IP address from its instance

### Description

Disassociates an Elastic IP address from its instance. The address
remains registered with the stack. For more information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_disassociate_elastic_ip(ElasticIp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_disassociate_elastic_ip_:_ElasticIp">ElasticIp</code></td>
<td><p>[required] The Elastic IP address.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_elastic_ip(
      ElasticIp = "string"
    )
