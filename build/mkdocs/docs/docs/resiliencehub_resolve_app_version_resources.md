<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_resolve_app_version_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resolves the resources for an application version

### Description

Resolves the resources for an application version.

### Usage

    resiliencehub_resolve_app_version_resources(appArn, appVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_resolve_app_version_resources_:_appArn">appArn</code></td>
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
id="resiliencehub_resolve_app_version_resources_:_appVersion">appVersion</code></td>
<td><p>[required] The version of the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string",
      resolutionId = "string",
      status = "Pending"|"InProgress"|"Failed"|"Success"
    )

### Request syntax

    svc$resolve_app_version_resources(
      appArn = "string",
      appVersion = "string"
    )
