<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_deployments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Deployments for an API

### Description

Gets the Deployments for an API.

### Usage

    apigatewayv2_get_deployments(ApiId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_deployments_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_deployments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_deployments_:_NextToken">NextToken</code></td>
<td><p>The next page of elements from this collection. Not valid for the
last element of the collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_deployments(
      ApiId = "string",
      MaxResults = "string",
      NextToken = "string"
    )
