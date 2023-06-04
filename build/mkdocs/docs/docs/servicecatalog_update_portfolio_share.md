<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_portfolio_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified portfolio share

### Description

Updates the specified portfolio share. You can use this API to enable or
disable `TagOptions` sharing or Principal sharing for an existing
portfolio share.

The portfolio share cannot be updated if the `create_portfolio_share`
operation is `IN_PROGRESS`, as the share is not available to recipient
entities. In this case, you must wait for the portfolio share to be
COMPLETED.

You must provide the `accountId` or organization node in the input, but
not both.

If the portfolio is shared to both an external account and an
organization node, and both shares need to be updated, you must invoke
`update_portfolio_share` separately for each share type.

This API cannot be used for removing the portfolio share. You must use
`delete_portfolio_share` API for that action.

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

    servicecatalog_update_portfolio_share(AcceptLanguage, PortfolioId,
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
id="servicecatalog_update_portfolio_share_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_portfolio_share_:_PortfolioId">PortfolioId</code></td>
<td><p>[required] The unique identifier of the portfolio for which the
share will be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_portfolio_share_:_AccountId">AccountId</code></td>
<td><p>The Amazon Web Services account Id of the recipient account. This
field is required when updating an external account to account type
share.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_portfolio_share_:_OrganizationNode">OrganizationNode</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_portfolio_share_:_ShareTagOptions">ShareTagOptions</code></td>
<td><p>Enables or disables <code>TagOptions</code> sharing for the
portfolio share. If this field is not provided, the current state of
TagOptions sharing on the portfolio share will not be modified.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_portfolio_share_:_SharePrincipals">SharePrincipals</code></td>
<td><p>A flag to enables or disables <code>Principals</code> sharing in
the portfolio. If this field is not provided, the current state of the
<code>Principals</code> sharing on the portfolio share will not be
modified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioShareToken = "string",
      Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"ERROR"
    )

### Request syntax

    svc$update_portfolio_share(
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
