<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_portfolio_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shares the specified portfolio with the specified account or organization node

### Description

Shares the specified portfolio with the specified account or
organization node. Shares to an organization node can only be created by
the management account of an organization or by a delegated
administrator. You can share portfolios to an organization, an
organizational unit, or a specific account.

Note that if a delegated admin is de-registered, they can no longer
create portfolio shares.

`AWSOrganizationsAccess` must be enabled in order to create a portfolio
share to an organization node.

You can't share a shared resource, including portfolios that contain a
shared product.

If the portfolio share with the specified account or organization node
already exists, this action will have no effect and will not return an
error. To update an existing share, you must use the
`update_portfolio_share` API instead.

When you associate a principal with portfolio, a potential privilege
escalation path may occur when that portfolio is then shared with other
accounts. For a user in a recipient account who is *not* an Service
Catalog Admin, but still has the ability to create Principals
(Users/Groups/Roles), that user could create a role that matches a
principal name association for the portfolio. Although this user may not
know which principal names are associated through Service Catalog, they
may be able to guess the user. If this potential escalation path is a
concern, then Service Catalog recommends using `PrincipalType` as `IAM`.
With this configuration, the `PrincipalARN` must already exist in the
recipient account before it can be associated.

### Usage

    servicecatalog_create_portfolio_share(AcceptLanguage, PortfolioId,
      AccountId, OrganizationNode, ShareTagOptions, SharePrincipals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_create_portfolio_share_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_portfolio_share_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_portfolio_share_:_AccountId">AccountId</code></td>
<td><p>The Amazon Web Services account ID. For example,
<code>123456789012</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_portfolio_share_:_OrganizationNode">OrganizationNode</code></td>
<td><p>The organization node to whom you are going to share. When you
pass <code>OrganizationNode</code>, it creates
<code>PortfolioShare</code> for all of the Amazon Web Services accounts
that are associated to the <code>OrganizationNode</code>. The output
returns a <code>PortfolioShareToken</code>, which enables the
administrator to monitor the status of the <code>PortfolioShare</code>
creation process.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_portfolio_share_:_ShareTagOptions">ShareTagOptions</code></td>
<td><p>Enables or disables <code>TagOptions </code> sharing when
creating the portfolio share. If this flag is not provided, TagOptions
sharing is disabled.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_portfolio_share_:_SharePrincipals">SharePrincipals</code></td>
<td><p>Enables or disables <code>Principal</code> sharing when creating
the portfolio share. If this flag is not provided, principal sharing is
disabled.</p>
<p>When you enable Principal Name Sharing for a portfolio share, the
share recipient account end users with a principal that matches any of
the associated IAM patterns can provision products from the portfolio.
Once shared, the share recipient can view associations of
<code>PrincipalType</code>: <code>IAM_PATTERN</code> on their portfolio.
You can create the principals in the recipient account before or after
creating the share.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioShareToken = "string"
    )

### Request syntax

    svc$create_portfolio_share(
      AcceptLanguage = "string",
      PortfolioId = "string",
      AccountId = "string",
      OrganizationNode = list(
        Type = "ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ACCOUNT",
        Value = "string"
      ),
      ShareTagOptions = TRUE|FALSE,
      SharePrincipals = TRUE|FALSE
    )
