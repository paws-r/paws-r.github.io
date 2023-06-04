<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a rule for the specified Amazon Connect instance

### Description

Deletes a rule for the specified Amazon Connect instance.

### Usage

    connect_delete_rule(InstanceId, RuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_delete_rule_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_delete_rule_:_RuleId">RuleId</code></td>
<td><p>[required] A unique identifier for the rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rule(
      InstanceId = "string",
      RuleId = "string"
    )
