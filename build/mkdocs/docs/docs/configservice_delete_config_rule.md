<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Config rule and all of its evaluation results

### Description

Deletes the specified Config rule and all of its evaluation results.

Config sets the state of a rule to `DELETING` until the deletion is
complete. You cannot update a rule while it is in this state. If you
make a `put_config_rule` or `delete_config_rule` request for the rule,
you will receive a `ResourceInUseException`.

You can check the state of a rule by using the `describe_config_rules`
request.

### Usage

    configservice_delete_config_rule(ConfigRuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_config_rule_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_config_rule(
      ConfigRuleName = "string"
    )
