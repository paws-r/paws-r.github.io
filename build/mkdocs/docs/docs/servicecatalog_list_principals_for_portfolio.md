<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_principals_for_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all PrincipalARNs and corresponding PrincipalTypes associated with the specified portfolio

### Description

Lists all `PrincipalARN`s and corresponding `PrincipalType`s associated
with the specified portfolio.

### Usage

    servicecatalog_list_principals_for_portfolio(AcceptLanguage,
      PortfolioId, PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_principals_for_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_principals_for_portfolio_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_principals_for_portfolio_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_principals_for_portfolio_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Principals = list(
        list(
          PrincipalARN = "string",
          PrincipalType = "IAM"|"IAM_PATTERN"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_principals_for_portfolio(
      AcceptLanguage = "string",
      PortfolioId = "string",
      PageSize = 123,
      PageToken = "string"
    )
