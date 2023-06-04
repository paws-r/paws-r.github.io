<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_stages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Stages for an API

### Description

Gets the Stages for an API.

### Usage

    apigatewayv2_get_stages(ApiId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_stages_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_stages_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_get_stages_:_NextToken">NextToken</code></td>
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_stages(
      ApiId = "string",
      MaxResults = "string",
      NextToken = "string"
    )
