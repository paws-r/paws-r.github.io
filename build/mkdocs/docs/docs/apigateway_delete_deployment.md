<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Deployment resource

### Description

Deletes a Deployment resource. Deleting a deployment will only succeed
if there are no Stage resources associated with it.

### Usage

    apigateway_delete_deployment(restApiId, deploymentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_deployment_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_deployment_:_deploymentId">deploymentId</code></td>
<td><p>[required] The identifier of the Deployment resource to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_deployment(
      restApiId = "string",
      deploymentId = "string"
    )
