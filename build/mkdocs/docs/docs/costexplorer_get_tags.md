<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Queries for available tag keys and tag values for a specified period

### Description

Queries for available tag keys and tag values for a specified period.
You can search the tag values for an arbitrary string.

### Usage

    costexplorer_get_tags(SearchString, TimePeriod, TagKey, Filter, SortBy,
      MaxResults, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_tags_:_SearchString">SearchString</code></td>
<td><p>The value that you want to search for.</p></td>
</tr>
<tr class="even">
<td><code id="costexplorer_get_tags_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] The start and end dates for retrieving the dimension
values. The start date is inclusive, but the end date is exclusive. For
example, if <code>start</code> is <code>2017-01-01</code> and
<code>end</code> is <code>2017-05-01</code>, then the cost and usage
data is retrieved from <code>2017-01-01</code> up to and including
<code>2017-04-30</code> but not including
<code>2017-05-01</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="costexplorer_get_tags_:_TagKey">TagKey</code></td>
<td><p>The key of the tag that you want to return values for.</p></td>
</tr>
<tr class="even">
<td><code id="costexplorer_get_tags_:_Filter">Filter</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="costexplorer_get_tags_:_SortBy">SortBy</code></td>
<td><p>The value that you want to sort the data by.</p>
<p>The key represents cost and usage metrics. The following values are
supported:</p>
<ul>
<li><p><code>BlendedCost</code></p></li>
<li><p><code>UnblendedCost</code></p></li>
<li><p><code>AmortizedCost</code></p></li>
<li><p><code>NetAmortizedCost</code></p></li>
<li><p><code>NetUnblendedCost</code></p></li>
<li><p><code>UsageQuantity</code></p></li>
<li><p><code>NormalizedUsageAmount</code></p></li>
</ul>
<p>The supported values for <code>SortOrder</code> are
<code>ASCENDING</code> and <code>DESCENDING</code>.</p>
<p>When you use <code>SortBy</code>, <code>NextPageToken</code> and
<code>SearchString</code> aren't supported.</p></td>
</tr>
<tr class="even">
<td><code id="costexplorer_get_tags_:_MaxResults">MaxResults</code></td>
<td><p>This field is only used when SortBy is provided in the request.
The maximum number of objects that are returned for this request. If
MaxResults isn't specified with SortBy, the request returns 1000 results
as the default value for this parameter.</p>
<p>For <code>get_tags</code>, MaxResults has an upper quota of
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_tags_:_NextPageToken">NextPageToken</code></td>
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
      Tags = list(
        "string"
      ),
      ReturnSize = 123,
      TotalSize = 123
    )

### Request syntax

    svc$get_tags(
      SearchString = "string",
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      TagKey = "string",
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
