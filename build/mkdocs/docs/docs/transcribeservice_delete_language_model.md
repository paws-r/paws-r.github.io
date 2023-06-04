<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_language_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom language model

### Description

Deletes a custom language model. To use this operation, specify the name
of the language model you want to delete using `ModelName`. custom
language model names are case sensitive.

### Usage

    transcribeservice_delete_language_model(ModelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_language_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the custom language model you want to
delete. Model names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_language_model(
      ModelName = "string"
    )
