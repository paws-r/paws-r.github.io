<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_model_card</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon SageMaker Model Card

### Description

Deletes an Amazon SageMaker Model Card.

### Usage

    sagemaker_delete_model_card(ModelCardName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_model_card_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] The name of the model card to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model_card(
      ModelCardName = "string"
    )
