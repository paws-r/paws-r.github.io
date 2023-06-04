<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_aggregate_compliance_by_conformance_packs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack

### Description

Returns a list of the conformance packs and their associated compliance
status with the count of compliant and noncompliant Config rules within
each conformance pack. Also returns the total rule count which includes
compliant rules, noncompliant rules, and rules that cannot be evaluated
due to insufficient data.

The results can return an empty result page, but if you have a
`nextToken`, the results are displayed on the next page.

### Usage

    configservice_describe_aggregate_compliance_by_conformance_packs(
      ConfigurationAggregatorName, Filters, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_aggregate_compliance_by_conformance_packs_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_aggregate_compliance_by_conformance_packs_:_Filters">Filters</code></td>
<td><p>Filters the result by
<code>AggregateConformancePackComplianceFilters</code> object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_aggregate_compliance_by_conformance_packs_:_Limit">Limit</code></td>
<td><p>The maximum number of conformance packs compliance details
returned on each page. The default is maximum. If you specify 0, Config
uses the default.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_aggregate_compliance_by_conformance_packs_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregateComplianceByConformancePacks = list(
        list(
          ConformancePackName = "string",
          Compliance = list(
            ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA",
            CompliantRuleCount = 123,
            NonCompliantRuleCount = 123,
            TotalRuleCount = 123
          ),
          AccountId = "string",
          AwsRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_aggregate_compliance_by_conformance_packs(
      ConfigurationAggregatorName = "string",
      Filters = list(
        ConformancePackName = "string",
        ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA",
        AccountId = "string",
        AwsRegion = "string"
      ),
      Limit = 123,
      NextToken = "string"
    )
