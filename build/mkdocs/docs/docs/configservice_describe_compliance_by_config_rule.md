<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_compliance_by_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Indicates whether the specified Config rules are compliant

### Description

Indicates whether the specified Config rules are compliant. If a rule is
noncompliant, this action returns the number of Amazon Web Services
resources that do not comply with the rule.

A rule is compliant if all of the evaluated resources comply with it. It
is noncompliant if any of these resources do not comply.

If Config has no current evaluation results for the rule, it returns
`INSUFFICIENT_DATA`. This result might indicate one of the following
conditions:

-   Config has never invoked an evaluation for the rule. To check
    whether it has, use the `describe_config_rule_evaluation_status`
    action to get the `LastSuccessfulInvocationTime` and
    `LastFailedInvocationTime`.

-   The rule's Lambda function is failing to send evaluation results to
    Config. Verify that the role you assigned to your configuration
    recorder includes the `config:PutEvaluations` permission. If the
    rule is a custom rule, verify that the Lambda execution role
    includes the `config:PutEvaluations` permission.

-   The rule's Lambda function has returned `NOT_APPLICABLE` for all
    evaluation results. This can occur if the resources were deleted or
    removed from the rule's scope.

### Usage

    configservice_describe_compliance_by_config_rule(ConfigRuleNames,
      ComplianceTypes, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_compliance_by_config_rule_:_ConfigRuleNames">ConfigRuleNames</code></td>
<td><p>Specify one or more Config rule names to filter the results by
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_compliance_by_config_rule_:_ComplianceTypes">ComplianceTypes</code></td>
<td><p>Filters the results by compliance.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_compliance_by_config_rule_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComplianceByConfigRules = list(
        list(
          ConfigRuleName = "string",
          Compliance = list(
            ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
            ComplianceContributorCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_compliance_by_config_rule(
      ConfigRuleNames = list(
        "string"
      ),
      ComplianceTypes = list(
        "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA"
      ),
      NextToken = "string"
    )
