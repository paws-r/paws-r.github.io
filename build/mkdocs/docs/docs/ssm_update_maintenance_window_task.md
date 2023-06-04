<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_maintenance_window_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a task assigned to a maintenance window

### Description

Modifies a task assigned to a maintenance window. You can't change the
task type, but you can change the following values:

-   `TaskARN`. For example, you can change a `RUN_COMMAND` task from
    `AWS-RunPowerShellScript` to `AWS-RunShellScript`.

-   `ServiceRoleArn`

-   `TaskInvocationParameters`

-   `Priority`

-   `MaxConcurrency`

-   `MaxErrors`

One or more targets must be specified for maintenance window Run
Command-type tasks. Depending on the task, targets are optional for
other maintenance window task types (Automation, Lambda, and Step
Functions). For more information about running tasks that don't specify
targets, see [Registering maintenance window tasks without
targets](https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html)
in the *Amazon Web Services Systems Manager User Guide*.

If the value for a parameter in `update_maintenance_window_task` is
null, then the corresponding field isn't modified. If you set `Replace`
to true, then all fields required by the
`register_task_with_maintenance_window` operation are required for this
request. Optional fields that aren't specified are set to null.

When you update a maintenance window task that has options specified in
`TaskInvocationParameters`, you must provide again all the
`TaskInvocationParameters` values that you want to retain. The values
you don't specify again are removed. For example, suppose that when you
registered a Run Command task, you specified `TaskInvocationParameters`
values for `Comment`, `NotificationConfig`, and `OutputS3BucketName`. If
you update the maintenance window task and specify only a different
`OutputS3BucketName` value, the values for `Comment` and
`NotificationConfig` are removed.

### Usage

    ssm_update_maintenance_window_task(WindowId, WindowTaskId, Targets,
      TaskArn, ServiceRoleArn, TaskParameters, TaskInvocationParameters,
      Priority, MaxConcurrency, MaxErrors, LoggingInfo, Name, Description,
      Replace, CutoffBehavior, AlarmConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_WindowId">WindowId</code></td>
<td><p>[required] The maintenance window ID that contains the task to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_task_:_WindowTaskId">WindowTaskId</code></td>
<td><p>[required] The task ID to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_Targets">Targets</code></td>
<td><p>The targets (either managed nodes or tags) to modify. Managed
nodes are specified using the format <code
style="white-space: pre;">⁠Key=instanceids,Values=instanceID_1,instanceID_2⁠</code>.
Tags are specified using the format <code
style="white-space: pre;">⁠ Key=tag_name,Values=tag_value⁠</code>.</p>
<p>One or more targets must be specified for maintenance window Run
Command-type tasks. Depending on the task, targets are optional for
other maintenance window task types (Automation, Lambda, and Step
Functions). For more information about running tasks that don't specify
targets, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
maintenance window tasks without targets</a> in the <em>Amazon Web
Services Systems Manager User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_task_:_TaskArn">TaskArn</code></td>
<td><p>The task ARN to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_ServiceRoleArn">ServiceRoleArn</code></td>
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
<tr class="even">
<td><code
id="ssm_update_maintenance_window_task_:_TaskParameters">TaskParameters</code></td>
<td><p>The parameters to modify.</p>
<p><code>TaskParameters</code> has been deprecated. To specify
parameters to pass to a task when it runs, instead use the
<code>Parameters</code> option in the
<code>TaskInvocationParameters</code> structure. For information about
how Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.</p>
<p>The map has the following format:</p>
<p>Key: string, between 1 and 255 characters</p>
<p>Value: an array of strings, each string is between 1 and 255
characters</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_TaskInvocationParameters">TaskInvocationParameters</code></td>
<td><p>The parameters that the task should use during execution.
Populate only the fields that match the task type. All other fields
should be empty.</p>
<p>When you update a maintenance window task that has options specified
in <code>TaskInvocationParameters</code>, you must provide again all the
<code>TaskInvocationParameters</code> values that you want to retain.
The values you don't specify again are removed. For example, suppose
that when you registered a Run Command task, you specified
<code>TaskInvocationParameters</code> values for <code>Comment</code>,
<code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If
you update the maintenance window task and specify only a different
<code>OutputS3BucketName</code> value, the values for
<code>Comment</code> and <code>NotificationConfig</code> are
removed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_task_:_Priority">Priority</code></td>
<td><p>The new task priority to specify. The lower the number, the
higher the priority. Tasks that have the same priority are scheduled in
parallel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_MaxConcurrency">MaxConcurrency</code></td>
<td><p>The new <code>MaxConcurrency</code> value you want to specify.
<code>MaxConcurrency</code> is the number of targets that are allowed to
run this task, in parallel.</p>
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
id="ssm_update_maintenance_window_task_:_MaxErrors">MaxErrors</code></td>
<td><p>The new <code>MaxErrors</code> value to specify.
<code>MaxErrors</code> is the maximum number of errors that are allowed
before the task stops being scheduled.</p>
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
id="ssm_update_maintenance_window_task_:_LoggingInfo">LoggingInfo</code></td>
<td><p>The new logging location in Amazon S3 to specify.</p>
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
id="ssm_update_maintenance_window_task_:_Name">Name</code></td>
<td><p>The new task name to specify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_Description">Description</code></td>
<td><p>The new task description to specify.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_task_:_Replace">Replace</code></td>
<td><p>If True, then all fields that are required by the
<code>register_task_with_maintenance_window</code> operation are also
required for this API request. Optional fields that aren't specified are
set to null.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_task_:_CutoffBehavior">CutoffBehavior</code></td>
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
id="ssm_update_maintenance_window_task_:_AlarmConfiguration">AlarmConfiguration</code></td>
<td><p>The CloudWatch alarm you want to apply to your maintenance window
task.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
      WindowTaskId = "string",
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

### Request syntax

    svc$update_maintenance_window_task(
      WindowId = "string",
      WindowTaskId = "string",
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
      Replace = TRUE|FALSE,
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
