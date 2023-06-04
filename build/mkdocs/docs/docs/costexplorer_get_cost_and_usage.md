<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_cost_and_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves cost and usage metrics for your account

### Description

Retrieves cost and usage metrics for your account. You can specify which
cost and usage-related metric that you want the request to return. For
example, you can specify `BlendedCosts` or `UsageQuantity`. You can also
filter and group your data by various dimensions, such as `SERVICE` or
`AZ`, in a specific time range. For a complete list of valid dimensions,
see the `get_dimension_values` operation. Management account in an
organization in Organizations have access to all member accounts.

For information about filter limitations, see [Quotas and
restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html)
in the *Billing and Cost Management User Guide*.

### Usage

    costexplorer_get_cost_and_usage(TimePeriod, Granularity, Filter,
      Metrics, GroupBy, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_cost_and_usage_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] Sets the start date and end date for retrieving Amazon
Web Services costs. The start date is inclusive, but the end date is
exclusive. For example, if <code>start</code> is <code>2017-01-01</code>
and <code>end</code> is <code>2017-05-01</code>, then the cost and usage
data is retrieved from <code>2017-01-01</code> up to and including
<code>2017-04-30</code> but not including
<code>2017-05-01</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_and_usage_:_Granularity">Granularity</code></td>
<td><p>[required] Sets the Amazon Web Services cost granularity to
<code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. If
<code>Granularity</code> isn't set, the response object doesn't include
the <code>Granularity</code>, either <code>MONTHLY</code> or
<code>DAILY</code>, or <code>HOURLY</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_and_usage_:_Filter">Filter</code></td>
<td><p>Filters Amazon Web Services costs by different dimensions. For
example, you can specify <code>SERVICE</code> and
<code>LINKED_ACCOUNT</code> and get the costs that are associated with
that account's usage of that service. You can nest
<code>Expression</code> objects to define any combination of dimension
filters. For more information, see <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>.</p>
<p>Valid values for <code>MatchOptions</code> for
<code>Dimensions</code> are <code>EQUALS</code> and
<code>CASE_SENSITIVE</code>.</p>
<p>Valid values for <code>MatchOptions</code> for
<code>CostCategories</code> and <code>Tags</code> are
<code>EQUALS</code>, <code>ABSENT</code>, and
<code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and
<code>CASE_SENSITIVE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_and_usage_:_Metrics">Metrics</code></td>
<td><p>[required] Which metrics are returned in the query. For more
information about blended and unblended rates, see Why does the
"blended" annotation appear on some line items in my bill?.</p>
<p>Valid values are <code>AmortizedCost</code>,
<code>BlendedCost</code>, <code>NetAmortizedCost</code>,
<code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>,
<code>UnblendedCost</code>, and <code>UsageQuantity</code>.</p>
<p>If you return the <code>UsageQuantity</code> metric, the service
aggregates all usage numbers without taking into account the units. For
example, if you aggregate <code>usageQuantity</code> across all of
Amazon EC2, the results aren't meaningful because Amazon EC2 compute
hours and data transfer are measured in different units (for example,
hours and GB). To get more meaningful <code>UsageQuantity</code>
metrics, filter by <code>UsageType</code> or
<code>UsageTypeGroups</code>.</p>
<p><code>Metrics</code> is required for <code>get_cost_and_usage</code>
requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_and_usage_:_GroupBy">GroupBy</code></td>
<td><p>You can group Amazon Web Services costs using up to two different
groups, either dimensions, tag keys, cost categories, or any two group
by types.</p>
<p>Valid values for the <code>DIMENSION</code> type are <code>AZ</code>,
<code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>,
<code>INVOICING_ENTITY</code>, <code>LINKED_ACCOUNT</code>,
<code>OPERATION</code>, <code>PLATFORM</code>,
<code>PURCHASE_TYPE</code>, <code>SERVICE</code>, <code>TENANCY</code>,
<code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>
<p>When you group by the <code>TAG</code> type and include a valid tag
key, you get all tag values, including empty strings.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_and_usage_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextPageToken = "string",
      GroupDefinitions = list(
        list(
          Type = "DIMENSION"|"TAG"|"COST_CATEGORY",
          Key = "string"
        )
      ),
      ResultsByTime = list(
        list(
          TimePeriod = list(
            Start = "string",
            End = "string"
          ),
          Total = list(
            list(
              Amount = "string",
              Unit = "string"
            )
          ),
          Groups = list(
            list(
              Keys = list(
                "string"
              ),
              Metrics = list(
                list(
                  Amount = "string",
                  Unit = "string"
                )
              )
            )
          ),
          Estimated = TRUE|FALSE
        )
      ),
      DimensionValueAttributes = list(
        list(
          Value = "string",
          Attributes = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_cost_and_usage(
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      Granularity = "DAILY"|"MONTHLY"|"HOURLY",
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
      Metrics = list(
        "string"
      ),
      GroupBy = list(
        list(
          Type = "DIMENSION"|"TAG"|"COST_CATEGORY",
          Key = "string"
        )
      ),
      NextPageToken = "string"
    )
