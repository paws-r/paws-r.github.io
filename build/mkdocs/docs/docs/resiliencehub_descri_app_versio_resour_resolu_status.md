<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_describe_app_version_resources_resolution_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resolution status for the specified resolution identifier for an application version

### Description

Returns the resolution status for the specified resolution identifier
for an application version. If `resolutionId` is not specified, the
current resolution status is returned.

### Usage

    resiliencehub_describe_app_version_resources_resolution_status(appArn,
      appVersion, resolutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_resources_resolution_status_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_describe_app_version_resources_resolution_status_:_appVersion">appVersion</code></td>
<td><p>[required] The version of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_resources_resolution_status_:_resolutionId">resolutionId</code></td>
<td><p>The identifier for a specific resolution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string",
      errorMessage = "string",
      resolutionId = "string",
      status = "Pending"|"InProgress"|"Failed"|"Success"
    )

### Request syntax

    svc$describe_app_version_resources_resolution_status(
      appArn = "string",
      appVersion = "string",
      resolutionId = "string"
    )
