<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a rule for the specified Amazon Connect instance

### Description

Describes a rule for the specified Amazon Connect instance.

### Usage

    connect_describe_rule(InstanceId, RuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_describe_rule_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_describe_rule_:_RuleId">RuleId</code></td>
<td><p>[required] A unique identifier for the rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rule = list(
        Name = "string",
        RuleId = "string",
        RuleArn = "string",
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
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedBy = "string",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_rule(
      InstanceId = "string",
      RuleId = "string"
    )
