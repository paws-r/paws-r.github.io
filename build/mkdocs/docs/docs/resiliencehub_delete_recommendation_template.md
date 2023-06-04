<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_delete_recommendation_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a recommendation template

### Description

Deletes a recommendation template. This is a destructive action that
can't be undone.

### Usage

    resiliencehub_delete_recommendation_template(clientToken,
      recommendationTemplateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_delete_recommendation_template_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_delete_recommendation_template_:_recommendationTemplateArn">recommendationTemplateArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for a recommendation
template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommendationTemplateArn = "string",
      status = "Pending"|"InProgress"|"Failed"|"Success"
    )

### Request syntax

    svc$delete_recommendation_template(
      clientToken = "string",
      recommendationTemplateArn = "string"
    )
