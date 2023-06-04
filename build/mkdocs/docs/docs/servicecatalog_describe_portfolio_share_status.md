<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_portfolio_share_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the status of the specified portfolio share operation

### Description

Gets the status of the specified portfolio share operation. This API can
only be called by the management account in the organization or by a
delegated admin.

### Usage

    servicecatalog_describe_portfolio_share_status(PortfolioShareToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_portfolio_share_status_:_PortfolioShareToken">PortfolioShareToken</code></td>
<td><p>[required] The token for the portfolio share operation. This
token is returned either by CreatePortfolioShare or by
DeletePortfolioShare.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioShareToken = "string",
      PortfolioId = "string",
      OrganizationNodeValue = "string",
      Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"ERROR",
      ShareDetails = list(
        SuccessfulShares = list(
          "string"
        ),
        ShareErrors = list(
          list(
            Accounts = list(
              "string"
            ),
            Message = "string",
            Error = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_portfolio_share_status(
      PortfolioShareToken = "string"
    )
