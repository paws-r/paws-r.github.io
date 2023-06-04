<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_elastic_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a stack's Elastic Load Balancing instances

### Description

Describes a stack's Elastic Load Balancing instances.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_elastic_load_balancers(StackId, LayerIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_elastic_load_balancers_:_StackId">StackId</code></td>
<td><p>A stack ID. The action describes the stack's Elastic Load
Balancing instances.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_elastic_load_balancers_:_LayerIds">LayerIds</code></td>
<td><p>A list of layer IDs. The action describes the Elastic Load
Balancing instances for the specified layers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ElasticLoadBalancers = list(
        list(
          ElasticLoadBalancerName = "string",
          Region = "string",
          DnsName = "string",
          StackId = "string",
          LayerId = "string",
          VpcId = "string",
          AvailabilityZones = list(
            "string"
          ),
          SubnetIds = list(
            "string"
          ),
          Ec2InstanceIds = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_elastic_load_balancers(
      StackId = "string",
      LayerIds = list(
        "string"
      )
    )
