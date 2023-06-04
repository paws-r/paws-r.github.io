<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspace_update_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update your FinSpace environment

### Description

Update your FinSpace environment.

### Usage

    finspace_update_environment(environmentId, name, description,
      federationMode, federationParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspace_update_environment_:_environmentId">environmentId</code></td>
<td><p>[required] The identifier of the FinSpace environment.</p></td>
</tr>
<tr class="even">
<td><code id="finspace_update_environment_:_name">name</code></td>
<td><p>The name of the environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspace_update_environment_:_description">description</code></td>
<td><p>The description of the environment.</p></td>
</tr>
<tr class="even">
<td><code
id="finspace_update_environment_:_federationMode">federationMode</code></td>
<td><p>Authentication mode for the environment.</p>
<ul>
<li><p><code>FEDERATED</code> - Users access FinSpace through Single
Sign On (SSO) via your Identity provider.</p></li>
<li><p><code>LOCAL</code> - Users access FinSpace via email and password
managed within the FinSpace environment.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="finspace_update_environment_:_federationParameters">federationParameters</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environment = list(
        name = "string",
        environmentId = "string",
        awsAccountId = "string",
        status = "CREATE_REQUESTED"|"CREATING"|"CREATED"|"DELETE_REQUESTED"|"DELETING"|"DELETED"|"FAILED_CREATION"|"RETRY_DELETION"|"FAILED_DELETION"|"SUSPENDED",
        environmentUrl = "string",
        description = "string",
        environmentArn = "string",
        sageMakerStudioDomainUrl = "string",
        kmsKeyId = "string",
        dedicatedServiceAccountId = "string",
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
        )
      )
    )

### Request syntax

    svc$update_environment(
      environmentId = "string",
      name = "string",
      description = "string",
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
      )
    )
