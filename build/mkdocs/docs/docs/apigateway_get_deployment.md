<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a Deployment resource

### Description

Gets information about a Deployment resource.

### Usage

    apigateway_get_deployment(restApiId, deploymentId, embed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_deployment_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_deployment_:_deploymentId">deploymentId</code></td>
<td><p>[required] The identifier of the Deployment resource to get
information about.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_deployment_:_embed">embed</code></td>
<td><p>A query parameter to retrieve the specified embedded resources of
the returned Deployment resource in the response. In a REST API call,
this <code>embed</code> parameter value is a list of comma-separated
strings, as in <code
style="white-space: pre;">⁠GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2⁠</code>.
The SDK and other platform-dependent libraries might use a different
format for the list. Currently, this request supports only retrieval of
the embedded API summary this way. Hence, the parameter value must be a
single-valued list containing only the <code>"apisummary"</code> string.
For example,
<code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p></td>
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

    svc$get_deployment(
      restApiId = "string",
      deploymentId = "string",
      embed = list(
        "string"
      )
    )
