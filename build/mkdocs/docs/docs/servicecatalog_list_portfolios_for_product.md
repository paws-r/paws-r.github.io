<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_portfolios_for_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all portfolios that the specified product is associated with

### Description

Lists all portfolios that the specified product is associated with.

### Usage

    servicecatalog_list_portfolios_for_product(AcceptLanguage, ProductId,
      PageToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_portfolios_for_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_portfolios_for_product_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_portfolios_for_product_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_portfolios_for_product_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioDetails = list(
        list(
          Id = "string",
          ARN = "string",
          DisplayName = "string",
          Description = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ProviderName = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_portfolios_for_product(
      AcceptLanguage = "string",
      ProductId = "string",
      PageToken = "string",
      PageSize = 123
    )
