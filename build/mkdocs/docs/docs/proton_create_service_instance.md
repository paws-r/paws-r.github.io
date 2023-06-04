<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_service_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a service instance

### Description

Create a service instance.

### Usage

    proton_create_service_instance(clientToken, name, serviceName, spec,
      tags, templateMajorVersion, templateMinorVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_service_instance_:_clientToken">clientToken</code></td>
<td><p>The client token of the service instance to create.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_service_instance_:_name">name</code></td>
<td><p>[required] The name of the service instance to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_service_instance_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service the service instance is added
to.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_service_instance_:_spec">spec</code></td>
<td><p>[required] The spec for the service instance you want to
create.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_service_instance_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton service instance. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_service_instance_:_templateMajorVersion">templateMajorVersion</code></td>
<td><p>To create a new major and minor version of the service template,
<em>exclude</em> <code
style="white-space: pre;">⁠major Version⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_service_instance_:_templateMinorVersion">templateMinorVersion</code></td>
<td><p>To create a new minor version of the service template, include a
<code style="white-space: pre;">⁠major Version⁠</code>.</p></td>
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

    svc$create_service_instance(
      clientToken = "string",
      name = "string",
      serviceName = "string",
      spec = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      templateMajorVersion = "string",
      templateMinorVersion = "string"
    )
