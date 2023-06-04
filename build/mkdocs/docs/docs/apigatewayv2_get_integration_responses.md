<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_integration_responses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the IntegrationResponses for an Integration

### Description

Gets the IntegrationResponses for an Integration.

### Usage

    apigatewayv2_get_integration_responses(ApiId, IntegrationId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_integration_responses_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_integration_responses_:_IntegrationId">IntegrationId</code></td>
<td><p>[required] The integration ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_integration_responses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_integration_responses_:_NextToken">NextToken</code></td>
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
          ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
          IntegrationResponseId = "string",
          IntegrationResponseKey = "string",
          ResponseParameters = list(
            "string"
          ),
          ResponseTemplates = list(
            "string"
          ),
          TemplateSelectionExpression = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_integration_responses(
      ApiId = "string",
      IntegrationId = "string",
      MaxResults = "string",
      NextToken = "string"
    )
