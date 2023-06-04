<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_stack_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as running\_setup or online

### Description

Describes the number of layers and apps in a specified stack, and the
number of instances in each state, such as `running_setup` or `online`.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_stack_summary(StackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_stack_summary_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackSummary = list(
        StackId = "string",
        Name = "string",
        Arn = "string",
        LayersCount = 123,
        AppsCount = 123,
        InstancesCount = list(
          Assigning = 123,
          Booting = 123,
          ConnectionLost = 123,
          Deregistering = 123,
          Online = 123,
          Pending = 123,
          Rebooting = 123,
          Registered = 123,
          Registering = 123,
          Requested = 123,
          RunningSetup = 123,
          SetupFailed = 123,
          ShuttingDown = 123,
          StartFailed = 123,
          StopFailed = 123,
          Stopped = 123,
          Stopping = 123,
          Terminated = 123,
          Terminating = 123,
          Unassigning = 123
        )
      )
    )

### Request syntax

    svc$describe_stack_summary(
      StackId = "string"
    )
