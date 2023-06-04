<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a provisioning artifact (also known as a version) for the specified product

### Description

Creates a provisioning artifact (also known as a version) for the
specified product.

You cannot create a provisioning artifact for a product that was shared
with you.

The user or role that performs this operation must have the
`cloudformation:GetTemplate` IAM policy permission. This policy
permission is required when using the `ImportFromPhysicalId` template
source in the information data section.

### Usage

    servicecatalog_create_provisioning_artifact(AcceptLanguage, ProductId,
      Parameters, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioning_artifact_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioning_artifact_:_Parameters">Parameters</code></td>
<td><p>[required] The configuration for the provisioning
artifact.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioning_artifact_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisioningArtifactDetail = list(
        Id = "string",
        Name = "string",
        Description = "string",
        Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE_AMI"|"MARKETPLACE_CAR"|"TERRAFORM_OPEN_SOURCE",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        Active = TRUE|FALSE,
        Guidance = "DEFAULT"|"DEPRECATED",
        SourceRevision = "string"
      ),
      Info = list(
        "string"
      ),
      Status = "AVAILABLE"|"CREATING"|"FAILED"
    )

### Request syntax

    svc$create_provisioning_artifact(
      AcceptLanguage = "string",
      ProductId = "string",
      Parameters = list(
        Name = "string",
        Description = "string",
        Info = list(
          "string"
        ),
        Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE_AMI"|"MARKETPLACE_CAR"|"TERRAFORM_OPEN_SOURCE",
        DisableTemplateValidation = TRUE|FALSE
      ),
      IdempotencyToken = "string"
    )
