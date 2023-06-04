<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_aggregate_compliance_details_by_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the evaluation results for the specified Config rule for a specific resource in a rule

### Description

Returns the evaluation results for the specified Config rule for a
specific resource in a rule. The results indicate which Amazon Web
Services resources were evaluated by the rule, when each resource was
last evaluated, and whether each resource complies with the rule.

The results can return an empty result page. But if you have a
`nextToken`, the results are displayed on the next page.

### Usage

    configservice_get_aggregate_compliance_details_by_config_rule(
      ConfigurationAggregatorName, ConfigRuleName, AccountId, AwsRegion,
      ComplianceType, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule for which you want
compliance information.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_AccountId">AccountId</code></td>
<td><p>[required] The 12-digit account ID of the source
account.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_AwsRegion">AwsRegion</code></td>
<td><p>[required] The source region from where the data is
aggregated.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_ComplianceType">ComplianceType</code></td>
<td><p>The resource compliance status.</p>
<p>For the <code>GetAggregateComplianceDetailsByConfigRuleRequest</code>
data type, Config supports only the <code>COMPLIANT</code> and
<code>NON_COMPLIANT</code>. Config does not support the
<code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code>
values.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
The default is 50. You cannot specify a number greater than 100. If you
specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_aggregate_compliance_details_by_config_rule_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregateEvaluationResults = list(
        list(
          EvaluationResultIdentifier = list(
            EvaluationResultQualifier = list(
              ConfigRuleName = "string",
              ResourceType = "string",
              ResourceId = "string",
              EvaluationMode = "DETECTIVE"|"PROACTIVE"
            ),
            OrderingTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ResourceEvaluationId = "string"
          ),
          ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
          ResultRecordedTime = as.POSIXct(
            "2015-01-01"
          ),
          ConfigRuleInvokedTime = as.POSIXct(
            "2015-01-01"
          ),
          Annotation = "string",
          AccountId = "string",
          AwsRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_aggregate_compliance_details_by_config_rule(
      ConfigurationAggregatorName = "string",
      ConfigRuleName = "string",
      AccountId = "string",
      AwsRegion = "string",
      ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
      Limit = 123,
      NextToken = "string"
    )
