<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_portfolio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified portfolio

### Description

Updates the specified portfolio.

You cannot update a product that was shared with you.

### Usage

    servicecatalog_update_portfolio(AcceptLanguage, Id, DisplayName,
      Description, ProviderName, AddTags, RemoveTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_update_portfolio_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_update_portfolio_:_Id">Id</code></td>
<td><p>[required] The portfolio identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_portfolio_:_DisplayName">DisplayName</code></td>
<td><p>The name to use for display purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_portfolio_:_Description">Description</code></td>
<td><p>The updated description of the portfolio.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_portfolio_:_ProviderName">ProviderName</code></td>
<td><p>The updated name of the portfolio provider.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_portfolio_:_AddTags">AddTags</code></td>
<td><p>The tags to add.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_portfolio_:_RemoveTags">RemoveTags</code></td>
<td><p>The tags to remove.</p></td>
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

    svc$update_portfolio(
      AcceptLanguage = "string",
      Id = "string",
      DisplayName = "string",
      Description = "string",
      ProviderName = "string",
      AddTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RemoveTags = list(
        "string"
      )
    )
