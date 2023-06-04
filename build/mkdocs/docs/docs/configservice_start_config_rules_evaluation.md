<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_start_config_rules_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources

### Description

Runs an on-demand evaluation for the specified Config rules against the
last known configuration state of the resources. Use
`start_config_rules_evaluation` when you want to test that a rule you
updated is working as expected. `start_config_rules_evaluation` does not
re-record the latest configuration state for your resources. It re-runs
an evaluation against the last known state of your resources.

You can specify up to 25 Config rules per request.

An existing `start_config_rules_evaluation` call for the specified rules
must complete before you can call the API again. If you chose to have
Config stream to an Amazon SNS topic, you will receive a
`ConfigRuleEvaluationStarted` notification when the evaluation starts.

You don't need to call the `start_config_rules_evaluation` API to run an
evaluation for a new rule. When you create a rule, Config evaluates your
resources against the rule automatically.

The `start_config_rules_evaluation` API is useful if you want to run
on-demand evaluations, such as the following example:

1.  You have a custom rule that evaluates your IAM resources every 24
    hours.

2.  You update your Lambda function to add additional conditions to your
    rule.

3.  Instead of waiting for the next periodic evaluation, you call the
    `start_config_rules_evaluation` API.

4.  Config invokes your Lambda function and evaluates your IAM
    resources.

5.  Your custom rule will still run periodic evaluations every 24 hours.

### Usage

    configservice_start_config_rules_evaluation(ConfigRuleNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_start_config_rules_evaluation_:_ConfigRuleNames">ConfigRuleNames</code></td>
<td><p>The list of names of Config rules that you want to run
evaluations for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_config_rules_evaluation(
      ConfigRuleNames = list(
        "string"
      )
    )
