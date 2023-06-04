<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_detach_elastic_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a specified Elastic Load Balancing instance from its layer

### Description

Detaches a specified Elastic Load Balancing instance from its layer.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_detach_elastic_load_balancer(ElasticLoadBalancerName, LayerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_detach_elastic_load_balancer_:_ElasticLoadBalancerName">ElasticLoadBalancerName</code></td>
<td><p>[required] The Elastic Load Balancing instance's name.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_detach_elastic_load_balancer_:_LayerId">LayerId</code></td>
<td><p>[required] The ID of the layer that the Elastic Load Balancing
instance is attached to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_elastic_load_balancer(
      ElasticLoadBalancerName = "string",
      LayerId = "string"
    )
