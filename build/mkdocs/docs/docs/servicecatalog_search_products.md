<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_search_products</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the products to which the caller has access

### Description

Gets information about the products to which the caller has access.

### Usage

    servicecatalog_search_products(AcceptLanguage, Filters, PageSize,
      SortBy, SortOrder, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_search_products_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_:_Filters">Filters</code></td>
<td><p>The search filters. If no search filters are specified, the
output includes all products to which the caller has access.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_products_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_:_SortBy">SortBy</code></td>
<td><p>The sort field. If no value is specified, the results are not
sorted.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_products_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. If no value is specified, the results are not
sorted.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_products_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductViewSummaries = list(
        list(
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
        )
      ),
      ProductViewAggregations = list(
        list(
          list(
            Value = "string",
            ApproximateCount = 123
          )
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$search_products(
      AcceptLanguage = "string",
      Filters = list(
        list(
          "string"
        )
      ),
      PageSize = 123,
      SortBy = "Title"|"VersionCount"|"CreationDate",
      SortOrder = "ASCENDING"|"DESCENDING",
      PageToken = "string"
    )
