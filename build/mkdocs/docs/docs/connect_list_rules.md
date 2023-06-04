<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all rules for the specified Amazon Connect instance

### Description

List all rules for the specified Amazon Connect instance.

### Usage

    connect_list_rules(InstanceId, PublishStatus, EventSourceName,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_list_rules_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_rules_:_PublishStatus">PublishStatus</code></td>
<td><p>The publish status of the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_rules_:_EventSourceName">EventSourceName</code></td>
<td><p>The name of the event source.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_list_rules_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleSummaryList = list(
        list(
          Name = "string",
          RuleId = "string",
          RuleArn = "string",
          EventSourceName = "OnPostCallAnalysisAvailable"|"OnRealTimeCallAnalysisAvailable"|"OnPostChatAnalysisAvailable"|"OnZendeskTicketCreate"|"OnZendeskTicketStatusUpdate"|"OnSalesforceCaseCreate"|"OnContactEvaluationSubmit",
          PublishStatus = "DRAFT"|"PUBLISHED",
          ActionSummaries = list(
            list(
              ActionType = "CREATE_TASK"|"ASSIGN_CONTACT_CATEGORY"|"GENERATE_EVENTBRIDGE_EVENT"|"SEND_NOTIFICATION"
            )
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_rules(
      InstanceId = "string",
      PublishStatus = "DRAFT"|"PUBLISHED",
      EventSourceName = "OnPostCallAnalysisAvailable"|"OnRealTimeCallAnalysisAvailable"|"OnPostChatAnalysisAvailable"|"OnZendeskTicketCreate"|"OnZendeskTicketStatusUpdate"|"OnSalesforceCaseCreate"|"OnContactEvaluationSubmit",
      MaxResults = 123,
      NextToken = "string"
    )
