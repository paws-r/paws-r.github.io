<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_product_as_admin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified product

### Description

Gets information about the specified product. This operation is run with
administrator access.

### Usage

    servicecatalog_describe_product_as_admin(AcceptLanguage, Id, Name,
      SourcePortfolioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_product_as_admin_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_product_as_admin_:_Id">Id</code></td>
<td><p>The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_product_as_admin_:_Name">Name</code></td>
<td><p>The product name.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_product_as_admin_:_SourcePortfolioId">SourcePortfolioId</code></td>
<td><p>The unique identifier of the shared portfolio that the specified
product is associated with.</p>
<p>You can provide this parameter to retrieve the shared TagOptions
associated with the product. If this parameter is provided and if
TagOptions sharing is enabled in the portfolio share, the API returns
both local and shared TagOptions associated with the product. Otherwise
only local TagOptions will be returned.</p></td>
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
      ProvisioningArtifactSummaries = list(
        list(
          Id = "string",
          Name = "string",
          Description = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ProvisioningArtifactMetadata = list(
            "string"
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      TagOptions = list(
        list(
          Key = "string",
          Value = "string",
          Active = TRUE|FALSE,
          Id = "string",
          Owner = "string"
        )
      ),
      Budgets = list(
        list(
          BudgetName = "string"
        )
      )
    )

### Request syntax

    svc$describe_product_as_admin(
      AcceptLanguage = "string",
      Id = "string",
      Name = "string",
      SourcePortfolioId = "string"
    )
