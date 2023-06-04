<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_service_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed data for a service instance

### Description

Get detailed data for a service instance. A service instance is an
instantiation of service template and it runs in a specific environment.

### Usage

    proton_get_service_instance(name, serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_get_service_instance_:_name">name</code></td>
<td><p>[required] The name of a service instance that you want to get
the detailed data for.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_service_instance_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that you want the service
instance input for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceInstance = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
        deploymentStatusMessage = "string",
        environmentName = "string",
        lastClientRequestToken = "string",
        lastDeploymentAttemptedAt = as.POSIXct(
          "2015-01-01"
        ),
        lastDeploymentSucceededAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        serviceName = "string",
        spec = "string",
        templateMajorVersion = "string",
        templateMinorVersion = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$get_service_instance(
      name = "string",
      serviceName = "string"
    )
