<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_service_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a service instance

### Description

Update a service instance.

There are a few modes for updating a service instance. The
`deploymentType` field defines the mode.

You can't update a service instance while its deployment status, or the
deployment status of a component attached to it, is `IN_PROGRESS`.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_update_service_instance(clientToken, deploymentType, name,
      serviceName, spec, templateMajorVersion, templateMinorVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_service_instance_:_clientToken">clientToken</code></td>
<td><p>The client token of the service instance to update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_instance_:_deploymentType">deploymentType</code></td>
<td><p>[required] The deployment type. It defines the mode for updating
a service instance, as follows:</p>
<p><code>NONE</code></p>
<p>In this mode, a deployment <em>doesn't</em> occur. Only the requested
metadata parameters are updated.</p>
<p><code>CURRENT_VERSION</code></p>
<p>In this mode, the service instance is deployed and updated with the
new spec that you provide. Only requested parameters are updated.
<em>Don’t</em> include major or minor version parameters when you use
this deployment type.</p>
<p><code>MINOR_VERSION</code></p>
<p>In this mode, the service instance is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.</p>
<p><code>MAJOR_VERSION</code></p>
<p>In this mode, the service instance is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can specify a different major version that's
higher than the major version in use and a minor version.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_update_service_instance_:_name">name</code></td>
<td><p>[required] The name of the service instance to update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_instance_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that the service instance
belongs to.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_update_service_instance_:_spec">spec</code></td>
<td><p>The formatted specification that defines the service instance
update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_instance_:_templateMajorVersion">templateMajorVersion</code></td>
<td><p>The major version of the service template to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_service_instance_:_templateMinorVersion">templateMinorVersion</code></td>
<td><p>The minor version of the service template to update.</p></td>
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

    svc$update_service_instance(
      clientToken = "string",
      deploymentType = "NONE"|"CURRENT_VERSION"|"MINOR_VERSION"|"MAJOR_VERSION",
      name = "string",
      serviceName = "string",
      spec = "string",
      templateMajorVersion = "string",
      templateMinorVersion = "string"
    )
