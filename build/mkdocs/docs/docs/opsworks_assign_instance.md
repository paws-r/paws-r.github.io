<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_assign_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assign a registered instance to a layer

### Description

Assign a registered instance to a layer.

-   You can assign registered on-premises instances to any layer type.

-   You can assign registered Amazon EC2 instances only to custom
    layers.

-   You cannot use this action with instances that were created with AWS
    OpsWorks Stacks.

**Required Permissions**: To use this action, an AWS Identity and Access
Management (IAM) user must have a Manage permissions level for the stack
or an attached policy that explicitly grants permissions. For more
information on user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_assign_instance(InstanceId, LayerIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_assign_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_assign_instance_:_LayerIds">LayerIds</code></td>
<td><p>[required] The layer ID, which must correspond to a custom layer.
You cannot assign a registered instance to a built-in layer.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$assign_instance(
      InstanceId = "string",
      LayerIds = list(
        "string"
      )
    )
