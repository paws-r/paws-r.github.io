<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_delete_app_version_app_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Application Component from the Resilience Hub application

### Description

Deletes an Application Component from the Resilience Hub application.

-   This API updates the Resilience Hub application draft version. To
    use this Application Component for running assessments, you must
    publish the Resilience Hub application using the
    `publish_app_version` API.

-   You will not be able to delete an Application Component if it has
    resources associated with it.

### Usage

    resiliencehub_delete_app_version_app_component(appArn, clientToken, id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_version_app_component_:_appArn">appArn</code></td>
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
id="resiliencehub_delete_app_version_app_component_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_version_app_component_:_id">id</code></td>
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

    svc$delete_app_version_app_component(
      appArn = "string",
      clientToken = "string",
      id = "string"
    )
