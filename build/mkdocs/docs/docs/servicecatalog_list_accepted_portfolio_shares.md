<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_accepted_portfolio_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all imported portfolios for which account-to-account shares were accepted by this account

### Description

Lists all imported portfolios for which account-to-account shares were
accepted by this account. By specifying the `PortfolioShareType`, you
can list portfolios for which organizational shares were accepted by
this account.

### Usage

    servicecatalog_list_accepted_portfolio_shares(AcceptLanguage, PageToken,
      PageSize, PortfolioShareType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_accepted_portfolio_shares_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_accepted_portfolio_shares_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_accepted_portfolio_shares_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_accepted_portfolio_shares_:_PortfolioShareType">PortfolioShareType</code></td>
<td><p>The type of shared portfolios to list. The default is to list
imported portfolios.</p>
<ul>
<li><p><code>AWS_ORGANIZATIONS</code> - List portfolios accepted and
shared via organizational sharing by the management account or delegated
administrator of your organization.</p></li>
<li><p><code>AWS_SERVICECATALOG</code> - Deprecated type.</p></li>
<li><p><code>IMPORTED</code> - List imported portfolios that have been
accepted and shared through account-to-account sharing.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioDetails = list(
        list(
          Id = "string",
          ARN = "string",
          DisplayName = "string",
          Description = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ProviderName = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_accepted_portfolio_shares(
      AcceptLanguage = "string",
      PageToken = "string",
      PageSize = 123,
      PortfolioShareType = "IMPORTED"|"AWS_SERVICECATALOG"|"AWS_ORGANIZATIONS"
    )
