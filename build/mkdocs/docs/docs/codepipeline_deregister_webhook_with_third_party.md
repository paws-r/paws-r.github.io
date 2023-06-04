<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_deregister_webhook_with_third_party</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected

### Description

Removes the connection between the webhook that was created by
CodePipeline and the external tool with events to be detected. Currently
supported only for webhooks that target an action type of GitHub.

### Usage

    codepipeline_deregister_webhook_with_third_party(webhookName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_deregister_webhook_with_third_party_:_webhookName">webhookName</code></td>
<td><p>The name of the webhook you want to deregister.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_webhook_with_third_party(
      webhookName = "string"
    )
