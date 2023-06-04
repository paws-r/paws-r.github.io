<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a Stage

### Description

Gets a Stage.

### Usage

    apigatewayv2_get_stage(ApiId, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_stage_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_get_stage_:_StageName">StageName</code></td>
<td><p>[required] The stage name. Stage names can only contain
alphanumeric characters, hyphens, and underscores. Maximum length is 128
characters.</p></td>
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

    svc$get_stage(
      ApiId = "string",
      StageName = "string"
    )
