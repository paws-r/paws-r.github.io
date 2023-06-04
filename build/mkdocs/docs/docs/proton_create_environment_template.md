<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_environment_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an environment template for Proton

### Description

Create an environment template for Proton. For more information, see
[Environment
Templates](https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
in the *Proton User Guide*.

You can create an environment template in one of the two following ways:

-   Register and publish a *standard* environment template that
    instructs Proton to deploy and manage environment infrastructure.

-   Register and publish a *customer managed* environment template that
    connects Proton to your existing provisioned infrastructure that you
    manage. Proton *doesn't* manage your existing provisioned
    infrastructure. To create an environment template for customer
    provisioned and managed infrastructure, include the `provisioning`
    parameter and set the value to `CUSTOMER_MANAGED`. For more
    information, see [Register and publish an environment
    template](https://docs.aws.amazon.com/proton/latest/userguide/template-create.html)
    in the *Proton User Guide*.

### Usage

    proton_create_environment_template(description, displayName,
      encryptionKey, name, provisioning, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_environment_template_:_description">description</code></td>
<td><p>A description of the environment template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_template_:_displayName">displayName</code></td>
<td><p>The environment template name as displayed in the developer
interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_template_:_encryptionKey">encryptionKey</code></td>
<td><p>A customer provided encryption key that Proton uses to encrypt
data.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_template_:_name">name</code></td>
<td><p>[required] The name of the environment template.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_template_:_provisioning">provisioning</code></td>
<td><p>When included, indicates that the environment template is for
customer provisioned and managed infrastructure.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_template_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton environment template. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentTemplate = list(
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
        provisioning = "CUSTOMER_MANAGED",
        recommendedVersion = "string"
      )
    )

### Request syntax

    svc$create_environment_template(
      description = "string",
      displayName = "string",
      encryptionKey = "string",
      name = "string",
      provisioning = "CUSTOMER_MANAGED",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
