<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_create_budget_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a budget action

### Description

Creates a budget action.

### Usage

    budgets_create_budget_action(AccountId, BudgetName, NotificationType,
      ActionType, ActionThreshold, Definition, ExecutionRoleArn,
      ApprovalModel, Subscribers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_create_budget_action_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_budget_action_:_BudgetName">BudgetName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_budget_action_:_NotificationType">NotificationType</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_budget_action_:_ActionType">ActionType</code></td>
<td><p>[required] The type of action. This defines the type of tasks
that can be carried out by this action. This field also determines the
format for definition.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_budget_action_:_ActionThreshold">ActionThreshold</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_budget_action_:_Definition">Definition</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_budget_action_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>[required] The role passed for action execution and reversion.
Roles and actions must be in the same account.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_budget_action_:_ApprovalModel">ApprovalModel</code></td>
<td><p>[required] This specifies if the action needs manual or automatic
approval.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_budget_action_:_Subscribers">Subscribers</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountId = "string",
      BudgetName = "string",
      ActionId = "string"
    )

### Request syntax

    svc$create_budget_action(
      AccountId = "string",
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
      Subscribers = list(
        list(
          SubscriptionType = "SNS"|"EMAIL",
          Address = "string"
        )
      )
    )
