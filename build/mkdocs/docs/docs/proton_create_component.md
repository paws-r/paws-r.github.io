<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an Proton component

### Description

Create an Proton component. A component is an infrastructure extension
for a service instance.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_create_component(clientToken, description, environmentName,
      manifest, name, serviceInstanceName, serviceName, serviceSpec, tags,
      templateFile)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_component_:_clientToken">clientToken</code></td>
<td><p>The client token for the created component.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_component_:_description">description</code></td>
<td><p>An optional customer-provided description of the
component.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_component_:_environmentName">environmentName</code></td>
<td><p>The name of the Proton environment that you want to associate
this component with. You must specify this when you don't specify
<code>serviceInstanceName</code> and <code>serviceName</code>.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_component_:_manifest">manifest</code></td>
<td><p>[required] A path to a manifest file that lists the
Infrastructure as Code (IaC) file, template language, and rendering
engine for infrastructure that a custom component provisions.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_component_:_name">name</code></td>
<td><p>[required] The customer-provided name of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_component_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>The name of the service instance that you want to attach this
component to. If you don't specify this, the component isn't attached to
any service instance. Specify both <code>serviceInstanceName</code> and
<code>serviceName</code> or neither of them.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_component_:_serviceName">serviceName</code></td>
<td><p>The name of the service that <code>serviceInstanceName</code> is
associated with. If you don't specify this, the component isn't attached
to any service instance. Specify both <code>serviceInstanceName</code>
and <code>serviceName</code> or neither of them.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_component_:_serviceSpec">serviceSpec</code></td>
<td><p>The service spec that you want the component to use to access
service inputs. Set this only when you attach the component to a service
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_component_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton component. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_component_:_templateFile">templateFile</code></td>
<td><p>[required] A path to the Infrastructure as Code (IaC) file
describing infrastructure that a custom component provisions.</p>
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

    svc$create_component(
      clientToken = "string",
      description = "string",
      environmentName = "string",
      manifest = "string",
      name = "string",
      serviceInstanceName = "string",
      serviceName = "string",
      serviceSpec = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      templateFile = "string"
    )
