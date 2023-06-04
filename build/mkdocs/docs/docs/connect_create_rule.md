<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a rule for the specified Amazon Connect instance

### Description

Creates a rule for the specified Amazon Connect instance.

Use the [Rules Function
language](https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
to code conditions for the rule.

### Usage

    connect_create_rule(InstanceId, Name, TriggerEventSource, Function,
      Actions, PublishStatus, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_create_rule_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_rule_:_Name">Name</code></td>
<td><p>[required] A unique name for the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_rule_:_TriggerEventSource">TriggerEventSource</code></td>
<td><p>[required] The event source to trigger the rule.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_rule_:_Function">Function</code></td>
<td><p>[required] The conditions of the rule.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_rule_:_Actions">Actions</code></td>
<td><p>[required] A list of actions to be run when the rule is
triggered.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_rule_:_PublishStatus">PublishStatus</code></td>
<td><p>[required] The publish status of the rule.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_rule_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleArn = "string",
      RuleId = "string"
    )

### Request syntax

    svc$create_rule(
      InstanceId = "string",
      Name = "string",
      TriggerEventSource = list(
        EventSourceName = "OnPostCallAnalysisAvailable"|"OnRealTimeCallAnalysisAvailable"|"OnPostChatAnalysisAvailable"|"OnZendeskTicketCreate"|"OnZendeskTicketStatusUpdate"|"OnSalesforceCaseCreate"|"OnContactEvaluationSubmit",
        IntegrationAssociationId = "string"
      ),
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
      PublishStatus = "DRAFT"|"PUBLISHED",
      ClientToken = "string"
    )
