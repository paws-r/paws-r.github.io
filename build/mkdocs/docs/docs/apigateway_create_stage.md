<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Stage resource that references a pre-existing Deployment for the API

### Description

Creates a new Stage resource that references a pre-existing Deployment
for the API.

### Usage

    apigateway_create_stage(restApiId, stageName, deploymentId, description,
      cacheClusterEnabled, cacheClusterSize, variables, documentationVersion,
      canarySettings, tracingEnabled, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_create_stage_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_stage_:_stageName">stageName</code></td>
<td><p>[required] The name for the Stage resource. Stage names can only
contain alphanumeric characters, hyphens, and underscores. Maximum
length is 128 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_stage_:_deploymentId">deploymentId</code></td>
<td><p>[required] The identifier of the Deployment resource for the
Stage resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_stage_:_description">description</code></td>
<td><p>The description of the Stage resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_stage_:_cacheClusterEnabled">cacheClusterEnabled</code></td>
<td><p>Whether cache clustering is enabled for the stage.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_stage_:_cacheClusterSize">cacheClusterSize</code></td>
<td><p>The stage's cache capacity in GB. For more information about
choosing a cache size, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling
API caching to enhance responsiveness</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_stage_:_variables">variables</code></td>
<td><p>A map that defines the stage variables for the new Stage
resource. Variable names can have alphanumeric and underscore
characters, and the values must match <code
style="white-space: pre;">⁠[A-Za-z0-9-._~:/?#&amp;=,]+⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_stage_:_documentationVersion">documentationVersion</code></td>
<td><p>The version of the associated API documentation.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_stage_:_canarySettings">canarySettings</code></td>
<td><p>The canary deployment settings of this stage.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_stage_:_tracingEnabled">tracingEnabled</code></td>
<td><p>Specifies whether active tracing with X-ray is enabled for the
Stage.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_stage_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentId = "string",
      clientCertificateId = "string",
      stageName = "string",
      description = "string",
      cacheClusterEnabled = TRUE|FALSE,
      cacheClusterSize = "0.5"|"1.6"|"6.1"|"13.5"|"28.4"|"58.2"|"118"|"237",
      cacheClusterStatus = "CREATE_IN_PROGRESS"|"AVAILABLE"|"DELETE_IN_PROGRESS"|"NOT_AVAILABLE"|"FLUSH_IN_PROGRESS",
      methodSettings = list(
        list(
          metricsEnabled = TRUE|FALSE,
          loggingLevel = "string",
          dataTraceEnabled = TRUE|FALSE,
          throttlingBurstLimit = 123,
          throttlingRateLimit = 123.0,
          cachingEnabled = TRUE|FALSE,
          cacheTtlInSeconds = 123,
          cacheDataEncrypted = TRUE|FALSE,
          requireAuthorizationForCacheControl = TRUE|FALSE,
          unauthorizedCacheControlHeaderStrategy = "FAIL_WITH_403"|"SUCCEED_WITH_RESPONSE_HEADER"|"SUCCEED_WITHOUT_RESPONSE_HEADER"
        )
      ),
      variables = list(
        "string"
      ),
      documentationVersion = "string",
      accessLogSettings = list(
        format = "string",
        destinationArn = "string"
      ),
      canarySettings = list(
        percentTraffic = 123.0,
        deploymentId = "string",
        stageVariableOverrides = list(
          "string"
        ),
        useStageCache = TRUE|FALSE
      ),
      tracingEnabled = TRUE|FALSE,
      webAclArn = "string",
      tags = list(
        "string"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_stage(
      restApiId = "string",
      stageName = "string",
      deploymentId = "string",
      description = "string",
      cacheClusterEnabled = TRUE|FALSE,
      cacheClusterSize = "0.5"|"1.6"|"6.1"|"13.5"|"28.4"|"58.2"|"118"|"237",
      variables = list(
        "string"
      ),
      documentationVersion = "string",
      canarySettings = list(
        percentTraffic = 123.0,
        deploymentId = "string",
        stageVariableOverrides = list(
          "string"
        ),
        useStageCache = TRUE|FALSE
      ),
      tracingEnabled = TRUE|FALSE,
      tags = list(
        "string"
      )
    )
