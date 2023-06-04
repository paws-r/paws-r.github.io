<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_remove_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified targets from the specified rule

### Description

Removes the specified targets from the specified rule. When the rule is
triggered, those targets are no longer be invoked.

A successful execution of `remove_targets` doesn't guarantee all targets
are removed from the rule, it means that the target(s) listed in the
request are removed.

When you remove a target, when the associated rule triggers, removed
targets might continue to be invoked. Allow a short period of time for
changes to take effect.

This action can partially fail if too many requests are made at the same
time. If that happens, `FailedEntryCount` is non-zero in the response
and each entry in `FailedEntries` provides the ID of the failed target
and the error code.

### Usage

    eventbridge_remove_targets(Rule, EventBusName, Ids, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_remove_targets_:_Rule">Rule</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_remove_targets_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
<tr class="odd">
<td><code id="eventbridge_remove_targets_:_Ids">Ids</code></td>
<td><p>[required] The IDs of the targets to remove from the
rule.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_remove_targets_:_Force">Force</code></td>
<td><p>If this is a managed rule, created by an Amazon Web Services
service on your behalf, you must specify <code>Force</code> as
<code>True</code> to remove targets. This parameter is ignored for rules
that are not managed rules. You can check whether a rule is a managed
rule by using <code>describe_rule</code> or <code>list_rules</code> and
checking the <code>ManagedBy</code> field of the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedEntryCount = 123,
      FailedEntries = list(
        list(
          TargetId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$remove_targets(
      Rule = "string",
      EventBusName = "string",
      Ids = list(
        "string"
      ),
      Force = TRUE|FALSE
    )
