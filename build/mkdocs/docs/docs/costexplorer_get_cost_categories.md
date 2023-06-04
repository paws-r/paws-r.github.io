<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_cost_categories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an array of Cost Category names and values incurred cost

### Description

Retrieves an array of Cost Category names and values incurred cost.

If some Cost Category names and values are not associated with any cost,
they will not be returned by this API.

### Usage

    costexplorer_get_cost_categories(SearchString, TimePeriod,
      CostCategoryName, Filter, SortBy, MaxResults, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_cost_categories_:_SearchString">SearchString</code></td>
<td><p>The value that you want to search the filter values for.</p>
<p>If you don't specify a <code>CostCategoryName</code>,
<code>SearchString</code> is used to filter Cost Category names that
match the <code>SearchString</code> pattern. If you specify a
<code>CostCategoryName</code>, <code>SearchString</code> is used to
filter Cost Category values that match the <code>SearchString</code>
pattern.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_categories_:_TimePeriod">TimePeriod</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_categories_:_CostCategoryName">CostCategoryName</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_categories_:_Filter">Filter</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_categories_:_SortBy">SortBy</code></td>
<td><p>The value that you sort the data by.</p>
<p>The key represents the cost and usage metrics. The following values
are supported:</p>
<ul>
<li><p><code>BlendedCost</code></p></li>
<li><p><code>UnblendedCost</code></p></li>
<li><p><code>AmortizedCost</code></p></li>
<li><p><code>NetAmortizedCost</code></p></li>
<li><p><code>NetUnblendedCost</code></p></li>
<li><p><code>UsageQuantity</code></p></li>
<li><p><code>NormalizedUsageAmount</code></p></li>
</ul>
<p>The supported key values for the <code>SortOrder</code> value are
<code>ASCENDING</code> and <code>DESCENDING</code>.</p>
<p>When you use the <code>SortBy</code> value, the
<code>NextPageToken</code> and <code>SearchString</code> key values
aren't supported.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_categories_:_MaxResults">MaxResults</code></td>
<td><p>This field is only used when the <code>SortBy</code> value is
provided in the request.</p>
<p>The maximum number of objects that are returned for this request. If
<code>MaxResults</code> isn't specified with the <code>SortBy</code>
value, the request returns 1000 results as the default value for this
parameter.</p>
<p>For <code>get_cost_categories</code>, MaxResults has an upper quota
of 1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_categories_:_NextPageToken">NextPageToken</code></td>
<td><p>If the number of objects that are still available for retrieval
exceeds the quota, Amazon Web Services returns a NextPageToken value in
the response. To retrieve the next batch of objects, provide the
NextPageToken from the previous call in your next request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextPageToken = "string",
      CostCategoryNames = list(
        "string"
      ),
      CostCategoryValues = list(
        "string"
      ),
      ReturnSize = 123,
      TotalSize = 123
    )

### Request syntax

    svc$get_cost_categories(
      SearchString = "string",
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      CostCategoryName = "string",
      Filter = list(
        Or = list(
          list()
        ),
        And = list(
          list()
        ),
        Not = list(),
        Dimensions = list(
          Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE"|"INVOICING_ENTITY"|"ANOMALY_TOTAL_IMPACT_ABSOLUTE"|"ANOMALY_TOTAL_IMPACT_PERCENTAGE",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        Tags = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        CostCategories = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        )
      ),
      SortBy = list(
        list(
          Key = "string",
          SortOrder = "ASCENDING"|"DESCENDING"
        )
      ),
      MaxResults = 123,
      NextPageToken = "string"
    )
