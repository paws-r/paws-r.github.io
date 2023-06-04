<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspace_create_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new FinSpace environment

### Description

Create a new FinSpace environment.

### Usage

    finspace_create_environment(name, description, kmsKeyId, tags,
      federationMode, federationParameters, superuserParameters, dataBundles)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspace_create_environment_:_name">name</code></td>
<td><p>[required] The name of the FinSpace environment to be
created.</p></td>
</tr>
<tr class="even">
<td><code
id="finspace_create_environment_:_description">description</code></td>
<td><p>The description of the FinSpace environment to be
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspace_create_environment_:_kmsKeyId">kmsKeyId</code></td>
<td><p>The KMS key id to encrypt your data in the FinSpace
environment.</p></td>
</tr>
<tr class="even">
<td><code id="finspace_create_environment_:_tags">tags</code></td>
<td><p>Add tags to your FinSpace environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspace_create_environment_:_federationMode">federationMode</code></td>
<td><p>Authentication mode for the environment.</p>
<ul>
<li><p><code>FEDERATED</code> - Users access FinSpace through Single
Sign On (SSO) via your Identity provider.</p></li>
<li><p><code>LOCAL</code> - Users access FinSpace via email and password
managed within the FinSpace environment.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="finspace_create_environment_:_federationParameters">federationParameters</code></td>
<td><p>Configuration information when authentication mode is
FEDERATED.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspace_create_environment_:_superuserParameters">superuserParameters</code></td>
<td><p>Configuration information for the superuser.</p></td>
</tr>
<tr class="even">
<td><code
id="finspace_create_environment_:_dataBundles">dataBundles</code></td>
<td><p>The list of Amazon Resource Names (ARN) of the data bundles to
install. Currently supported data bundle ARNs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠arn:aws:finspace:${Region}::data-bundle/capital-markets-sample⁠</code>
- Contains sample Capital Markets datasets, categories and controlled
vocabularies.</p></li>
<li><p><code
style="white-space: pre;">⁠arn:aws:finspace:${Region}::data-bundle/taq⁠</code>
(default) - Contains trades and quotes data in addition to sample
Capital Markets data.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentId = "string",
      environmentArn = "string",
      environmentUrl = "string"
    )

### Request syntax

    svc$create_environment(
      name = "string",
      description = "string",
      kmsKeyId = "string",
      tags = list(
        "string"
      ),
      federationMode = "FEDERATED"|"LOCAL",
      federationParameters = list(
        samlMetadataDocument = "string",
        samlMetadataURL = "string",
        applicationCallBackURL = "string",
        federationURN = "string",
        federationProviderName = "string",
        attributeMap = list(
          "string"
        )
      ),
      superuserParameters = list(
        emailAddress = "string",
        firstName = "string",
        lastName = "string"
      ),
      dataBundles = list(
        "string"
      )
    )
