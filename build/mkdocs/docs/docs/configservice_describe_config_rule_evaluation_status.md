<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_config_rule_evaluation_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns status information for each of your Config managed rules

### Description

Returns status information for each of your Config managed rules. The
status includes information such as the last time Config invoked the
rule, the last time Config failed to invoke the rule, and the related
error for the last failure.

### Usage

    configservice_describe_config_rule_evaluation_status(ConfigRuleNames,
      NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_config_rule_evaluation_status_:_ConfigRuleNames">ConfigRuleNames</code></td>
<td><p>The name of the Config managed rules for which you want status
information. If you do not specify any names, Config returns status
information for all Config managed rules that you use.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_config_rule_evaluation_status_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_config_rule_evaluation_status_:_Limit">Limit</code></td>
<td><p>The number of rule evaluation results that you want returned.</p>
<p>This parameter is required if the rule limit for your account is more
than the default of 150 rules.</p>
<p>For information about requesting a rule limit increase, see <a
href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">Config
Limits</a> in the <em>Amazon Web Services General Reference
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigRulesEvaluationStatus = list(
        list(
          ConfigRuleName = "string",
          ConfigRuleArn = "string",
          ConfigRuleId = "string",
          LastSuccessfulInvocationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastFailedInvocationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastSuccessfulEvaluationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastFailedEvaluationTime = as.POSIXct(
            "2015-01-01"
          ),
          FirstActivatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastDeactivatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastErrorCode = "string",
          LastErrorMessage = "string",
          FirstEvaluationStarted = TRUE|FALSE,
          LastDebugLogDeliveryStatus = "string",
          LastDebugLogDeliveryStatusReason = "string",
          LastDebugLogDeliveryTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_config_rule_evaluation_status(
      ConfigRuleNames = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
