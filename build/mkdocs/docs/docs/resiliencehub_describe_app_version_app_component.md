<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_describe_app_version_app_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Application Component in the Resilience Hub application

### Description

Describes an Application Component in the Resilience Hub application.

### Usage

    resiliencehub_describe_app_version_app_component(appArn, appVersion, id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_app_component_:_appArn">appArn</code></td>
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
id="resiliencehub_describe_app_version_app_component_:_appVersion">appVersion</code></td>
<td><p>[required] The Resilience Hub application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_app_component_:_id">id</code></td>
<td><p>[required] The identifier of the Application Component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appComponent = list(
        additionalInfo = list(
          list(
            "string"
          )
        ),
        id = "string",
        name = "string",
        type = "string"
      ),
      appVersion = "string"
    )

### Request syntax

    svc$describe_app_version_app_component(
      appArn = "string",
      appVersion = "string",
      id = "string"
    )
