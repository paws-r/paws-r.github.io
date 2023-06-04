<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_associate_principal_with_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified principal ARN with the specified portfolio

### Description

Associates the specified principal ARN with the specified portfolio.

If you share the portfolio with principal name sharing enabled, the
`PrincipalARN` association is included in the share.

The `PortfolioID`, `PrincipalARN`, and `PrincipalType` parameters are
required.

You can associate a maximum of 10 Principals with a portfolio using
`PrincipalType` as `IAM_PATTERN`

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

    servicecatalog_associate_principal_with_portfolio(AcceptLanguage,
      PortfolioId, PrincipalARN, PrincipalType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_associate_principal_with_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_principal_with_portfolio_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_associate_principal_with_portfolio_:_PrincipalARN">PrincipalARN</code></td>
<td><p>[required] The ARN of the principal (user, role, or group). This
field allows an ARN with no <code>accountID</code> if
<code>PrincipalType</code> is <code>IAM_PATTERN</code>.</p>
<p>You can associate multiple <code>IAM</code> patterns even if the
account has no principal with that name. This is useful in Principal
Name Sharing if you want to share a principal without creating it in the
account that owns the portfolio.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_principal_with_portfolio_:_PrincipalType">PrincipalType</code></td>
<td><p>[required] The principal type. The supported value is
<code>IAM</code> if you use a fully defined ARN, or
<code>IAM_PATTERN</code> if you use an ARN with no
<code>accountID</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_principal_with_portfolio(
      AcceptLanguage = "string",
      PortfolioId = "string",
      PrincipalARN = "string",
      PrincipalType = "IAM"|"IAM_PATTERN"
    )
