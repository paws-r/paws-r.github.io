<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_composite_alarm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a composite alarm

### Description

Creates or updates a *composite alarm*. When you create a composite
alarm, you specify a rule expression for the alarm that takes into
account the alarm states of other alarms that you have created. The
composite alarm goes into ALARM state only if all conditions of the rule
are met.

The alarms specified in a composite alarm's rule expression can include
metric alarms and other composite alarms. The rule expression of a
composite alarm can include as many as 100 underlying alarms. Any single
alarm can be included in the rule expressions of as many as 150
composite alarms.

Using composite alarms can reduce alarm noise. You can create multiple
metric alarms, and also create a composite alarm and set up alerts only
for the composite alarm. For example, you could create a composite alarm
that goes into ALARM state only when more than one of the underlying
metric alarms are in ALARM state.

Currently, the only alarm actions that can be taken by composite alarms
are notifying SNS topics.

It is possible to create a loop or cycle of composite alarms, where
composite alarm A depends on composite alarm B, and composite alarm B
also depends on composite alarm A. In this scenario, you can't delete
any composite alarm that is part of the cycle because there is always
still a composite alarm that depends on that alarm that you want to
delete.

To get out of such a situation, you must break the cycle by changing the
rule of one of the composite alarms in the cycle to remove a dependency
that creates the cycle. The simplest change to make to break a cycle is
to change the `AlarmRule` of one of the alarms to `false`.

Additionally, the evaluation of composite alarms stops if CloudWatch
detects a cycle in the evaluation path.

