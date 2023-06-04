<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_config_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about your Config rules

### Description

Returns details about your Config rules.

### Usage

    configservice_describe_config_rules(ConfigRuleNames, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_config_rules_:_ConfigRuleNames">ConfigRuleNames</code></td>
<td><p>The names of the Config rules for which you want details. If you
do not specify any names, Config returns details for all your
rules.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_config_rules_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_config_rules_:_Filters">Filters</code></td>
<td><p>Returns a list of Detective or Proactive Config rules. By
default, this API returns an unfiltered list. For more information on
Detective or Proactive Config rules, see <a
href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html"><strong>Evaluation
Mode</strong></a> in the Config Developer Guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigRules = list(
        list(
          ConfigRuleName = "string",
          ConfigRuleArn = "string",
          ConfigRuleId = "string",
          Description = "string",
          Scope = list(
            ComplianceResourceTypes = list(
              "string"
            ),
            TagKey = "string",
            TagValue = "string",
            ComplianceResourceId = "string"
          ),
          Source = list(
            Owner = "CUSTOM_LAMBDA"|"AWS"|"CUSTOM_POLICY",
            SourceIdentifier = "string",
            SourceDetails = list(
              list(
                EventSource = "aws.config",
                MessageType = "ConfigurationItemChangeNotification"|"ConfigurationSnapshotDeliveryCompleted"|"ScheduledNotification"|"OversizedConfigurationItemChangeNotification",
                MaximumExecutionFrequency = "One_Hour"|"Three_Hours"|"Six_Hours"|"Twelve_Hours"|"TwentyFour_Hours"
              )
            ),
            CustomPolicyDetails = list(
              PolicyRuntime = "string",
              PolicyText = "string",
              EnableDebugLogDelivery = TRUE|FALSE
            )
          ),
          InputParameters = "string",
          MaximumExecutionFrequency = "One_Hour"|"Three_Hours"|"Six_Hours"|"Twelve_Hours"|"TwentyFour_Hours",
          ConfigRuleState = "ACTIVE"|"DELETING"|"DELETING_RESULTS"|"EVALUATING",
          CreatedBy = "string",
          EvaluationModes = list(
            list(
              Mode = "DETECTIVE"|"PROACTIVE"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_config_rules(
      ConfigRuleNames = list(
        "string"
      ),
      NextToken = "string",
      Filters = list(
        EvaluationMode = "DETECTIVE"|"PROACTIVE"
      )
    )
