<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_register_task_with_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new task to a maintenance window

### Description

Adds a new task to a maintenance window.

### Usage

    ssm_register_task_with_maintenance_window(WindowId, Targets, TaskArn,
      ServiceRoleArn, TaskType, TaskParameters, TaskInvocationParameters,
      Priority, MaxConcurrency, MaxErrors, LoggingInfo, Name, Description,
      ClientToken, CutoffBehavior, AlarmConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window the task should be
added to.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_Targets">Targets</code></td>
<td><p>The targets (either managed nodes or maintenance window
targets).</p>
<p>One or more targets must be specified for maintenance window Run
Command-type tasks. Depending on the task, targets are optional for
other maintenance window task types (Automation, Lambda, and Step
Functions). For more information about running tasks that don't specify
targets, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
maintenance window tasks without targets</a> in the <em>Amazon Web
Services Systems Manager User Guide</em>.</p>
<p>Specify managed nodes using the following format:</p>
<p><code
style="white-space: pre;">⁠Key=InstanceIds,Values=&lt;instance-id-1&gt;,&lt;instance-id-2&gt;⁠</code></p>
<p>Specify maintenance window targets using the following format:</p>
<p><code
style="white-space: pre;">⁠Key=WindowTargetIds,Values=&lt;window-target-id-1&gt;,&lt;window-target-id-2&gt;⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_TaskArn">TaskArn</code></td>
<td><p>[required] The ARN of the task to run.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_ServiceRoleArn">ServiceRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role for Amazon
Web Services Systems Manager to assume when running a maintenance window
task. If you do not specify a service role ARN, Systems Manager uses
your account's service-linked role. If no service-linked role for
Systems Manager exists in your account, it is created when you run
<code>register_task_with_maintenance_window</code>.</p>
<p>For more information, see the following topics in the in the
<em>Amazon Web Services Systems Manager User Guide</em>:</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions">Using
service-linked roles for Systems Manager</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role">Should
I use a service-linked role or a custom service role to run maintenance
window tasks?</a></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_TaskType">TaskType</code></td>
<td><p>[required] The type of task being registered.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_TaskParameters">TaskParameters</code></td>
<td><p>The parameters that should be passed to the task when it is
run.</p>
<p><code>TaskParameters</code> has been deprecated. To specify
parameters to pass to a task when it runs, instead use the
<code>Parameters</code> option in the
<code>TaskInvocationParameters</code> structure. For information about
how Systems Manager handles these options for the supported maintenance
window task types, see
MaintenanceWindowTaskInvocationParameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_TaskInvocationParameters">TaskInvocationParameters</code></td>
<td><p>The parameters that the task should use during execution.
Populate only the fields that match the task type. All other fields
should be empty.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_Priority">Priority</code></td>
<td><p>The priority of the task in the maintenance window, the lower the
number the higher the priority. Tasks in a maintenance window are
scheduled in priority order with tasks that have the same priority
scheduled in parallel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_MaxConcurrency">MaxConcurrency</code></td>
<td><p>The maximum number of targets this task can be run for, in
parallel.</p>
<p>Although this element is listed as "Required: No", a value can be
omitted only when you are registering or updating a <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
task</a> You must provide a value in all other cases.</p>
<p>For maintenance window tasks without a target specified, you can't
supply a value for this option. Instead, the system inserts a
placeholder value of <code>1</code>. This value doesn't affect the
running of your task.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_MaxErrors">MaxErrors</code></td>
<td><p>The maximum number of errors allowed before this task stops being
scheduled.</p>
<p>Although this element is listed as "Required: No", a value can be
omitted only when you are registering or updating a <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
task</a> You must provide a value in all other cases.</p>
<p>For maintenance window tasks without a target specified, you can't
supply a value for this option. Instead, the system inserts a
placeholder value of <code>1</code>. This value doesn't affect the
running of your task.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_LoggingInfo">LoggingInfo</code></td>
<td><p>A structure containing information about an Amazon Simple Storage
Service (Amazon S3) bucket to write managed node-level logs to.</p>
<p><code>LoggingInfo</code> has been deprecated. To specify an Amazon
Simple Storage Service (Amazon S3) bucket to contain logs, instead use
the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code>
options in the <code>TaskInvocationParameters</code> structure. For
information about how Amazon Web Services Systems Manager handles these
options for the supported maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_Name">Name</code></td>
<td><p>An optional name for the task.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_Description">Description</code></td>
<td><p>An optional description for the task.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_ClientToken">ClientToken</code></td>
<td><p>User-provided idempotency token.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_task_with_maintenance_window_:_CutoffBehavior">CutoffBehavior</code></td>
<td><p>Indicates whether tasks should continue to run after the cutoff
time specified in the maintenance windows is reached.</p>
<ul>
<li><p><code>CONTINUE_TASK</code>: When the cutoff time is reached, any
tasks that are running continue. The default value.</p></li>
<li><p><code>CANCEL_TASK</code>:</p>
<ul>
<li><p>For Automation, Lambda, Step Functions tasks: When the cutoff
time is reached, any task invocations that are already running continue,
but no new task invocations are started.</p></li>
<li><p>For Run Command tasks: When the cutoff time is reached, the
system sends a <code>cancel_command</code> operation that attempts to
cancel the command associated with the task. However, there is no
guarantee that the command will be terminated and the underlying process
stopped.</p></li>
</ul>
<p>The status for tasks that are not completed is
<code>TIMED_OUT</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_task_with_maintenance_window_:_AlarmConfiguration">AlarmConfiguration</code></td>
<td><p>The CloudWatch alarm you want to apply to your maintenance window
task.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowTaskId = "string"
    )

### Request syntax

    svc$register_task_with_maintenance_window(
      WindowId = "string",
      Targets = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      TaskArn = "string",
      ServiceRoleArn = "string",
      TaskType = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
      TaskParameters = list(
        list(
          Values = list(
            "string"
          )
        )
      ),
      TaskInvocationParameters = list(
        RunCommand = list(
          Comment = "string",
          CloudWatchOutputConfig = list(
            CloudWatchLogGroupName = "string",
            CloudWatchOutputEnabled = TRUE|FALSE
          ),
          DocumentHash = "string",
          DocumentHashType = "Sha256"|"Sha1",
          DocumentVersion = "string",
          NotificationConfig = list(
            NotificationArn = "string",
            NotificationEvents = list(
              "All"|"InProgress"|"Success"|"TimedOut"|"Cancelled"|"Failed"
            ),
            NotificationType = "Command"|"Invocation"
          ),
          OutputS3BucketName = "string",
          OutputS3KeyPrefix = "string",
          Parameters = list(
            list(
              "string"
            )
          ),
          ServiceRoleArn = "string",
          TimeoutSeconds = 123
        ),
        Automation = list(
          DocumentVersion = "string",
          Parameters = list(
            list(
              "string"
            )
          )
        ),
        StepFunctions = list(
          Input = "string",
          Name = "string"
        ),
        Lambda = list(
          ClientContext = "string",
          Qualifier = "string",
          Payload = raw
        )
      ),
      Priority = 123,
      MaxConcurrency = "string",
      MaxErrors = "string",
      LoggingInfo = list(
        S3BucketName = "string",
        S3KeyPrefix = "string",
        S3Region = "string"
      ),
      Name = "string",
      Description = "string",
      ClientToken = "string",
      CutoffBehavior = "CONTINUE_TASK"|"CANCEL_TASK",
      AlarmConfiguration = list(
        IgnorePollAlarmFailure = TRUE|FALSE,
        Alarms = list(
          list(
            Name = "string"
          )
        )
      )
    )
