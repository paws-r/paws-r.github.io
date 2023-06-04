<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a product

### Description

Creates a product.

A delegated admin is authorized to invoke this command.

The user or role that performs this operation must have the
`cloudformation:GetTemplate` IAM policy permission. This policy
permission is required when using the `ImportFromPhysicalId` template
source in the information data section.

### Usage

    servicecatalog_create_product(AcceptLanguage, Name, Owner, Description,
      Distributor, SupportDescription, SupportEmail, SupportUrl, ProductType,
      Tags, ProvisioningArtifactParameters, IdempotencyToken,
      SourceConnection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_create_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_create_product_:_Name">Name</code></td>
<td><p>[required] The name of the product.</p></td>
</tr>
<tr class="odd">
<td><code id="servicecatalog_create_product_:_Owner">Owner</code></td>
<td><p>[required] The owner of the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_product_:_Description">Description</code></td>
<td><p>The description of the product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_product_:_Distributor">Distributor</code></td>
<td><p>The distributor of the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_product_:_SupportDescription">SupportDescription</code></td>
<td><p>The support information about the product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_product_:_SupportEmail">SupportEmail</code></td>
<td><p>The contact email for product support.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_product_:_SupportUrl">SupportUrl</code></td>
<td><p>The contact URL for product support.</p>
<p><code style="white-space: pre;">⁠^https?:\/\// ⁠</code>/ is the pattern
used to validate SupportUrl.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_product_:_ProductType">ProductType</code></td>
<td><p>[required] The type of product.</p></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_create_product_:_Tags">Tags</code></td>
<td><p>One or more tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_product_:_ProvisioningArtifactParameters">ProvisioningArtifactParameters</code></td>
<td><p>The configuration of the provisioning artifact.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_product_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_product_:_SourceConnection">SourceConnection</code></td>
<td><p>Specifies connection details for the created product and syncs
the product to the connection source artifact. This automatically
manages the product's artifacts based on changes to the source. The
<code>SourceConnection</code> parameter consists of the following
sub-fields.</p>
<ul>
<li><p><code>Type</code></p></li>
<li><p><code>ConnectionParamters</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductViewDetail = list(
        ProductViewSummary = list(
          Id = "string",
          ProductId = "string",
          Name = "string",
          Owner = "string",
          ShortDescription = "string",
          Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE"|"TERRAFORM_OPEN_SOURCE",
          Distributor = "string",
          HasDefaultPath = TRUE|FALSE,
          SupportEmail = "string",
          SupportDescription = "string",
          SupportUrl = "string"
        ),
        Status = "AVAILABLE"|"CREATING"|"FAILED",
        ProductARN = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        SourceConnection = list(
          Type = "CODESTAR",
          ConnectionParameters = list(
            CodeStar = list(
              ConnectionArn = "string",
              Repository = "string",
              Branch = "string",
              ArtifactPath = "string"
            )
          ),
          LastSync = list(
            LastSyncTime = as.POSIXct(
              "2015-01-01"
            ),
            LastSyncStatus = "SUCCEEDED"|"FAILED",
            LastSyncStatusMessage = "string",
            LastSuccessfulSyncTime = as.POSIXct(
              "2015-01-01"
            ),
            LastSuccessfulSyncProvisioningArtifactId = "string"
          )
        )
      ),
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_product(
      AcceptLanguage = "string",
      Name = "string",
      Owner = "string",
      Description = "string",
      Distributor = "string",
      SupportDescription = "string",
      SupportEmail = "string",
      SupportUrl = "string",
      ProductType = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE"|"TERRAFORM_OPEN_SOURCE",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ProvisioningArtifactParameters = list(
        Name = "string",
        Description = "string",
        Info = list(
          "string"
        ),
        Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE_AMI"|"MARKETPLACE_CAR"|"TERRAFORM_OPEN_SOURCE",
        DisableTemplateValidation = TRUE|FALSE
      ),
      IdempotencyToken = "string",
      SourceConnection = list(
        Type = "CODESTAR",
        ConnectionParameters = list(
          CodeStar = list(
            ConnectionArn = "string",
            Repository = "string",
            Branch = "string",
            ArtifactPath = "string"
          )
        )
      )
    )