When this operation creates an alarm, the alarm state is immediately set
to `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
appropriately. Any actions associated with the new state are then
executed. For a composite alarm, this initial time after creation is the
only time that the alarm can be in `INSUFFICIENT_DATA` state.

When you update an existing alarm, its state is left unchanged, but the
update completely overwrites the previous configuration of the alarm.

To use this operation, you must be signed on with the
`cloudwatch:PutCompositeAlarm` permission that is scoped to `*`. You
can't create a composite alarms if your `cloudwatch:PutCompositeAlarm`
permission has a narrower scope.

If you are an IAM user, you must have `iam:CreateServiceLinkedRole` to
create a composite alarm that has Systems Manager OpsItem actions.

### Usage

    cloudwatch_put_composite_alarm(ActionsEnabled, AlarmActions,
      AlarmDescription, AlarmName, AlarmRule, InsufficientDataActions,
      OKActions, Tags, ActionsSuppressor, ActionsSuppressorWaitPeriod,
      ActionsSuppressorExtensionPeriod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_composite_alarm_:_ActionsEnabled">ActionsEnabled</code></td>
<td><p>Indicates whether actions should be executed during any changes
to the alarm state of the composite alarm. The default is
<code>TRUE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_composite_alarm_:_AlarmActions">AlarmActions</code></td>
<td><p>The actions to execute when this alarm transitions to the
<code>ALARM</code> state from any other state. Each action is specified
as an Amazon Resource Name (ARN).</p>
<p>Valid Values:
<code>arn:aws:sns:region:account-id:sns-topic-name </code> |
<code>arn:aws:ssm:region:account-id:opsitem:severity </code></p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_composite_alarm_:_AlarmDescription">AlarmDescription</code></td>
<td><p>The description for the composite alarm.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_composite_alarm_:_AlarmName">AlarmName</code></td>
<td><p>[required] The name for the composite alarm. This name must be
unique within the Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_composite_alarm_:_AlarmRule">AlarmRule</code></td>
<td><p>[required] An expression that specifies which other alarms are to
be evaluated to determine this composite alarm's state. For each alarm
that you reference, you designate a function that specifies whether that
alarm needs to be in ALARM state, OK state, or INSUFFICIENT_DATA state.
You can use operators (AND, OR and NOT) to combine multiple functions in
a single expression. You can use parenthesis to logically group the
functions in your expression.</p>
<p>You can use either alarm names or ARNs to reference the other alarms
that are to be evaluated.</p>
<p>Functions can include the following:</p>
<ul>
<li><p><code>ALARM("alarm-name or alarm-ARN")</code> is TRUE if the
named alarm is in ALARM state.</p></li>
<li><p><code>OK("alarm-name or alarm-ARN")</code> is TRUE if the named
alarm is in OK state.</p></li>
<li><p><code>INSUFFICIENT_DATA("alarm-name or alarm-ARN")</code> is TRUE
if the named alarm is in INSUFFICIENT_DATA state.</p></li>
<li><p><code>TRUE</code> always evaluates to TRUE.</p></li>
<li><p><code>FALSE</code> always evaluates to FALSE.</p></li>
</ul>
<p>TRUE and FALSE are useful for testing a complex
<code>AlarmRule</code> structure, and for testing your alarm
actions.</p>
<p>Alarm names specified in <code>AlarmRule</code> can be surrounded
with double-quotes ("), but do not have to be.</p>
<p>The following are some examples of <code>AlarmRule</code>:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠ALARM(CPUUtilizationTooHigh) AND ALARM(DiskReadOpsTooHigh)⁠</code>
specifies that the composite alarm goes into ALARM state only if both
CPUUtilizationTooHigh and DiskReadOpsTooHigh alarms are in ALARM
state.</p></li>
<li><p><code
style="white-space: pre;">⁠ALARM(CPUUtilizationTooHigh) AND NOT ALARM(DeploymentInProgress)⁠</code>
specifies that the alarm goes to ALARM state if CPUUtilizationTooHigh is
in ALARM state and DeploymentInProgress is not in ALARM state. This
example reduces alarm noise during a known deployment window.</p></li>
<li><p><code
style="white-space: pre;">⁠(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND OK(NetworkOutTooHigh)⁠</code>
goes into ALARM state if CPUUtilizationTooHigh OR DiskReadOpsTooHigh is
in ALARM state, and if NetworkOutTooHigh is in OK state. This provides
another example of using a composite alarm to prevent noise. This rule
ensures that you are not notified with an alarm action on high CPU or
disk usage if a known network problem is also occurring.</p></li>
</ul>
<p>The <code>AlarmRule</code> can specify as many as 100 "children"
alarms. The <code>AlarmRule</code> expression can have as many as 500
elements. Elements are child alarms, TRUE or FALSE statements, and
parentheses.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_composite_alarm_:_InsufficientDataActions">InsufficientDataActions</code></td>
<td><p>The actions to execute when this alarm transitions to the
<code>INSUFFICIENT_DATA</code> state from any other state. Each action
is specified as an Amazon Resource Name (ARN).</p>
<p>Valid Values:
<code>arn:aws:sns:region:account-id:sns-topic-name </code></p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_composite_alarm_:_OKActions">OKActions</code></td>
<td><p>The actions to execute when this alarm transitions to an
<code>OK</code> state from any other state. Each action is specified as
an Amazon Resource Name (ARN).</p>
<p>Valid Values:
<code>arn:aws:sns:region:account-id:sns-topic-name </code></p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_put_composite_alarm_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to associate with the composite alarm.
You can associate as many as 50 tags with an alarm.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions, by granting a user permission
to access or change only resources with certain tag values.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_composite_alarm_:_ActionsSuppressor">ActionsSuppressor</code></td>
<td><p>Actions will be suppressed if the suppressor alarm is in the
<code>ALARM</code> state. <code>ActionsSuppressor</code> can be an
AlarmName or an Amazon Resource Name (ARN) from an existing
alarm.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_composite_alarm_:_ActionsSuppressorWaitPeriod">ActionsSuppressorWaitPeriod</code></td>
<td><p>The maximum time in seconds that the composite alarm waits for
the suppressor alarm to go into the <code>ALARM</code> state. After this
time, the composite alarm performs its actions.</p>
<p><code>WaitPeriod</code> is required only when
<code>ActionsSuppressor</code> is specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_composite_alarm_:_ActionsSuppressorExtensionPeriod">ActionsSuppressorExtensionPeriod</code></td>
<td><p>The maximum time in seconds that the composite alarm waits after
suppressor alarm goes out of the <code>ALARM</code> state. After this
time, the composite alarm performs its actions.</p>
<p><code>ExtensionPeriod</code> is required only when
<code>ActionsSuppressor</code> is specified.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_composite_alarm(
      ActionsEnabled = TRUE|FALSE,
      AlarmActions = list(
        "string"
      ),
      AlarmDescription = "string",
      AlarmName = "string",
      AlarmRule = "string",
      InsufficientDataActions = list(
        "string"
      ),
      OKActions = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ActionsSuppressor = "string",
      ActionsSuppressorWaitPeriod = 123,
      ActionsSuppressorExtensionPeriod = 123
    )
