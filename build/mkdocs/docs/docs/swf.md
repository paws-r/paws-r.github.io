<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Simple Workflow Service

### Description

The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
applications that use Amazon's cloud to coordinate work across
distributed components. In Amazon SWF, a *task* represents a logical
unit of work that is performed by a component of your workflow.
Coordinating tasks in a workflow involves managing intertask
dependencies, scheduling, and concurrency in accordance with the logical
flow of the application.

Amazon SWF gives you full control over implementing tasks and
coordinating them without worrying about underlying complexities such as
tracking their progress and maintaining their state.

This documentation serves as reference only. For a broader overview of
the Amazon SWF programming model, see the
*<span href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon
SWF Developer Guide</span>* .

### Usage

    swf(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- swf(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_count_closed_workflow_executions/"> count_closed_workflow_executions </a></td>
<td style="text-align: left;">Returns the number of closed workflow
executions within the given domain that meet the specified filtering
criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_count_open_workflow_executions/"> count_open_workflow_executions </a></td>
<td style="text-align: left;">Returns the number of open workflow
executions within the given domain that meet the specified filtering
criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_count_pending_activity_tasks/"> count_pending_activity_tasks </a></td>
<td style="text-align: left;">Returns the estimated number of activity
tasks in the specified task list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_count_pending_decision_tasks/"> count_pending_decision_tasks </a></td>
<td style="text-align: left;">Returns the estimated number of decision
tasks in the specified task list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_deprecate_activity_type/"> deprecate_activity_type </a></td>
<td style="text-align: left;">Deprecates the specified activity
type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_deprecate_domain/"> deprecate_domain </a></td>
<td style="text-align: left;">Deprecates the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_deprecate_workflow_type/"> deprecate_workflow_type </a></td>
<td style="text-align: left;">Deprecates the specified workflow
type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_describe_activity_type/"> describe_activity_type </a></td>
<td style="text-align: left;">Returns information about the specified
activity type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_describe_domain/"> describe_domain </a></td>
<td style="text-align: left;">Returns information about the specified
domain, including description and status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_describe_workflow_execution/"> describe_workflow_execution </a></td>
<td style="text-align: left;">Returns information about the specified
workflow execution including its type and some statistics</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_describe_workflow_type/"> describe_workflow_type </a></td>
<td style="text-align: left;">Returns information about the specified
workflow type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_get_workflow_execution_history/"> get_workflow_execution_history </a></td>
<td style="text-align: left;">Returns the history of the specified
workflow execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_list_activity_types/"> list_activity_types </a></td>
<td style="text-align: left;">Returns information about all activities
registered in the specified domain that match the specified name and
registration status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_list_closed_workflow_executions/"> list_closed_workflow_executions </a></td>
<td style="text-align: left;">Returns a list of closed workflow
executions in the specified domain that meet the filtering criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_list_domains/"> list_domains </a></td>
<td style="text-align: left;">Returns the list of domains registered in
the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_list_open_workflow_executions/"> list_open_workflow_executions </a></td>
<td style="text-align: left;">Returns a list of open workflow executions
in the specified domain that meet the filtering criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List tags for a given domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_list_workflow_types/"> list_workflow_types </a></td>
<td style="text-align: left;">Returns information about workflow types
in the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_poll_for_activity_task/"> poll_for_activity_task </a></td>
<td style="text-align: left;">Used by workers to get an ActivityTask
from the specified activity taskList</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_poll_for_decision_task/"> poll_for_decision_task </a></td>
<td style="text-align: left;">Used by deciders to get a DecisionTask
from the specified decision taskList</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_record_activity_task_heartbeat/"> record_activity_task_heartbeat </a></td>
<td style="text-align: left;">Used by activity workers to report to the
service that the ActivityTask represented by the specified taskToken is
still making progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_register_activity_type/"> register_activity_type </a></td>
<td style="text-align: left;">Registers a new activity type along with
its configuration settings in the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_register_domain/"> register_domain </a></td>
<td style="text-align: left;">Registers a new domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_register_workflow_type/"> register_workflow_type </a></td>
<td style="text-align: left;">Registers a new workflow type and its
configuration settings in the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_request_cancel_workflow_execution/"> request_cancel_workflow_execution </a></td>
<td style="text-align: left;">Records a WorkflowExecutionCancelRequested
event in the currently running workflow execution identified by the
given domain, workflowId, and runId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_respond_activity_task_canceled/"> respond_activity_task_canceled </a></td>
<td style="text-align: left;">Used by workers to tell the service that
the ActivityTask identified by the taskToken was successfully
canceled</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_respond_activity_task_completed/"> respond_activity_task_completed </a></td>
<td style="text-align: left;">Used by workers to tell the service that
the ActivityTask identified by the taskToken completed successfully with
a result (if provided)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_respond_activity_task_failed/"> respond_activity_task_failed </a></td>
<td style="text-align: left;">Used by workers to tell the service that
the ActivityTask identified by the taskToken has failed with reason (if
specified)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_respond_decision_task_completed/"> respond_decision_task_completed </a></td>
<td style="text-align: left;">Used by deciders to tell the service that
the DecisionTask identified by the taskToken has successfully
completed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_signal_workflow_execution/"> signal_workflow_execution </a></td>
<td style="text-align: left;">Records a WorkflowExecutionSignaled event
in the workflow execution history and creates a decision task for the
workflow execution identified by the given domain, workflowId and
runId</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_start_workflow_execution/"> start_workflow_execution </a></td>
<td style="text-align: left;">Starts an execution of the workflow type
in the specified domain using the provided workflowId and input
data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add a tag to a Amazon SWF domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_terminate_workflow_execution/"> terminate_workflow_execution </a></td>
<td style="text-align: left;">Records a WorkflowExecutionTerminated
event and forces closure of the workflow execution identified by the
given domain, runId, and workflowId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_undeprecate_activity_type/"> undeprecate_activity_type </a></td>
<td style="text-align: left;">Undeprecates a previously deprecated
activity type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_undeprecate_domain/"> undeprecate_domain </a></td>
<td style="text-align: left;">Undeprecates a previously deprecated
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../swf_undeprecate_workflow_type/"> undeprecate_workflow_type </a></td>
<td style="text-align: left;">Undeprecates a previously deprecated
workflow type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../swf_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove a tag from a Amazon SWF domain</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- swf()
    svc$count_closed_workflow_executions(
      Foo = 123
    )

    ## End(Not run)
