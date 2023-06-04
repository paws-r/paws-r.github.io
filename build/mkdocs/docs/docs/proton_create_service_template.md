<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_service_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a service template

### Description

Create a service template. The administrator creates a service template
to define standardized infrastructure and an optional CI/CD service
pipeline. Developers, in turn, select the service template from Proton.
If the selected service template includes a service pipeline definition,
they provide a link to their source code repository. Proton then deploys
and manages the infrastructure defined by the selected service template.
For more information, see [Proton
templates](https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
in the *Proton User Guide*.

### Usage

    proton_create_service_template(description, displayName, encryptionKey,
      name, pipelineProvisioning, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_service_template_:_description">description</code></td>
<td><p>A description of the service template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_service_template_:_displayName">displayName</code></td>
<td><p>The name of the service template as displayed in the developer
interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_service_template_:_encryptionKey">encryptionKey</code></td>
<td><p>A customer provided encryption key that's used to encrypt
data.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_service_template_:_name">name</code></td>
<td><p>[required] The name of the service template.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_service_template_:_pipelineProvisioning">pipelineProvisioning</code></td>
<td><p>By default, Proton provides a service pipeline for your service.
When this parameter is included, it indicates that an Proton service
pipeline <em>isn't</em> provided for your service. After it's included,
it <em>can't</em> be changed. For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles">Template
bundles</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_service_template_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton service template. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceTemplate = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        displayName = "string",
        encryptionKey = "string",
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        pipelineProvisioning = "CUSTOMER_MANAGED",
        recommendedVersion = "string"
      )
    )

### Request syntax

    svc$create_service_template(
      description = "string",
      displayName = "string",
      encryptionKey = "string",
      name = "string",
      pipelineProvisioning = "CUSTOMER_MANAGED",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
