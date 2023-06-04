<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_portfolio_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the account IDs that have access to the specified portfolio

### Description

Lists the account IDs that have access to the specified portfolio.

A delegated admin can list the accounts that have access to the shared
portfolio. Note that if a delegated admin is de-registered, they can no
longer perform this operation.

### Usage

    servicecatalog_list_portfolio_access(AcceptLanguage, PortfolioId,
      OrganizationParentId, PageToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_portfolio_access_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_portfolio_access_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_portfolio_access_:_OrganizationParentId">OrganizationParentId</code></td>
<td><p>The ID of an organization node the portfolio is shared with. All
children of this node with an inherited portfolio share will be
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_portfolio_access_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_portfolio_access_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountIds = list(
        "string"
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_portfolio_access(
      AcceptLanguage = "string",
      PortfolioId = "string",
      OrganizationParentId = "string",
      PageToken = "string",
      PageSize = 123
    )
