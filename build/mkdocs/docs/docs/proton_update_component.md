<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a component

### Description

Update a component.

There are a few modes for updating a component. The `deploymentType`
field defines the mode.

You can't update a component while its deployment status, or the
deployment status of a service instance attached to it, is
`IN_PROGRESS`.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_update_component(clientToken, deploymentType, description, name,
      serviceInstanceName, serviceName, serviceSpec, templateFile)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_component_:_clientToken">clientToken</code></td>
<td><p>The client token for the updated component.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_component_:_deploymentType">deploymentType</code></td>
<td><p>[required] The deployment type. It defines the mode for updating
a component, as follows:</p>
<p><code>NONE</code></p>
<p>In this mode, a deployment <em>doesn't</em> occur. Only the requested
metadata parameters are updated. You can only specify
<code>description</code> in this mode.</p>
<p><code>CURRENT_VERSION</code></p>
<p>In this mode, the component is deployed and updated with the new
<code>serviceSpec</code>, <code>templateSource</code>, and/or
<code>type</code> that you provide. Only requested parameters are
updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_component_:_description">description</code></td>
<td><p>An optional customer-provided description of the
component.</p></td>
</tr>
<tr class="even">
<td><code id="proton_update_component_:_name">name</code></td>
<td><p>[required] The name of the component to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_component_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>The name of the service instance that you want to attach this
component to. Don't specify to keep the component's current service
instance attachment. Specify an empty string to detach the component
from the service instance it's attached to. Specify non-empty values for
both <code>serviceInstanceName</code> and <code>serviceName</code> or
for neither of them.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_component_:_serviceName">serviceName</code></td>
<td><p>The name of the service that <code>serviceInstanceName</code> is
associated with. Don't specify to keep the component's current service
instance attachment. Specify an empty string to detach the component
from the service instance it's attached to. Specify non-empty values for
both <code>serviceInstanceName</code> and <code>serviceName</code> or
for neither of them.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_component_:_serviceSpec">serviceSpec</code></td>
<td><p>The service spec that you want the component to use to access
service inputs. Set this only when the component is attached to a
service instance.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_component_:_templateFile">templateFile</code></td>
<td><p>A path to the Infrastructure as Code (IaC) file describing
infrastructure that a custom component provisions.</p>
<p>Components support a single IaC file, even if you use Terraform as
your template language.</p></td>
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

    svc$update_component(
      clientToken = "string",
      deploymentType = "NONE"|"CURRENT_VERSION",
      description = "string",
      name = "string",
      serviceInstanceName = "string",
      serviceName = "string",
      serviceSpec = "string",
      templateFile = "string"
    )
