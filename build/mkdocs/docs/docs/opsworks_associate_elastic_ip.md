<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_associate_elastic_ip</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates one of the stack's registered Elastic IP addresses with a specified instance

### Description

Associates one of the stack's registered Elastic IP addresses with a
specified instance. The address must first be registered with the stack
by calling `register_elastic_ip`. For more information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_associate_elastic_ip(ElasticIp, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_associate_elastic_ip_:_ElasticIp">ElasticIp</code></td>
<td><p>[required] The Elastic IP address.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_associate_elastic_ip_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_elastic_ip(
      ElasticIp = "string",
      InstanceId = "string"
    )
