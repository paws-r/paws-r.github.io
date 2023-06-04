<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_organization_portfolio_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the organization nodes that have access to the specified portfolio

### Description

Lists the organization nodes that have access to the specified
portfolio. This API can only be called by the management account in the
organization or by a delegated admin.

If a delegated admin is de-registered, they can no longer perform this
operation.

### Usage

    servicecatalog_list_organization_portfolio_access(AcceptLanguage,
      PortfolioId, OrganizationNodeType, PageToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_organization_portfolio_access_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_organization_portfolio_access_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier. For example, <code
style="white-space: pre;">⁠port-2abcdext3y5fk⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_organization_portfolio_access_:_OrganizationNodeType">OrganizationNodeType</code></td>
<td><p>[required] The organization node type that will be returned in
the output.</p>
<ul>
<li><p><code>ORGANIZATION</code> - Organization that has access to the
portfolio.</p></li>
<li><p><code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has
access to the portfolio within your organization.</p></li>
<li><p><code>ACCOUNT</code> - Account that has access to the portfolio
within your organization.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_organization_portfolio_access_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_organization_portfolio_access_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationNodes = list(
        list(
          Type = "ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ACCOUNT",
          Value = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_organization_portfolio_access(
      AcceptLanguage = "string",
      PortfolioId = "string",
      OrganizationNodeType = "ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ACCOUNT",
      PageToken = "string",
      PageSize = 123
    )
