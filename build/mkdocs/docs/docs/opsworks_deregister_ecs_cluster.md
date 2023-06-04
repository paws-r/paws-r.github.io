<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_deregister_ecs_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters a specified Amazon ECS cluster from a stack

### Description

Deregisters a specified Amazon ECS cluster from a stack. For more
information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user permissions,
see
<https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html>.

### Usage

    opsworks_deregister_ecs_cluster(EcsClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_deregister_ecs_cluster_:_EcsClusterArn">EcsClusterArn</code></td>
<td><p>[required] The cluster's Amazon Resource Number (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_ecs_cluster(
      EcsClusterArn = "string"
    )
