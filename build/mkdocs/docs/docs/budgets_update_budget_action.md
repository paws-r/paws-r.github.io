<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_update_budget_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a budget action

### Description

Updates a budget action.

### Usage

    budgets_update_budget_action(AccountId, BudgetName, ActionId,
      NotificationType, ActionThreshold, Definition, ExecutionRoleArn,
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
id="budgets_update_budget_action_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_budget_action_:_BudgetName">BudgetName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_budget_action_:_ActionId">ActionId</code></td>
<td><p>[required] A system-generated universally unique identifier
(UUID) for the action.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_budget_action_:_NotificationType">NotificationType</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_budget_action_:_ActionThreshold">ActionThreshold</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_budget_action_:_Definition">Definition</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_budget_action_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>The role passed for action execution and reversion. Roles and
actions must be in the same account.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_budget_action_:_ApprovalModel">ApprovalModel</code></td>
<td><p>This specifies if the action needs manual or automatic
approval.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_budget_action_:_Subscribers">Subscribers</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountId = "string",
      BudgetName = "string",
      OldAction = list(
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
      ),
      NewAction = list(
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

### Request syntax

    svc$update_budget_action(
      AccountId = "string",
      BudgetName = "string",
      ActionId = "string",
      NotificationType = "ACTUAL"|"FORECASTED",
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
