<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_evaluation_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the evaluation results for the specified Config rule

### Description

Deletes the evaluation results for the specified Config rule. You can
specify one Config rule per request. After you delete the evaluation
results, you can call the `start_config_rules_evaluation` API to start
evaluating your Amazon Web Services resources against the rule.

### Usage

    configservice_delete_evaluation_results(ConfigRuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_evaluation_results_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule for which you want to
delete the evaluation results.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_evaluation_results(
      ConfigRuleName = "string"
    )
