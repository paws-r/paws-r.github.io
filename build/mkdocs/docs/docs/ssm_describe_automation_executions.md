<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_automation_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides details about all active and terminated Automation executions

### Description

Provides details about all active and terminated Automation executions.

### Usage

    ssm_describe_automation_executions(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_automation_executions_:_Filters">Filters</code></td>
<td><p>Filters used to limit the scope of executions that are
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_automation_executions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_automation_executions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutomationExecutionMetadataList = list(
        list(
          AutomationExecutionId = "string",
          DocumentName = "string",
          DocumentVersion = "string",
          AutomationExecutionStatus = "Pending"|"InProgress"|"Waiting"|"Success"|"TimedOut"|"Cancelling"|"Cancelled"|"Failed"|"PendingApproval"|"Approved"|"Rejected"|"Scheduled"|"RunbookInProgress"|"PendingChangeCalendarOverride"|"ChangeCalendarOverrideApproved"|"ChangeCalendarOverrideRejected"|"CompletedWithSuccess"|"CompletedWithFailure",
          ExecutionStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ExecutionEndTime = as.POSIXct(
            "2015-01-01"
          ),
          ExecutedBy = "string",
          LogFile = "string",
          Outputs = list(
            list(
              "string"
            )
          ),
          Mode = "Auto"|"Interactive",
          ParentAutomationExecutionId = "string",
          CurrentStepName = "string",
          CurrentAction = "string",
          FailureMessage = "string",
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
          AutomationType = "CrossAccount"|"Local",
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_automation_executions(
      Filters = list(
        list(
          Key = "DocumentNamePrefix"|"ExecutionStatus"|"ExecutionId"|"ParentExecutionId"|"CurrentAction"|"StartTimeBefore"|"StartTimeAfter"|"AutomationType"|"TagKey"|"TargetResourceGroup"|"AutomationSubtype"|"OpsItemId",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
