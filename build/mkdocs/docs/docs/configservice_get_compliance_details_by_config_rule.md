<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_compliance_details_by_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the evaluation results for the specified Config rule

### Description

Returns the evaluation results for the specified Config rule. The
results indicate which Amazon Web Services resources were evaluated by
the rule, when each resource was last evaluated, and whether each
resource complies with the rule.

### Usage

    configservice_get_compliance_details_by_config_rule(ConfigRuleName,
      ComplianceTypes, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_compliance_details_by_config_rule_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule for which you want
compliance information.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_compliance_details_by_config_rule_:_ComplianceTypes">ComplianceTypes</code></td>
<td><p>Filters the results by compliance.</p>
<p><code>INSUFFICIENT_DATA</code> is a valid <code>ComplianceType</code>
that is returned when an Config rule cannot be evaluated. However,
<code>INSUFFICIENT_DATA</code> cannot be used as a
<code>ComplianceType</code> for filtering results.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_compliance_details_by_config_rule_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
The default is 10. You cannot specify a number greater than 100. If you
specify 0, Config uses the default.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_compliance_details_by_config_rule_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationResults = list(
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
          ResultToken = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_compliance_details_by_config_rule(
      ConfigRuleName = "string",
      ComplianceTypes = list(
        "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA"
      ),
      Limit = 123,
      NextToken = "string"
    )
