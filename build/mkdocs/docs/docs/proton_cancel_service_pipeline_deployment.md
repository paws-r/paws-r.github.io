<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_cancel_service_pipeline_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to cancel a service pipeline deployment on an UpdateServicePipeline action, if the deployment is IN\_PROGRESS

### Description

Attempts to cancel a service pipeline deployment on an
`update_service_pipeline` action, if the deployment is `IN_PROGRESS`.
For more information, see [Update a service
pipeline](https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html)
in the *Proton User guide*.

The following list includes potential cancellation scenarios.

-   If the cancellation attempt succeeds, the resulting deployment state
    is `CANCELLED`.

-   If the cancellation attempt fails, the resulting deployment state is
    `FAILED`.

-   If the current `update_service_pipeline` action succeeds before the
    cancellation attempt starts, the resulting deployment state is
    `SUCCEEDED` and the cancellation attempt has no effect.

### Usage

    proton_cancel_service_pipeline_deployment(serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_cancel_service_pipeline_deployment_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service with the service pipeline
deployment to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipeline = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
        deploymentStatusMessage = "string",
        lastDeploymentAttemptedAt = as.POSIXct(
          "2015-01-01"
        ),
        lastDeploymentSucceededAt = as.POSIXct(
          "2015-01-01"
        ),
        spec = "string",
        templateMajorVersion = "string",
        templateMinorVersion = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$cancel_service_pipeline_deployment(
      serviceName = "string"
    )
