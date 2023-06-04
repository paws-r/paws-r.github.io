<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_cancel_component_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to cancel a component deployment (for a component that is in the IN\_PROGRESS deployment status)

### Description

Attempts to cancel a component deployment (for a component that is in
the `IN_PROGRESS` deployment status).

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_cancel_component_deployment(componentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_cancel_component_deployment_:_componentName">componentName</code></td>
<td><p>[required] The name of the component with the deployment to
cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      component = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
        deploymentStatusMessage = "string",
        description = "string",
        environmentName = "string",
        lastClientRequestToken = "string",
        lastDeploymentAttemptedAt = as.POSIXct(
          "2015-01-01"
        ),
        lastDeploymentSucceededAt = as.POSIXct(
          "2015-01-01"
        ),
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        serviceInstanceName = "string",
        serviceName = "string",
        serviceSpec = "string"
      )
    )

### Request syntax

    svc$cancel_component_deployment(
      componentName = "string"
    )
