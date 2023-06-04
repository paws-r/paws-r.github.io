<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about a Deployment resource

### Description

Changes information about a Deployment resource.

### Usage

    apigateway_update_deployment(restApiId, deploymentId, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_deployment_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_deployment_:_deploymentId">deploymentId</code></td>
<td><p>[required] The replacement identifier for the Deployment resource
to change information about.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_deployment_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      description = "string",
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      apiSummary = list(
        list(
          list(
            authorizationType = "string",
            apiKeyRequired = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$update_deployment(
      restApiId = "string",
      deploymentId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
