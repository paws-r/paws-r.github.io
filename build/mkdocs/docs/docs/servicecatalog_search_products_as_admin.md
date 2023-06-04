<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_search_products_as_admin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the products for the specified portfolio or all products

### Description

Gets information about the products for the specified portfolio or all
products.

### Usage

    servicecatalog_search_products_as_admin(AcceptLanguage, PortfolioId,
      Filters, SortBy, SortOrder, PageToken, PageSize, ProductSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_search_products_as_admin_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_as_admin_:_PortfolioId">PortfolioId</code></td>
<td><p>The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_products_as_admin_:_Filters">Filters</code></td>
<td><p>The search filters. If no search filters are specified, the
output includes all products to which the administrator has
access.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_as_admin_:_SortBy">SortBy</code></td>
<td><p>The sort field. If no value is specified, the results are not
sorted.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_products_as_admin_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. If no value is specified, the results are not
sorted.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_as_admin_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_products_as_admin_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_as_admin_:_ProductSource">ProductSource</code></td>
<td><p>Access level of the source of the product.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductViewDetails = list(
        list(
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
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$search_products_as_admin(
      AcceptLanguage = "string",
      PortfolioId = "string",
      Filters = list(
        list(
          "string"
        )
      ),
      SortBy = "Title"|"VersionCount"|"CreationDate",
      SortOrder = "ASCENDING"|"DESCENDING",
      PageToken = "string",
      PageSize = 123,
      ProductSource = "ACCOUNT"
    )
