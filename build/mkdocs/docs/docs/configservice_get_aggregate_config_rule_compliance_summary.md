<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_aggregate_config_rule_compliance_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator

### Description

Returns the number of compliant and noncompliant rules for one or more
accounts and regions in an aggregator.

The results can return an empty result page, but if you have a
nextToken, the results are displayed on the next page.

### Usage

    configservice_get_aggregate_config_rule_compliance_summary(
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
id="configservice_get_aggregate_config_rule_compliance_summary_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_config_rule_compliance_summary_:_Filters">Filters</code></td>
<td><p>Filters the results based on the
ConfigRuleComplianceSummaryFilters object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_config_rule_compliance_summary_:_GroupByKey">GroupByKey</code></td>
<td><p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_config_rule_compliance_summary_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
The default is 1000. You cannot specify a number greater than 1000. If
you specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_config_rule_compliance_summary_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupByKey = "string",
      AggregateComplianceCounts = list(
        list(
          GroupName = "string",
          ComplianceSummary = list(
            CompliantResourceCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            ),
            NonCompliantResourceCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            ),
            ComplianceSummaryTimestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_aggregate_config_rule_compliance_summary(
      ConfigurationAggregatorName = "string",
      Filters = list(
        AccountId = "string",
        AwsRegion = "string"
      ),
      GroupByKey = "ACCOUNT_ID"|"AWS_REGION",
      Limit = 123,
      NextToken = "string"
    )
