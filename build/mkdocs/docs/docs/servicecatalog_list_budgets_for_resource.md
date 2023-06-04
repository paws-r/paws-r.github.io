<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_budgets_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the budgets associated to the specified resource

### Description

Lists all the budgets associated to the specified resource.

### Usage

    servicecatalog_list_budgets_for_resource(AcceptLanguage, ResourceId,
      PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_budgets_for_resource_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_budgets_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_budgets_for_resource_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_budgets_for_resource_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Budgets = list(
        list(
          BudgetName = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_budgets_for_resource(
      AcceptLanguage = "string",
      ResourceId = "string",
      PageSize = 123,
      PageToken = "string"
    )
