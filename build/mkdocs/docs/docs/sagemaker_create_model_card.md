<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_model_card</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon SageMaker Model Card

### Description

Creates an Amazon SageMaker Model Card.

For information about how to use model cards, see [Amazon SageMaker
Model
Card](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html).

### Usage

    sagemaker_create_model_card(ModelCardName, SecurityConfig, Content,
      ModelCardStatus, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_model_card_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] The unique name of the model card.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_card_:_SecurityConfig">SecurityConfig</code></td>
<td><p>An optional Key Management Service key to encrypt, decrypt, and
re-encrypt model card content for regulated workloads with highly
sensitive data.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_model_card_:_Content">Content</code></td>
<td><p>[required] The content of the model card. Content must be in <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema">model
card JSON schema</a> and provided as a string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_card_:_ModelCardStatus">ModelCardStatus</code></td>
<td><p>[required] The approval status of the model card within your
organization. Different organizations might have different criteria for
model card review and approval.</p>
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
<tr class="odd">
<td><code id="sagemaker_create_model_card_:_Tags">Tags</code></td>
<td><p>Key-value pairs used to manage metadata for model cards.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardArn = "string"
    )

### Request syntax

    svc$create_model_card(
      ModelCardName = "string",
      SecurityConfig = list(
        KmsKeyId = "string"
      ),
      Content = "string",
      ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
