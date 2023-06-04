<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_create_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Stage for an API

### Description

Creates a Stage for an API.

### Usage

    apigatewayv2_create_stage(AccessLogSettings, ApiId, AutoDeploy,
      ClientCertificateId, DefaultRouteSettings, DeploymentId, Description,
      RouteSettings, StageName, StageVariables, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_create_stage_:_AccessLogSettings">AccessLogSettings</code></td>
<td><p>Settings for logging access in this stage.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_create_stage_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_stage_:_AutoDeploy">AutoDeploy</code></td>
<td><p>Specifies whether updates to an API automatically trigger a new
deployment. The default value is false.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_stage_:_ClientCertificateId">ClientCertificateId</code></td>
<td><p>The identifier of a client certificate for a Stage. Supported
only for WebSocket APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_stage_:_DefaultRouteSettings">DefaultRouteSettings</code></td>
<td><p>The default route settings for the stage.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_stage_:_DeploymentId">DeploymentId</code></td>
<td><p>The deployment identifier of the API stage.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_stage_:_Description">Description</code></td>
<td><p>The description for the API stage.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_stage_:_RouteSettings">RouteSettings</code></td>
<td><p>Route settings for the stage, by routeKey.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_stage_:_StageName">StageName</code></td>
<td><p>[required] The name of the stage.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_stage_:_StageVariables">StageVariables</code></td>
<td><p>A map that defines the stage variables for a Stage. Variable
names can have alphanumeric and underscore characters, and the values
must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_create_stage_:_Tags">Tags</code></td>
<td><p>The collection of tags. Each tag element is associated with a
given resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessLogSettings = list(
        DestinationArn = "string",
        Format = "string"
      ),
      ApiGatewayManaged = TRUE|FALSE,
      AutoDeploy = TRUE|FALSE,
      ClientCertificateId = "string",
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      DefaultRouteSettings = list(
        DataTraceEnabled = TRUE|FALSE,
        DetailedMetricsEnabled = TRUE|FALSE,
        LoggingLevel = "ERROR"|"INFO"|"OFF",
        ThrottlingBurstLimit = 123,
        ThrottlingRateLimit = 123.0
      ),
      DeploymentId = "string",
      Description = "string",
      LastDeploymentStatusMessage = "string",
      LastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      RouteSettings = list(
        list(
          DataTraceEnabled = TRUE|FALSE,
          DetailedMetricsEnabled = TRUE|FALSE,
          LoggingLevel = "ERROR"|"INFO"|"OFF",
          ThrottlingBurstLimit = 123,
          ThrottlingRateLimit = 123.0
        )
      ),
      StageName = "string",
      StageVariables = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_stage(
      AccessLogSettings = list(
        DestinationArn = "string",
        Format = "string"
      ),
      ApiId = "string",
      AutoDeploy = TRUE|FALSE,
      ClientCertificateId = "string",
      DefaultRouteSettings = list(
        DataTraceEnabled = TRUE|FALSE,
        DetailedMetricsEnabled = TRUE|FALSE,
        LoggingLevel = "ERROR"|"INFO"|"OFF",
        ThrottlingBurstLimit = 123,
        ThrottlingRateLimit = 123.0
      ),
      DeploymentId = "string",
      Description = "string",
      RouteSettings = list(
        list(
          DataTraceEnabled = TRUE|FALSE,
          DetailedMetricsEnabled = TRUE|FALSE,
          LoggingLevel = "ERROR"|"INFO"|"OFF",
          ThrottlingBurstLimit = 123,
          ThrottlingRateLimit = 123.0
        )
      ),
      StageName = "string",
      StageVariables = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
