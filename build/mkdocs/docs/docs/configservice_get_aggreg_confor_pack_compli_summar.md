<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_aggregate_conformance_pack_compliance_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator

### Description

Returns the count of compliant and noncompliant conformance packs across
all Amazon Web Services accounts and Amazon Web Services Regions in an
aggregator. You can filter based on Amazon Web Services account ID or
Amazon Web Services Region.

The results can return an empty result page, but if you have a
nextToken, the results are displayed on the next page.

### Usage

    configservice_get_aggregate_conformance_pack_compliance_summary(
      ConfigurationAggregatorName, Filters, GroupByKey, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_aggregate_conformance_pack_compliance_summary_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_conformance_pack_compliance_summary_:_Filters">Filters</code></td>
<td><p>Filters the results based on the
<code>AggregateConformancePackComplianceSummaryFilters</code>
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_conformance_pack_compliance_summary_:_GroupByKey">GroupByKey</code></td>
<td><p>Groups the result based on Amazon Web Services account ID or
Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_conformance_pack_compliance_summary_:_Limit">Limit</code></td>
<td><p>The maximum number of results returned on each page. The default
is maximum. If you specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_conformance_pack_compliance_summary_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregateConformancePackComplianceSummaries = list(
        list(
          ComplianceSummary = list(
            CompliantConformancePackCount = 123,
            NonCompliantConformancePackCount = 123
          ),
          GroupName = "string"
        )
      ),
      GroupByKey = "string",
      NextToken = "string"
    )

### Request syntax

    svc$get_aggregate_conformance_pack_compliance_summary(
      ConfigurationAggregatorName = "string",
      Filters = list(
        AccountId = "string",
        AwsRegion = "string"
      ),
      GroupByKey = "ACCOUNT_ID"|"AWS_REGION",
      Limit = 123,
      NextToken = "string"
    )
