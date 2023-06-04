<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_route_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the RouteSettings for a stage

### Description

Deletes the RouteSettings for a stage.

### Usage

    apigatewayv2_delete_route_settings(ApiId, RouteKey, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_route_settings_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_route_settings_:_RouteKey">RouteKey</code></td>
<td><p>[required] The route key.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_delete_route_settings_:_StageName">StageName</code></td>
<td><p>[required] The stage name. Stage names can only contain
alphanumeric characters, hyphens, and underscores. Maximum length is 128
characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route_settings(
      ApiId = "string",
      RouteKey = "string",
      StageName = "string"
    )
