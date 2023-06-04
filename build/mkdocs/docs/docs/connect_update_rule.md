<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a rule for the specified Amazon Connect instance

### Description

Updates a rule for the specified Amazon Connect instance.

Use the [Rules Function
language](https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
to code conditions for the rule.

### Usage

    connect_update_rule(RuleId, InstanceId, Name, Function, Actions,
      PublishStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_update_rule_:_RuleId">RuleId</code></td>
<td><p>[required] A unique identifier for the rule.</p></td>
</tr>
<tr class="even">
<td><code id="connect_update_rule_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_rule_:_Name">Name</code></td>
<td><p>[required] The name of the rule. You can change the name only if
<code>TriggerEventSource</code> is one of the following values:
<code>OnZendeskTicketCreate</code> |
<code>OnZendeskTicketStatusUpdate</code> |
<code>OnSalesforceCaseCreate</code></p></td>
</tr>
<tr class="even">
<td><code id="connect_update_rule_:_Function">Function</code></td>
<td><p>[required] The conditions of the rule.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_rule_:_Actions">Actions</code></td>
<td><p>[required] A list of actions to be run when the rule is
triggered.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_rule_:_PublishStatus">PublishStatus</code></td>
<td><p>[required] The publish status of the rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_rule(
      RuleId = "string",
      InstanceId = "string",
      Name = "string",
      Function = "string",
      Actions = list(
        list(
          ActionType = "CREATE_TASK"|"ASSIGN_CONTACT_CATEGORY"|"GENERATE_EVENTBRIDGE_EVENT"|"SEND_NOTIFICATION",
          TaskAction = list(
            Name = "string",
            Description = "string",
            ContactFlowId = "string",
            References = list(
              list(
                Value = "string",
                Type = "URL"|"ATTACHMENT"|"NUMBER"|"STRING"|"DATE"|"EMAIL"
              )
            )
          ),
          EventBridgeAction = list(
            Name = "string"
          ),
          AssignContactCategoryAction = list(),
          SendNotificationAction = list(
            DeliveryMethod = "EMAIL",
            Subject = "string",
            Content = "string",
            ContentType = "PLAIN_TEXT",
            Recipient = list(
              UserTags = list(
                "string"
              ),
              UserIds = list(
                "string"
              )
            )
          )
        )
      ),
      PublishStatus = "DRAFT"|"PUBLISHED"
    )
