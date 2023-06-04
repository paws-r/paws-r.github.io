<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_attach_elastic_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an Elastic Load Balancing load balancer to a specified layer

### Description

Attaches an Elastic Load Balancing load balancer to a specified layer.
AWS OpsWorks Stacks does not support Application Load Balancer. You can
only use Classic Load Balancer with AWS OpsWorks Stacks. For more
information, see [Elastic Load
Balancing](https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html).

You must create the Elastic Load Balancing instance separately, by using
the Elastic Load Balancing console, API, or CLI. For more information,
see [Elastic Load Balancing Developer
Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_attach_elastic_load_balancer(ElasticLoadBalancerName, LayerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_attach_elastic_load_balancer_:_ElasticLoadBalancerName">ElasticLoadBalancerName</code></td>
<td><p>[required] The Elastic Load Balancing instance's name.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_attach_elastic_load_balancer_:_LayerId">LayerId</code></td>
<td><p>[required] The ID of the layer to which the Elastic Load
Balancing instance is to be attached.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_elastic_load_balancer(
      ElasticLoadBalancerName = "string",
      LayerId = "string"
    )
