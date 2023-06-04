<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_access_log_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the AccessLogSettings for a Stage

### Description

Deletes the AccessLogSettings for a Stage. To disable access logging for
a Stage, delete its AccessLogSettings.

### Usage

    apigatewayv2_delete_access_log_settings(ApiId, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_access_log_settings_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_access_log_settings_:_StageName">StageName</code></td>
<td><p>[required] The stage name. Stage names can only contain
alphanumeric characters, hyphens, and underscores. Maximum length is 128
characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_access_log_settings(
      ApiId = "string",
      StageName = "string"
    )
