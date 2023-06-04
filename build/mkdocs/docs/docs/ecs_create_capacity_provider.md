<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_create_capacity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new capacity provider

### Description

Creates a new capacity provider. Capacity providers are associated with
an Amazon ECS cluster and are used in capacity provider strategies to
facilitate cluster auto scaling.

Only capacity providers that use an Auto Scaling group can be created.
Amazon ECS tasks on Fargate use the `FARGATE` and `FARGATE_SPOT`
capacity providers. These providers are available to all accounts in the
Amazon Web Services Regions that Fargate supports.

### Usage

    ecs_create_capacity_provider(name, autoScalingGroupProvider, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_create_capacity_provider_:_name">name</code></td>
<td><p>[required] The name of the capacity provider. Up to 255
characters are allowed. They include letters (both upper and lowercase
letters), numbers, underscores (_), and hyphens (-). The name can't be
prefixed with "<code>aws</code>", "<code>ecs</code>", or
"<code>fargate</code>".</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_capacity_provider_:_autoScalingGroupProvider">autoScalingGroupProvider</code></td>
<td><p>[required] The details of the Auto Scaling group for the capacity
provider.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_capacity_provider_:_tags">tags</code></td>
<td><p>The metadata that you apply to the capacity provider to
categorize and organize them more conveniently. Each tag consists of a
key and an optional value. You define both of them.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case-sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for either keys or values as it is
reserved for Amazon Web Services use. You cannot edit or delete tag keys
or values with this prefix. Tags with this prefix do not count against
your tags per resource limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      capacityProvider = list(
        capacityProviderArn = "string",
        name = "string",
        status = "ACTIVE"|"INACTIVE",
        autoScalingGroupProvider = list(
          autoScalingGroupArn = "string",
          managedScaling = list(
            status = "ENABLED"|"DISABLED",
            targetCapacity = 123,
            minimumScalingStepSize = 123,
            maximumScalingStepSize = 123,
            instanceWarmupPeriod = 123
          ),
          managedTerminationProtection = "ENABLED"|"DISABLED"
        ),
        updateStatus = "DELETE_IN_PROGRESS"|"DELETE_COMPLETE"|"DELETE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
        updateStatusReason = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_capacity_provider(
      name = "string",
      autoScalingGroupProvider = list(
        autoScalingGroupArn = "string",
        managedScaling = list(
          status = "ENABLED"|"DISABLED",
          targetCapacity = 123,
          minimumScalingStepSize = 123,
          maximumScalingStepSize = 123,
          instanceWarmupPeriod = 123
        ),
        managedTerminationProtection = "ENABLED"|"DISABLED"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
