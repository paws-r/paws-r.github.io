<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_update_app_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Resilience Hub application version

### Description

Updates the Resilience Hub application version.

This API updates the Resilience Hub application draft version. To use
this information for running resiliency assessments, you must publish
the Resilience Hub application using the `publish_app_version` API.

### Usage

    resiliencehub_update_app_version(additionalInfo, appArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_update_app_version_:_additionalInfo">additionalInfo</code></td>
<td><p>Additional configuration parameters for an Resilience Hub
application. If you want to implement <code>additionalInfo</code>
through the Resilience Hub console rather than using an API call, see <a
href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure
the application configuration parameters</a>.</p>
<p>Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.</p>
<p>Key: <code>"failover-regions"</code></p>
<p>Value: <code
style="white-space: pre;">⁠"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_update_app_version_:_appArn">appArn</code></td>
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
      additionalInfo = list(
        list(
          "string"
        )
      ),
      appArn = "string",
      appVersion = "string"
    )

### Request syntax

    svc$update_app_version(
      additionalInfo = list(
        list(
          "string"
        )
      ),
      appArn = "string"
    )
