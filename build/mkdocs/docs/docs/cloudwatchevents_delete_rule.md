<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_delete_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified rule

### Description

Deletes the specified rule.

Before you can delete the rule, you must remove all targets, using
`remove_targets`.

When you delete a rule, incoming events might continue to match to the
deleted rule. Allow a short period of time for changes to take effect.

If you call delete rule multiple times for the same rule, all calls will
succeed. When you call delete rule for a non-existent custom eventbus,
`ResourceNotFoundException` is returned.

Managed rules are rules created and managed by another Amazon Web
Services service on your behalf. These rules are created by those other
Amazon Web Services services to support functionality in those services.
You can delete these rules using the `Force` option, but you should do
so only if you are sure the other service is not still using that rule.

### Usage

    cloudwatchevents_delete_rule(Name, EventBusName, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevents_delete_rule_:_Name">Name</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_delete_rule_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchevents_delete_rule_:_Force">Force</code></td>
<td><p>If this is a managed rule, created by an Amazon Web Services
service on your behalf, you must specify <code>Force</code> as
<code>True</code> to delete the rule. This parameter is ignored for
rules that are not managed rules. You can check whether a rule is a
managed rule by using <code>describe_rule</code> or
<code>list_rules</code> and checking the <code>ManagedBy</code> field of
the response.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rule(
      Name = "string",
      EventBusName = "string",
      Force = TRUE|FALSE
    )
