<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_portfolio_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a summary of each of the portfolio shares that were created for the specified portfolio

### Description

Returns a summary of each of the portfolio shares that were created for
the specified portfolio.

You can use this API to determine which accounts or organizational nodes
this portfolio have been shared, whether the recipient entity has
imported the share, and whether TagOptions are included with the share.

The `PortfolioId` and `Type` parameters are both required.

### Usage

    servicecatalog_describe_portfolio_shares(PortfolioId, Type, PageToken,
      PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_portfolio_shares_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The unique identifier of the portfolio for which
shares will be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_portfolio_shares_:_Type">Type</code></td>
<td><p>[required] The type of portfolio share to summarize. This field
acts as a filter on the type of portfolio share, which can be one of the
following:</p>
<p>1\. <code>ACCOUNT</code> - Represents an external account to account
share.</p>
<p>2\. <code>ORGANIZATION</code> - Represents a share to an
organization. This share is available to every account in the
organization.</p>
<p>3\. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an
organizational unit.</p>
<p>4\. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to
an account in the organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_portfolio_shares_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_portfolio_shares_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextPageToken = "string",
      PortfolioShareDetails = list(
        list(
          PrincipalId = "string",
          Type = "ACCOUNT"|"ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ORGANIZATION_MEMBER_ACCOUNT",
          Accepted = TRUE|FALSE,
          ShareTagOptions = TRUE|FALSE,
          SharePrincipals = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_portfolio_shares(
      PortfolioId = "string",
      Type = "ACCOUNT"|"ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ORGANIZATION_MEMBER_ACCOUNT",
      PageToken = "string",
      PageSize = 123
    )
