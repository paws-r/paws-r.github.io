<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_associate_product_with_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified product with the specified portfolio

### Description

Associates the specified product with the specified portfolio.

A delegated admin is authorized to invoke this command.

### Usage

    servicecatalog_associate_product_with_portfolio(AcceptLanguage,
      ProductId, PortfolioId, SourcePortfolioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_associate_product_with_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_product_with_portfolio_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_associate_product_with_portfolio_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_product_with_portfolio_:_SourcePortfolioId">SourcePortfolioId</code></td>
<td><p>The identifier of the source portfolio.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_product_with_portfolio(
      AcceptLanguage = "string",
      ProductId = "string",
      PortfolioId = "string",
      SourcePortfolioId = "string"
    )
