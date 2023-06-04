<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed data for a component

### Description

Get detailed data for a component.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_get_component(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_get_component_:_name">name</code></td>
<td><p>[required] The name of the component that you want to get the
detailed data for.</p></td>
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

    svc$get_component(
      name = "string"
    )
