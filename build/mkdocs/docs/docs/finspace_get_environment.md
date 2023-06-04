<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspace_get_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the FinSpace environment object

### Description

Returns the FinSpace environment object.

### Usage

    finspace_get_environment(environmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspace_get_environment_:_environmentId">environmentId</code></td>
<td><p>[required] The identifier of the FinSpace environment.</p></td>
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

    svc$get_environment(
      environmentId = "string"
    )
