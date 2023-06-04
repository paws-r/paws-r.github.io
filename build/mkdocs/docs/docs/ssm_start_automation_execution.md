<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_start_automation_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates execution of an Automation runbook

### Description

Initiates execution of an Automation runbook.

### Usage

    ssm_start_automation_execution(DocumentName, DocumentVersion,
      Parameters, ClientToken, Mode, TargetParameterName, Targets, TargetMaps,
      MaxConcurrency, MaxErrors, TargetLocations, Tags, AlarmConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_start_automation_execution_:_DocumentName">DocumentName</code></td>
<td><p>[required] The name of the SSM document to run. This can be a
public document or a custom document. To run a shared document belonging
to another account, specify the document ARN. For more information about
how to use shared documents, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-ssm-sharing.html">Using
shared SSM documents</a> in the <em>Amazon Web Services Systems Manager
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_automation_execution_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The version of the Automation runbook to use for this
execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_automation_execution_:_Parameters">Parameters</code></td>
<td><p>A key-value map of execution parameters, which match the declared
parameters in the Automation runbook.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_automation_execution_:_ClientToken">ClientToken</code></td>
<td><p>User-provided idempotency token. The token must be unique, is
case insensitive, enforces the UUID format, and can't be
reused.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_start_automation_execution_:_Mode">Mode</code></td>
<td><p>The execution mode of the automation. Valid modes include the
following: Auto and Interactive. The default mode is Auto.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_automation_execution_:_TargetParameterName">TargetParameterName</code></td>
<td><p>The name of the parameter used as the target resource for the
rate-controlled execution. Required if you specify targets.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_automation_execution_:_Targets">Targets</code></td>
<td><p>A key-value mapping to target resources. Required if you specify
TargetParameterName.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_automation_execution_:_TargetMaps">TargetMaps</code></td>
<td><p>A key-value mapping of document parameters to target resources.
Both Targets and TargetMaps can't be specified together.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_automation_execution_:_MaxConcurrency">MaxConcurrency</code></td>
<td><p>The maximum number of targets allowed to run this task in
parallel. You can specify a number, such as 10, or a percentage, such as
10%. The default value is <code>10</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_start_automation_execution_:_MaxErrors">MaxErrors</code></td>
<td><p>The number of errors that are allowed before the system stops
running the automation on additional targets. You can specify either an
absolute number of errors, for example 10, or a percentage of the target
set, for example 10%. If you specify 3, for example, the system stops
running the automation when the fourth error is received. If you specify
0, then the system stops running the automation on additional targets
after the first error result is returned. If you run an automation on 50
resources and set max-errors to 10%, then the system stops running the
automation on additional targets when the sixth error is received.</p>
<p>Executions that are already running an automation when max-errors is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set max-concurrency to 1 so the executions proceed
one at a time.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_automation_execution_:_TargetLocations">TargetLocations</code></td>
<td><p>A location is a combination of Amazon Web Services Regions and/or
Amazon Web Services accounts where you want to run the automation. Use
this operation to start an automation in multiple Amazon Web Services
Regions and multiple Amazon Web Services accounts. For more information,
see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/running-automations-multiple-accounts-regions.html">Running
Automation workflows in multiple Amazon Web Services Regions and Amazon
Web Services accounts</a> in the <em>Amazon Web Services Systems Manager
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_start_automation_execution_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. You can specify
a maximum of five tags for an automation. Tags enable you to categorize
a resource in different ways, such as by purpose, owner, or environment.
For example, you might want to tag an automation to identify an
environment or operating system. In this case, you could specify the
following key-value pairs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠Key=environment,Value=test⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=OS,Value=Windows⁠</code></p></li>
</ul>
<p>To add tags to an existing automation, use the
<code>add_tags_to_resource</code> operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_start_automation_execution_:_AlarmConfiguration">AlarmConfiguration</code></td>
<td><p>The CloudWatch alarm you want to apply to your
automation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutomationExecutionId = "string"
    )

### Request syntax

    svc$start_automation_execution(
      DocumentName = "string",
      DocumentVersion = "string",
      Parameters = list(
        list(
          "string"
        )
      ),
      ClientToken = "string",
      Mode = "Auto"|"Interactive",
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
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AlarmConfiguration = list(
        IgnorePollAlarmFailure = TRUE|FALSE,
        Alarms = list(
          list(
            Name = "string"
          )
        )
      )
    )
