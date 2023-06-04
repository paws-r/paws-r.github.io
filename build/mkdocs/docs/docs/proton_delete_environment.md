<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_delete_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an environment

### Description

Delete an environment.

### Usage

    proton_delete_environment(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_delete_environment_:_name">name</code></td>
<td><p>[required] The name of the environment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environment = list(
        arn = "string",
        codebuildRoleArn = "string",
        componentRoleArn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
        deploymentStatusMessage = "string",
        description = "string",
        environmentAccountConnectionId = "string",
        environmentAccountId = "string",
        lastDeploymentAttemptedAt = as.POSIXct(
          "2015-01-01"
        ),
        lastDeploymentSucceededAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        protonServiceRoleArn = "string",
        provisioning = "CUSTOMER_MANAGED",
        provisioningRepository = list(
          arn = "string",
          branch = "string",
          name = "string",
          provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
        ),
        spec = "string",
        templateMajorVersion = "string",
        templateMinorVersion = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$delete_environment(
      name = "string"
    )
