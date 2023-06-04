<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_context</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an context

### Description

Deletes an context.

### Usage

    sagemaker_delete_context(ContextName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_context_:_ContextName">ContextName</code></td>
<td><p>[required] The name of the context to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContextArn = "string"
    )

### Request syntax

    svc$delete_context(
      ContextName = "string"
    )
