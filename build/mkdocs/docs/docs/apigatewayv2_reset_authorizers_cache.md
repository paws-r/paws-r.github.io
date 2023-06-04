<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_reset_authorizers_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets all authorizer cache entries on a stage

### Description

Resets all authorizer cache entries on a stage. Supported only for HTTP
APIs.

### Usage

    apigatewayv2_reset_authorizers_cache(ApiId, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_reset_authorizers_cache_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_reset_authorizers_cache_:_StageName">StageName</code></td>
<td><p>[required] The stage name. Stage names can contain only
alphanumeric characters, hyphens, and underscores, or be $default.
Maximum length is 128 characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reset_authorizers_cache(
      ApiId = "string",
      StageName = "string"
    )
