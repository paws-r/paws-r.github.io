<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_disassociate_product_from_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified product from the specified portfolio

### Description

Disassociates the specified product from the specified portfolio.

A delegated admin is authorized to invoke this command.

### Usage

    servicecatalog_disassociate_product_from_portfolio(AcceptLanguage,
      ProductId, PortfolioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_disassociate_product_from_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_disassociate_product_from_portfolio_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_disassociate_product_from_portfolio_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_product_from_portfolio(
      AcceptLanguage = "string",
      ProductId = "string",
      PortfolioId = "string"
    )
