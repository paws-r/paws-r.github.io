<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_publish_app_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes a new version of a specific Resilience Hub application

### Description

Publishes a new version of a specific Resilience Hub application.

### Usage

    resiliencehub_publish_app_version(appArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_publish_app_version_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string"
    )

### Request syntax

    svc$publish_app_version(
      appArn = "string"
    )
