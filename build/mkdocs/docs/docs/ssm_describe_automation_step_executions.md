<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_automation_step_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Information about all active and terminated step executions in an Automation workflow

### Description

Information about all active and terminated step executions in an
Automation workflow.

### Usage

    ssm_describe_automation_step_executions(AutomationExecutionId, Filters,
      NextToken, MaxResults, ReverseOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_automation_step_executions_:_AutomationExecutionId">AutomationExecutionId</code></td>
<td><p>[required] The Automation execution ID for which you want step
execution descriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_automation_step_executions_:_Filters">Filters</code></td>
<td><p>One or more filters to limit the number of step executions
returned by the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_automation_step_executions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_automation_step_executions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_automation_step_executions_:_ReverseOrder">ReverseOrder</code></td>
<td><p>Indicates whether to list step executions in reverse order by
start time. The default value is 'false'.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StepExecutions = list(
        list(
          StepName = "string",
          Action = "string",
          TimeoutSeconds = 123,
          OnFailure = "string",
          MaxAttempts = 123,
          ExecutionStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ExecutionEndTime = as.POSIXct(
            "2015-01-01"
          ),
          StepStatus = "Pending"|"InProgress"|"Waiting"|"Success"|"TimedOut"|"Cancelling"|"Cancelled"|"Failed"|"PendingApproval"|"Approved"|"Rejected"|"Scheduled"|"RunbookInProgress"|"PendingChangeCalendarOverride"|"ChangeCalendarOverrideApproved"|"ChangeCalendarOverrideRejected"|"CompletedWithSuccess"|"CompletedWithFailure",
          ResponseCode = "string",
          Inputs = list(
            "string"
          ),
          Outputs = list(
            list(
              "string"
            )
          ),
          Response = "string",
          FailureMessage = "string",
          FailureDetails = list(
            FailureStage = "string",
            FailureType = "string",
            Details = list(
              list(
                "string"
              )
            )
          ),
          StepExecutionId = "string",
          OverriddenParameters = list(
            list(
              "string"
            )
          ),
          IsEnd = TRUE|FALSE,
          NextStep = "string",
          IsCritical = TRUE|FALSE,
          ValidNextSteps = list(
            "string"
          ),
          Targets = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          ),
          TargetLocation = list(
            Accounts = list(
              "string"
            ),
            Regions = list(
              "string"
            ),
            TargetLocationMaxConcurrency = "string",
            TargetLocationMaxErrors = "string",
            ExecutionRoleName = "string",
            TargetLocationAlarmConfiguration = list(
              IgnorePollAlarmFailure = TRUE|FALSE,
              Alarms = list(
                list(
                  Name = "string"
                )
              )
            )
          ),
          TriggeredAlarms = list(
            list(
              Name = "string",
              State = "UNKNOWN"|"ALARM"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_automation_step_executions(
      AutomationExecutionId = "string",
      Filters = list(
        list(
          Key = "StartTimeBefore"|"StartTimeAfter"|"StepExecutionStatus"|"StepExecutionId"|"StepName"|"Action",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123,
      ReverseOrder = TRUE|FALSE
    )
