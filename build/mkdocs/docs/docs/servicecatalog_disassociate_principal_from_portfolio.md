<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_disassociate_principal_from_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a previously associated principal ARN from a specified portfolio

### Description

Disassociates a previously associated principal ARN from a specified
portfolio.

The `PrincipalType` and `PrincipalARN` must match the
`associate_principal_with_portfolio` call request details. For example,
to disassociate an association created with a `PrincipalARN` of
`PrincipalType` IAM you must use the `PrincipalType` IAM when calling
`disassociate_principal_from_portfolio`.

For portfolios that have been shared with principal name sharing
enabled: after disassociating a principal, share recipient accounts will
no longer be able to provision products in this portfolio using a role
matching the name of the associated principal.

### Usage

    servicecatalog_disassociate_principal_from_portfolio(AcceptLanguage,
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
id="servicecatalog_disassociate_principal_from_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_disassociate_principal_from_portfolio_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_disassociate_principal_from_portfolio_:_PrincipalARN">PrincipalARN</code></td>
<td><p>[required] The ARN of the principal (user, role, or group). This
field allows an ARN with no <code>accountID</code> if
<code>PrincipalType</code> is <code>IAM_PATTERN</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_disassociate_principal_from_portfolio_:_PrincipalType">PrincipalType</code></td>
<td><p>The supported value is <code>IAM</code> if you use a fully
defined ARN, or <code>IAM_PATTERN</code> if you use no
<code>accountID</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_principal_from_portfolio(
      AcceptLanguage = "string",
      PortfolioId = "string",
      PrincipalARN = "string",
      PrincipalType = "IAM"|"IAM_PATTERN"
    )
