<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a Deployment

### Description

Gets a Deployment.

### Usage

    apigatewayv2_get_deployment(ApiId, DeploymentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_deployment_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_deployment_:_DeploymentId">DeploymentId</code></td>
<td><p>[required] The deployment ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoDeployed = TRUE|FALSE,
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      DeploymentId = "string",
      DeploymentStatus = "PENDING"|"FAILED"|"DEPLOYED",
      DeploymentStatusMessage = "string",
      Description = "string"
    )

### Request syntax

    svc$get_deployment(
      ApiId = "string",
      DeploymentId = "string"
    )
