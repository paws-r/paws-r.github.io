<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_register_ecs_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a specified Amazon ECS cluster with a stack

### Description

Registers a specified Amazon ECS cluster with a stack. You can register
only one cluster with a stack. A cluster can be registered with only one
stack. For more information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_register_ecs_cluster(EcsClusterArn, StackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_register_ecs_cluster_:_EcsClusterArn">EcsClusterArn</code></td>
<td><p>[required] The cluster's ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_ecs_cluster_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EcsClusterArn = "string"
    )

### Request syntax

    svc$register_ecs_cluster(
      EcsClusterArn = "string",
      StackId = "string"
    )
