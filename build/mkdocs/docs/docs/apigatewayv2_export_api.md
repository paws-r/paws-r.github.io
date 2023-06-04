<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_export_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Export api

### Description

Export api

### Usage

    apigatewayv2_export_api(ApiId, ExportVersion, IncludeExtensions,
      OutputType, Specification, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_export_api_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_export_api_:_ExportVersion">ExportVersion</code></td>
<td><p>The version of the API Gateway export algorithm. API Gateway uses
the latest version by default. Currently, the only supported version is
1.0.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_export_api_:_IncludeExtensions">IncludeExtensions</code></td>
<td><p>Specifies whether to include <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html">API
Gateway extensions</a> in the exported API definition. API Gateway
extensions are included by default.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_export_api_:_OutputType">OutputType</code></td>
<td><p>[required] The output type of the exported definition file. Valid
values are JSON and YAML.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_export_api_:_Specification">Specification</code></td>
<td><p>[required] The version of the API specification to use. OAS30,
for OpenAPI 3.0, is the only supported value.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_export_api_:_StageName">StageName</code></td>
<td><p>The name of the API stage to export. If you don't specify this
property, a representation of the latest API configuration is
exported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      body = raw
    )

### Request syntax

    svc$export_api(
      ApiId = "string",
      ExportVersion = "string",
      IncludeExtensions = TRUE|FALSE,
      OutputType = "YAML"|"JSON",
      Specification = "OAS30",
      StageName = "string"
    )
