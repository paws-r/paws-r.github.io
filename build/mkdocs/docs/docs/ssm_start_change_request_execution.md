<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_start_change_request_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a change request for Change Manager

### Description

Creates a change request for Change Manager. The Automation runbooks
specified in the change request run only after all required approvals
for the change request have been received.

### Usage

    ssm_start_change_request_execution(ScheduledTime, DocumentName,
      DocumentVersion, Parameters, ChangeRequestName, ClientToken,
      AutoApprove, Runbooks, Tags, ScheduledEndTime, ChangeDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_start_change_request_execution_:_ScheduledTime">ScheduledTime</code></td>
<td><p>The date and time specified in the change request to run the
Automation runbooks.</p>
<p>The Automation runbooks specified for the runbook workflow can't run
until all required approvals for the change request have been
received.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_change_request_execution_:_DocumentName">DocumentName</code></td>
<td><p>[required] The name of the change template document to run during
the runbook workflow.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_change_request_execution_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The version of the change template document to run during the
runbook workflow.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_change_request_execution_:_Parameters">Parameters</code></td>
<td><p>A key-value map of parameters that match the declared parameters
in the change template document.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_change_request_execution_:_ChangeRequestName">ChangeRequestName</code></td>
<td><p>The name of the change request associated with the runbook
workflow to be run.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_change_request_execution_:_ClientToken">ClientToken</code></td>
<td><p>The user-provided idempotency token. The token must be unique, is
case insensitive, enforces the UUID format, and can't be
reused.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_change_request_execution_:_AutoApprove">AutoApprove</code></td>
<td><p>Indicates whether the change request can be approved
automatically without the need for manual approvals.</p>
<p>If <code>AutoApprovable</code> is enabled in a change template, then
setting <code>AutoApprove</code> to <code>true</code> in
<code>start_change_request_execution</code> creates a change request
that bypasses approver review.</p>
<p>Change Calendar restrictions are not bypassed in this scenario. If
the state of an associated calendar is <code>CLOSED</code>, change
freeze approvers must still grant permission for this change request to
run. If they don't, the change won't be processed until the calendar
state is again <code>OPEN</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_change_request_execution_:_Runbooks">Runbooks</code></td>
<td><p>[required] Information about the Automation runbooks that are run
during the runbook workflow.</p>
<p>The Automation runbooks specified for the runbook workflow can't run
until all required approvals for the change request have been
received.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_change_request_execution_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. You can specify
a maximum of five tags for a change request. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag a change request to
identify an environment or target Amazon Web Services Region. In this
case, you could specify the following key-value pairs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠Key=Environment,Value=Production⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=Region,Value=us-east-2⁠</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_change_request_execution_:_ScheduledEndTime">ScheduledEndTime</code></td>
<td><p>The time that the requester expects the runbook workflow related
to the change request to complete. The time is an estimate only that the
requester provides for reviewers.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_change_request_execution_:_ChangeDetails">ChangeDetails</code></td>
<td><p>User-provided details about the change. If no details are
provided, content specified in the <strong>Template information</strong>
section of the associated change template is added.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutomationExecutionId = "string"
    )

### Request syntax

    svc$start_change_request_execution(
      ScheduledTime = as.POSIXct(
        "2015-01-01"
      ),
      DocumentName = "string",
      DocumentVersion = "string",
      Parameters = list(
        list(
          "string"
        )
      ),
      ChangeRequestName = "string",
      ClientToken = "string",
      AutoApprove = TRUE|FALSE,
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ScheduledEndTime = as.POSIXct(
        "2015-01-01"
      ),
      ChangeDetails = "string"
    )
