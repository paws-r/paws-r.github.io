<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_delete_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Resilience Hub application

### Description

Deletes an Resilience Hub application. This is a destructive action that
can't be undone.

### Usage

    resiliencehub_delete_app(appArn, clientToken, forceDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resiliencehub_delete_app_:_appArn">appArn</code></td>
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
id="resiliencehub_delete_app_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_:_forceDelete">forceDelete</code></td>
<td><p>A boolean option to force the deletion of an Resilience Hub
application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string"
    )

### Request syntax

    svc$delete_app(
      appArn = "string",
      clientToken = "string",
      forceDelete = TRUE|FALSE
    )
