<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_cancel_environment_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to cancel an environment deployment on an UpdateEnvironment action, if the deployment is IN\_PROGRESS

### Description

Attempts to cancel an environment deployment on an `update_environment`
action, if the deployment is `IN_PROGRESS`. For more information, see
[Update an
environment](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html)
in the *Proton User guide*.

The following list includes potential cancellation scenarios.

-   If the cancellation attempt succeeds, the resulting deployment state
    is `CANCELLED`.

-   If the cancellation attempt fails, the resulting deployment state is
    `FAILED`.

-   If the current `update_environment` action succeeds before the
    cancellation attempt starts, the resulting deployment state is
    `SUCCEEDED` and the cancellation attempt has no effect.

### Usage

    proton_cancel_environment_deployment(environmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_cancel_environment_deployment_:_environmentName">environmentName</code></td>
<td><p>[required] The name of the environment with the deployment to
cancel.</p></td>
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

    svc$cancel_environment_deployment(
      environmentName = "string"
    )
