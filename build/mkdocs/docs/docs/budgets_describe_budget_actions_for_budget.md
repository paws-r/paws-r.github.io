<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_budget_actions_for_budget</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes all of the budget actions for a budget

### Description

Describes all of the budget actions for a budget.

### Usage

    budgets_describe_budget_actions_for_budget(AccountId, BudgetName,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_budget_actions_for_budget_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_actions_for_budget_:_BudgetName">BudgetName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budget_actions_for_budget_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_actions_for_budget_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Actions = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_budget_actions_for_budget(
      AccountId = "string",
      BudgetName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
