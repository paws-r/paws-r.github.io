<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified portfolio

### Description

Gets information about the specified portfolio.

A delegated admin is authorized to invoke this command.

### Usage

    servicecatalog_describe_portfolio(AcceptLanguage, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_describe_portfolio_:_Id">Id</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortfolioDetail = list(
        Id = "string",
        ARN = "string",
        DisplayName = "string",
        Description = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        ProviderName = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      TagOptions = list(
        list(
          Key = "string",
          Value = "string",
          Active = TRUE|FALSE,
          Id = "string",
          Owner = "string"
        )
      ),
      Budgets = list(
        list(
          BudgetName = "string"
        )
      )
    )

### Request syntax

    svc$describe_portfolio(
      AcceptLanguage = "string",
      Id = "string"
    )
