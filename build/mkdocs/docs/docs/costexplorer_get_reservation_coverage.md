<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_reservation_coverage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the reservation coverage for your account, which you can use to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation

### Description

Retrieves the reservation coverage for your account, which you can use
to see how much of your Amazon Elastic Compute Cloud, Amazon
ElastiCache, Amazon Relational Database Service, or Amazon Redshift
usage is covered by a reservation. An organization's management account
can see the coverage of the associated member accounts. This supports
dimensions, Cost Categories, and nested expressions. For any time
period, you can filter data about reservation usage by the following
dimensions:

-   AZ

-   CACHE\_ENGINE

-   DATABASE\_ENGINE

-   DEPLOYMENT\_OPTION

-   INSTANCE\_TYPE

-   LINKED\_ACCOUNT

-   OPERATING\_SYSTEM

-   PLATFORM

-   REGION

-   SERVICE

-   TAG

-   TENANCY

To determine valid values for a dimension, use the
`get_dimension_values` operation.

### Usage

    costexplorer_get_reservation_coverage(TimePeriod, GroupBy, Granularity,
      Filter, Metrics, NextPageToken, SortBy, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_coverage_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] The start and end dates of the period that you want to
retrieve data about reservation coverage for. You can retrieve data for
a maximum of 13 months: the last 12 months and the current month. The
start date is inclusive, but the end date is exclusive. For example, if
<code>start</code> is <code>2017-01-01</code> and <code>end</code> is
<code>2017-05-01</code>, then the cost and usage data is retrieved from
<code>2017-01-01</code> up to and including <code>2017-04-30</code> but
not including <code>2017-05-01</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_coverage_:_GroupBy">GroupBy</code></td>
<td><p>You can group the data by the following attributes:</p>
<ul>
<li><p>AZ</p></li>
<li><p>CACHE_ENGINE</p></li>
<li><p>DATABASE_ENGINE</p></li>
<li><p>DEPLOYMENT_OPTION</p></li>
<li><p>INSTANCE_TYPE</p></li>
<li><p>INVOICING_ENTITY</p></li>
<li><p>LINKED_ACCOUNT</p></li>
<li><p>OPERATING_SYSTEM</p></li>
<li><p>PLATFORM</p></li>
<li><p>REGION</p></li>
<li><p>TENANCY</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_coverage_:_Granularity">Granularity</code></td>
<td><p>The granularity of the Amazon Web Services cost data for the
reservation. Valid values are <code>MONTHLY</code> and
<code>DAILY</code>.</p>
<p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be
set. If <code>Granularity</code> isn't set, the response object doesn't
include <code>Granularity</code>, either <code>MONTHLY</code> or
<code>DAILY</code>.</p>
<p>The <code>get_reservation_coverage</code> operation supports only
<code>DAILY</code> and <code>MONTHLY</code> granularities.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_coverage_:_Filter">Filter</code></td>
<td><p>Filters utilization data by dimensions. You can filter by the
following dimensions:</p>
<ul>
<li><p>AZ</p></li>
<li><p>CACHE_ENGINE</p></li>
<li><p>DATABASE_ENGINE</p></li>
<li><p>DEPLOYMENT_OPTION</p></li>
<li><p>INSTANCE_TYPE</p></li>
<li><p>LINKED_ACCOUNT</p></li>
<li><p>OPERATING_SYSTEM</p></li>
<li><p>PLATFORM</p></li>
<li><p>REGION</p></li>
<li><p>SERVICE</p></li>
<li><p>TAG</p></li>
<li><p>TENANCY</p></li>
</ul>
<p><code>get_reservation_coverage</code> uses the same <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
object as the other operations, but only <code>AND</code> is supported
among each dimension. You can nest only one level deep. If there are
multiple values for a dimension, they are OR'd together.</p>
<p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer
defaults to EC2.</p>
<p>Cost category is also supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_coverage_:_Metrics">Metrics</code></td>
<td><p>The measurement that you want your reservation coverage reported
in.</p>
<p>Valid values are <code>Hour</code>, <code>Unit</code>, and
<code>Cost</code>. You can use multiple values in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_coverage_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_coverage_:_SortBy">SortBy</code></td>
<td><p>The value by which you want to sort the data.</p>
<p>The following values are supported for <code>Key</code>:</p>
<ul>
<li><p><code>OnDemandCost</code></p></li>
<li><p><code>CoverageHoursPercentage</code></p></li>
<li><p><code>OnDemandHours</code></p></li>
<li><p><code>ReservedHours</code></p></li>
<li><p><code>TotalRunningHours</code></p></li>
<li><p><code>CoverageNormalizedUnitsPercentage</code></p></li>
<li><p><code>OnDemandNormalizedUnits</code></p></li>
<li><p><code>ReservedNormalizedUnits</code></p></li>
<li><p><code>TotalRunningNormalizedUnits</code></p></li>
<li><p><code>Time</code></p></li>
</ul>
<p>Supported values for <code>SortOrder</code> are
<code>ASCENDING</code> or <code>DESCENDING</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_coverage_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you returned for this request.
If more objects are available, in the response, Amazon Web Services
provides a NextPageToken value that you can use in a subsequent call to
get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoveragesByTime = list(
        list(
          TimePeriod = list(
            Start = "string",
            End = "string"
          ),
          Groups = list(
            list(
              Attributes = list(
                "string"
              ),
              Coverage = list(
                CoverageHours = list(
                  OnDemandHours = "string",
                  ReservedHours = "string",
                  TotalRunningHours = "string",
                  CoverageHoursPercentage = "string"
                ),
                CoverageNormalizedUnits = list(
                  OnDemandNormalizedUnits = "string",
                  ReservedNormalizedUnits = "string",
                  TotalRunningNormalizedUnits = "string",
                  CoverageNormalizedUnitsPercentage = "string"
                ),
                CoverageCost = list(
                  OnDemandCost = "string"
                )
              )
            )
          ),
          Total = list(
            CoverageHours = list(
              OnDemandHours = "string",
              ReservedHours = "string",
              TotalRunningHours = "string",
              CoverageHoursPercentage = "string"
            ),
            CoverageNormalizedUnits = list(
              OnDemandNormalizedUnits = "string",
              ReservedNormalizedUnits = "string",
              TotalRunningNormalizedUnits = "string",
              CoverageNormalizedUnitsPercentage = "string"
            ),
            CoverageCost = list(
              OnDemandCost = "string"
            )
          )
        )
      ),
      Total = list(
        CoverageHours = list(
          OnDemandHours = "string",
          ReservedHours = "string",
          TotalRunningHours = "string",
          CoverageHoursPercentage = "string"
        ),
        CoverageNormalizedUnits = list(
          OnDemandNormalizedUnits = "string",
          ReservedNormalizedUnits = "string",
          TotalRunningNormalizedUnits = "string",
          CoverageNormalizedUnitsPercentage = "string"
        ),
        CoverageCost = list(
          OnDemandCost = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_reservation_coverage(
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      GroupBy = list(
        list(
          Type = "DIMENSION"|"TAG"|"COST_CATEGORY",
          Key = "string"
        )
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
      NextPageToken = "string",
      SortBy = list(
        Key = "string",
        SortOrder = "ASCENDING"|"DESCENDING"
      ),
      MaxResults = 123
    )
