<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_automation_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed information about a particular Automation execution

### Description

Get detailed information about a particular Automation execution.

### Usage

    ssm_get_automation_execution(AutomationExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_automation_execution_:_AutomationExecutionId">AutomationExecutionId</code></td>
<td><p>[required] The unique identifier for an existing automation
execution to examine. The execution ID is returned by
StartAutomationExecution when the execution of an Automation runbook is
initiated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutomationExecution = list(
        AutomationExecutionId = "string",
        DocumentName = "string",
        DocumentVersion = "string",
        ExecutionStartTime = as.POSIXct(
          "2015-01-01"
        ),
        ExecutionEndTime = as.POSIXct(
          "2015-01-01"
        ),
        AutomationExecutionStatus = "Pending"|"InProgress"|"Waiting"|"Success"|"TimedOut"|"Cancelling"|"Cancelled"|"Failed"|"PendingApproval"|"Approved"|"Rejected"|"Scheduled"|"RunbookInProgress"|"PendingChangeCalendarOverride"|"ChangeCalendarOverrideApproved"|"ChangeCalendarOverrideRejected"|"CompletedWithSuccess"|"CompletedWithFailure",
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
        StepExecutionsTruncated = TRUE|FALSE,
        Parameters = list(
          list(
            "string"
          )
        ),
        Outputs = list(
          list(
            "string"
          )
        ),
        FailureMessage = "string",
        Mode = "Auto"|"Interactive",
        ParentAutomationExecutionId = "string",
        ExecutedBy = "string",
        CurrentStepName = "string",
        CurrentAction = "string",
        TargetParameterName = "string",
        Targets = list(
          list(
            Key = "string",
            Values = list(
              "string"
            )
          )
        ),
        TargetMaps = list(
          list(
            list(
              "string"
            )
          )
        ),
        ResolvedTargets = list(
          ParameterValues = list(
            "string"
          ),
          Truncated = TRUE|FALSE
        ),
        MaxConcurrency = "string",
        MaxErrors = "string",
        Target = "string",
        TargetLocations = list(
          list(
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
          )
        ),
        ProgressCounters = list(
          TotalSteps = 123,
          SuccessSteps = 123,
          FailedSteps = 123,
          CancelledSteps = 123,
          TimedOutSteps = 123
        ),
        AlarmConfiguration = list(
          IgnorePollAlarmFailure = TRUE|FALSE,
          Alarms = list(
            list(
              Name = "string"
            )
          )
        ),
        TriggeredAlarms = list(
          list(
            Name = "string",
            State = "UNKNOWN"|"ALARM"
          )
        ),
        AutomationSubtype = "ChangeRequest",
        ScheduledTime = as.POSIXct(
          "2015-01-01"
        ),
        Runbooks = list(
          list(
            DocumentName = "string",
            DocumentVersion = "string",
            Parameters = list(
              list(
                "string"
              )
            ),
            TargetParameterName = "string",
            Targets = list(
              list(
                Key = "string",
                Values = list(
                  "string"
                )
              )
            ),
            TargetMaps = list(
              list(
                list(
                  "string"
                )
              )
            ),
            MaxConcurrency = "string",
            MaxErrors = "string",
            TargetLocations = list(
              list(
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
              )
            )
          )
        ),
        OpsItemId = "string",
        AssociationId = "string",
        ChangeRequestName = "string"
      )
    )

### Request syntax

    svc$get_automation_execution(
      AutomationExecutionId = "string"
    )
