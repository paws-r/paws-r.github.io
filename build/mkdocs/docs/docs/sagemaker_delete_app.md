<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to stop and delete an app

### Description

Used to stop and delete an app.

### Usage

    sagemaker_delete_app(DomainId, UserProfileName, AppType, AppName,
      SpaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_app_:_DomainId">DomainId</code></td>
<td><p>[required] The domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_app_:_UserProfileName">UserProfileName</code></td>
<td><p>The user profile name. If this value is not set, then
<code>SpaceName</code> must be set.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_delete_app_:_AppType">AppType</code></td>
<td><p>[required] The type of app.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_delete_app_:_AppName">AppName</code></td>
<td><p>[required] The name of the app.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_delete_app_:_SpaceName">SpaceName</code></td>
<td><p>The name of the space. If this value is not set, then
<code>UserProfileName</code> must be set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_app(
      DomainId = "string",
      UserProfileName = "string",
      AppType = "JupyterServer"|"KernelGateway"|"TensorBoard"|"RStudioServerPro"|"RSessionGateway",
      AppName = "string",
      SpaceName = "string"
    )
