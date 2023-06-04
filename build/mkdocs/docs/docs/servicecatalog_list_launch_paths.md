<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_launch_paths</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the paths to the specified product

### Description

Lists the paths to the specified product. A path describes how the user
gets access to a specified product and is necessary when provisioning a
product. A path also determines the constraints that are put on a
product. A path is dependent on a specific product, porfolio, and
principal.

When provisioning a product that's been added to a portfolio, you must
grant your user, group, or role access to the portfolio. For more
information, see [Granting users
access](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html)
in the *Service Catalog User Guide*.

### Usage

    servicecatalog_list_launch_paths(AcceptLanguage, ProductId, PageSize,
      PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_launch_paths_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_launch_paths_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_launch_paths_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_launch_paths_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LaunchPathSummaries = list(
        list(
          Id = "string",
          ConstraintSummaries = list(
            list(
              Type = "string",
              Description = "string"
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Name = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_launch_paths(
      AcceptLanguage = "string",
      ProductId = "string",
      PageSize = 123,
      PageToken = "string"
    )
