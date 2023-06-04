<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_model_card</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an Amazon SageMaker Model Card

### Description

Update an Amazon SageMaker Model Card.

You cannot update both model card content and model card status in a
single call.

### Usage

    sagemaker_update_model_card(ModelCardName, Content, ModelCardStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_model_card_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] The name of the model card to update.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_update_model_card_:_Content">Content</code></td>
<td><p>The updated model card content. Content must be in <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema">model
card JSON schema</a> and provided as a string.</p>
<p>When updating model card content, be sure to include the full content
and not just updated content.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_model_card_:_ModelCardStatus">ModelCardStatus</code></td>
<td><p>The approval status of the model card within your organization.
Different organizations might have different criteria for model card
review and approval.</p>
<ul>
<li><p><code>Draft</code>: The model card is a work in
progress.</p></li>
<li><p><code>PendingReview</code>: The model card is pending
review.</p></li>
<li><p><code>Approved</code>: The model card is approved.</p></li>
<li><p><code>Archived</code>: The model card is archived. No more
updates should be made to the model card, but it can still be
exported.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardArn = "string"
    )

### Request syntax

    svc$update_model_card(
      ModelCardName = "string",
      Content = "string",
      ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived"
    )
