<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_create_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Deployment for an API

### Description

Creates a Deployment for an API.

### Usage

    apigatewayv2_create_deployment(ApiId, Description, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_create_deployment_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_deployment_:_Description">Description</code></td>
<td><p>The description for the deployment resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_deployment_:_StageName">StageName</code></td>
<td><p>The name of the Stage resource for the Deployment resource to
create.</p></td>
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

    svc$create_deployment(
      ApiId = "string",
      Description = "string",
      StageName = "string"
    )
