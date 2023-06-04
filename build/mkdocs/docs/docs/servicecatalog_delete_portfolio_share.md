<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_delete_portfolio_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops sharing the specified portfolio with the specified account or organization node

### Description

Stops sharing the specified portfolio with the specified account or
organization node. Shares to an organization node can only be deleted by
the management account of an organization or by a delegated
administrator.

Note that if a delegated admin is de-registered, portfolio shares
created from that account are removed.

### Usage

    servicecatalog_delete_portfolio_share(AcceptLanguage, PortfolioId,
      AccountId, OrganizationNode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_delete_portfolio_share_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_delete_portfolio_share_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_delete_portfolio_share_:_AccountId">AccountId</code></td>
<td><p>The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_delete_portfolio_share_:_OrganizationNode">OrganizationNode</code></td>
<td><p>The organization node to whom you are going to stop
sharing.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioShareToken = "string"
    )

### Request syntax

    svc$delete_portfolio_share(
      AcceptLanguage = "string",
      PortfolioId = "string",
      AccountId = "string",
      OrganizationNode = list(
        Type = "ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ACCOUNT",
        Value = "string"
      )
    )
