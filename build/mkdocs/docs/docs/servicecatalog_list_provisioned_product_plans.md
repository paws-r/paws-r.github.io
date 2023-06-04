<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_provisioned_product_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the plans for the specified provisioned product or all plans to which the user has access

### Description

Lists the plans for the specified provisioned product or all plans to
which the user has access.

### Usage

    servicecatalog_list_provisioned_product_plans(AcceptLanguage,
      ProvisionProductId, PageSize, PageToken, AccessLevelFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_provisioned_product_plans_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_provisioned_product_plans_:_ProvisionProductId">ProvisionProductId</code></td>
<td><p>The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_provisioned_product_plans_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_provisioned_product_plans_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_provisioned_product_plans_:_AccessLevelFilter">AccessLevelFilter</code></td>
<td><p>The access level to use to obtain results. The default is
<code>User</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisionedProductPlans = list(
        list(
          PlanName = "string",
          PlanId = "string",
          ProvisionProductId = "string",
          ProvisionProductName = "string",
          PlanType = "CLOUDFORMATION",
          ProvisioningArtifactId = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_provisioned_product_plans(
      AcceptLanguage = "string",
      ProvisionProductId = "string",
      PageSize = 123,
      PageToken = "string",
      AccessLevelFilter = list(
        Key = "Account"|"Role"|"User",
        Value = "string"
      )
    )
