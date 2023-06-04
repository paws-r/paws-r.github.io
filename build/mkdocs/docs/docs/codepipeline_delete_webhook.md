<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_delete_webhook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a previously created webhook by name

### Description

Deletes a previously created webhook by name. Deleting the webhook stops
CodePipeline from starting a pipeline every time an external event
occurs. The API returns successfully when trying to delete a webhook
that is already deleted. If a deleted webhook is re-created by calling
PutWebhook with the same name, it will have a different URL.

### Usage

    codepipeline_delete_webhook(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codepipeline_delete_webhook_:_name">name</code></td>
<td><p>[required] The name of the webhook you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_webhook(
      name = "string"
    )
