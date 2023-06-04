<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_model_card</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the content, creation time, and security configuration of an Amazon SageMaker Model Card

### Description

Describes the content, creation time, and security configuration of an
Amazon SageMaker Model Card.

### Usage

    sagemaker_describe_model_card(ModelCardName, ModelCardVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_model_card_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] The name of the model card to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_model_card_:_ModelCardVersion">ModelCardVersion</code></td>
<td><p>The version of the model card to describe. If a version is not
provided, then the latest version of the model card is
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardArn = "string",
      ModelCardName = "string",
      ModelCardVersion = 123,
      Content = "string",
      ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
      SecurityConfig = list(
        KmsKeyId = "string"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      ModelCardProcessingStatus = "DeleteInProgress"|"DeletePending"|"ContentDeleted"|"ExportJobsDeleted"|"DeleteCompleted"|"DeleteFailed"
    )

### Request syntax

    svc$describe_model_card(
      ModelCardName = "string",
      ModelCardVersion = 123
    )
