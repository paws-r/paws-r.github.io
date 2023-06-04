<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_register_webhook_with_third_party</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures a connection between the webhook that was created and the external tool with events to be detected

### Description

Configures a connection between the webhook that was created and the
external tool with events to be detected.

### Usage

    codepipeline_register_webhook_with_third_party(webhookName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_register_webhook_with_third_party_:_webhookName">webhookName</code></td>
<td><p>The name of an existing webhook created with PutWebhook to
register with a supported third party.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_webhook_with_third_party(
      webhookName = "string"
    )
