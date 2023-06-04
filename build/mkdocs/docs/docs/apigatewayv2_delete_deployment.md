<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Deployment

### Description

Deletes a Deployment.

### Usage

    apigatewayv2_delete_deployment(ApiId, DeploymentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_delete_deployment_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_deployment_:_DeploymentId">DeploymentId</code></td>
<td><p>[required] The deployment ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_deployment(
      ApiId = "string",
      DeploymentId = "string"
    )
