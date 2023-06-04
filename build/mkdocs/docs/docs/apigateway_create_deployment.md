<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Deployment resource, which makes a specified RestApi callable over the internet

### Description

Creates a Deployment resource, which makes a specified RestApi callable
over the internet.

### Usage

    apigateway_create_deployment(restApiId, stageName, stageDescription,
      description, cacheClusterEnabled, cacheClusterSize, variables,
      canarySettings, tracingEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_deployment_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_deployment_:_stageName">stageName</code></td>
<td><p>The name of the Stage resource for the Deployment resource to
create.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_deployment_:_stageDescription">stageDescription</code></td>
<td><p>The description of the Stage resource for the Deployment resource
to create.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_deployment_:_description">description</code></td>
<td><p>The description for the Deployment resource to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_deployment_:_cacheClusterEnabled">cacheClusterEnabled</code></td>
<td><p>Enables a cache cluster for the Stage resource specified in the
input.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_deployment_:_cacheClusterSize">cacheClusterSize</code></td>
<td><p>The stage's cache capacity in GB. For more information about
choosing a cache size, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling
API caching to enhance responsiveness</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_deployment_:_variables">variables</code></td>
<td><p>A map that defines the stage variables for the Stage resource
that is associated with the new deployment. Variable names can have
alphanumeric and underscore characters, and the values must match <code
style="white-space: pre;">⁠[A-Za-z0-9-._~:/?#&amp;=,]+⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_deployment_:_canarySettings">canarySettings</code></td>
<td><p>The input configuration for the canary deployment when the
deployment is a canary release deployment.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_deployment_:_tracingEnabled">tracingEnabled</code></td>
<td><p>Specifies whether active tracing with X-ray is enabled for the
Stage.</p></td>
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

    svc$create_deployment(
      restApiId = "string",
      stageName = "string",
      stageDescription = "string",
      description = "string",
      cacheClusterEnabled = TRUE|FALSE,
      cacheClusterSize = "0.5"|"1.6"|"6.1"|"13.5"|"28.4"|"58.2"|"118"|"237",
      variables = list(
        "string"
      ),
      canarySettings = list(
        percentTraffic = 123.0,
        stageVariableOverrides = list(
          "string"
        ),
        useStageCache = TRUE|FALSE
      ),
      tracingEnabled = TRUE|FALSE
    )
