<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_budget_action_histories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a budget action history detail

### Description

Describes a budget action history detail.

### Usage

    budgets_describe_budget_action_histories(AccountId, BudgetName,
      ActionId, TimePeriod, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_budget_action_histories_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_action_histories_:_BudgetName">BudgetName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budget_action_histories_:_ActionId">ActionId</code></td>
<td><p>[required] A system-generated universally unique identifier
(UUID) for the action.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_action_histories_:_TimePeriod">TimePeriod</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budget_action_histories_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_action_histories_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionHistories = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          Status = "STANDBY"|"PENDING"|"EXECUTION_IN_PROGRESS"|"EXECUTION_SUCCESS"|"EXECUTION_FAILURE"|"REVERSE_IN_PROGRESS"|"REVERSE_SUCCESS"|"REVERSE_FAILURE"|"RESET_IN_PROGRESS"|"RESET_FAILURE",
          EventType = "SYSTEM"|"CREATE_ACTION"|"DELETE_ACTION"|"UPDATE_ACTION"|"EXECUTE_ACTION",
          ActionHistoryDetails = list(
            Message = "string",
            Action = list(
              ActionId = "string",
              BudgetName = "string",
              NotificationType = "ACTUAL"|"FORECASTED",
              ActionType = "APPLY_IAM_POLICY"|"APPLY_SCP_POLICY"|"RUN_SSM_DOCUMENTS",
              ActionThreshold = list(
                ActionThresholdValue = 123.0,
                ActionThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE"
              ),
              Definition = list(
                IamActionDefinition = list(
                  PolicyArn = "string",
                  Roles = list(
                    "string"
                  ),
                  Groups = list(
                    "string"
                  ),
                  Users = list(
                    "string"
                  )
                ),
                ScpActionDefinition = list(
                  PolicyId = "string",
                  TargetIds = list(
                    "string"
                  )
                ),
                SsmActionDefinition = list(
                  ActionSubType = "STOP_EC2_INSTANCES"|"STOP_RDS_INSTANCES",
                  Region = "string",
                  InstanceIds = list(
                    "string"
                  )
                )
              ),
              ExecutionRoleArn = "string",
              ApprovalModel = "AUTOMATIC"|"MANUAL",
              Status = "STANDBY"|"PENDING"|"EXECUTION_IN_PROGRESS"|"EXECUTION_SUCCESS"|"EXECUTION_FAILURE"|"REVERSE_IN_PROGRESS"|"REVERSE_SUCCESS"|"REVERSE_FAILURE"|"RESET_IN_PROGRESS"|"RESET_FAILURE",
              Subscribers = list(
                list(
                  SubscriptionType = "SNS"|"EMAIL",
                  Address = "string"
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_budget_action_histories(
      AccountId = "string",
      BudgetName = "string",
      ActionId = "string",
      TimePeriod = list(
        Start = as.POSIXct(
          "2015-01-01"
        ),
        End = as.POSIXct(
          "2015-01-01"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
