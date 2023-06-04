<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_deployments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a description of a specified set of deployments

### Description

Requests a description of a specified set of deployments.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_deployments(StackId, AppId, DeploymentIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_deployments_:_StackId">StackId</code></td>
<td><p>The stack ID. If you include this parameter, the command returns
a description of the commands associated with the specified
stack.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_describe_deployments_:_AppId">AppId</code></td>
<td><p>The app ID. If you include this parameter, the command returns a
description of the commands associated with the specified app.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_deployments_:_DeploymentIds">DeploymentIds</code></td>
<td><p>An array of deployment IDs to be described. If you include this
parameter, the command returns a description of the specified
deployments. Otherwise, it returns a description of every
deployment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Deployments = list(
        list(
          DeploymentId = "string",
          StackId = "string",
          AppId = "string",
          CreatedAt = "string",
          CompletedAt = "string",
          Duration = 123,
          IamUserArn = "string",
          Comment = "string",
          Command = list(
            Name = "install_dependencies"|"update_dependencies"|"update_custom_cookbooks"|"execute_recipes"|"configure"|"setup"|"deploy"|"rollback"|"start"|"stop"|"restart"|"undeploy",
            Args = list(
              list(
                "string"
              )
            )
          ),
          Status = "string",
          CustomJson = "string",
          InstanceIds = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_deployments(
      StackId = "string",
      AppId = "string",
      DeploymentIds = list(
        "string"
      )
    )
