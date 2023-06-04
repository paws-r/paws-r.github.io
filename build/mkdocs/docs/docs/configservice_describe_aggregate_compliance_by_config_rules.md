<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_aggregate_compliance_by_config_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules

### Description

Returns a list of compliant and noncompliant rules with the number of
resources for compliant and noncompliant rules. Does not display rules
that do not have compliance results.

The results can return an empty result page, but if you have a
`nextToken`, the results are displayed on the next page.

### Usage

    configservice_describe_aggregate_compliance_by_config_rules(
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
id="configservice_describe_aggregate_compliance_by_config_rules_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_aggregate_compliance_by_config_rules_:_Filters">Filters</code></td>
<td><p>Filters the results by ConfigRuleComplianceFilters
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_aggregate_compliance_by_config_rules_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
The default is maximum. If you specify 0, Config uses the
default.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_aggregate_compliance_by_config_rules_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregateComplianceByConfigRules = list(
        list(
          ConfigRuleName = "string",
          Compliance = list(
            ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
            ComplianceContributorCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            )
          ),
          AccountId = "string",
          AwsRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_aggregate_compliance_by_config_rules(
      ConfigurationAggregatorName = "string",
      Filters = list(
        ConfigRuleName = "string",
        ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
        AccountId = "string",
        AwsRegion = "string"
      ),
      Limit = 123,
      NextToken = "string"
    )
