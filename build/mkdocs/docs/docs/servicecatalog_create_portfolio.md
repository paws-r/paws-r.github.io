<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a portfolio

### Description

Creates a portfolio.

A delegated admin is authorized to invoke this command.

### Usage

    servicecatalog_create_portfolio(AcceptLanguage, DisplayName,
      Description, ProviderName, Tags, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_create_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_portfolio_:_DisplayName">DisplayName</code></td>
<td><p>[required] The name to use for display purposes.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_portfolio_:_Description">Description</code></td>
<td><p>The description of the portfolio.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_portfolio_:_ProviderName">ProviderName</code></td>
<td><p>[required] The name of the portfolio provider.</p></td>
</tr>
<tr class="odd">
<td><code id="servicecatalog_create_portfolio_:_Tags">Tags</code></td>
<td><p>One or more tags.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_portfolio_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
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
      )
    )

### Request syntax

    svc$create_portfolio(
      AcceptLanguage = "string",
      DisplayName = "string",
      Description = "string",
      ProviderName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      IdempotencyToken = "string"
    )
