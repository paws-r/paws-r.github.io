<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_accept_portfolio_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts an offer to share the specified portfolio

### Description

Accepts an offer to share the specified portfolio.

### Usage

    servicecatalog_accept_portfolio_share(AcceptLanguage, PortfolioId,
      PortfolioShareType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_accept_portfolio_share_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_accept_portfolio_share_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_accept_portfolio_share_:_PortfolioShareType">PortfolioShareType</code></td>
<td><p>The type of shared portfolios to accept. The default is to accept
imported portfolios.</p>
<ul>
<li><p><code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the
management account of your organization.</p></li>
<li><p><code>IMPORTED</code> - Accept imported portfolios.</p></li>
<li><p><code>AWS_SERVICECATALOG</code> - Not supported. (Throws
ResourceNotFoundException.)</p></li>
</ul>
<p>For example, <code
style="white-space: pre;">⁠aws servicecatalog accept-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_portfolio_share(
      AcceptLanguage = "string",
      PortfolioId = "string",
      PortfolioShareType = "IMPORTED"|"AWS_SERVICECATALOG"|"AWS_ORGANIZATIONS"
    )
