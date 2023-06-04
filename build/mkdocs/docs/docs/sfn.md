<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Step Functions

### Description

Step Functions

Step Functions is a service that lets you coordinate the components of
distributed applications and microservices using visual workflows.

You can use Step Functions to build applications from individual
components, each of which performs a discrete function, or *task*,
allowing you to scale and change applications quickly. Step Functions
provides a console that helps visualize the components of your
application as a series of steps. Step Functions automatically triggers
and tracks each step, and retries steps when there are errors, so your
application executes predictably and in the right order every time. Step
Functions logs the state of each step, so you can quickly diagnose and
debug any issues.

Step Functions manages operations and underlying infrastructure to
ensure your application is available at any scale. You can run tasks on
Amazon Web Services, your own servers, or any system that has access to
Amazon Web Services. You can access and use Step Functions using the
console, the Amazon Web Services SDKs, or an HTTP API. For more
information about Step Functions, see the
*<span href="https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">Step
Functions Developer Guide</span>* .

### Usage

    sfn(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_:_config">config</code></td>
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

    svc <- sfn(
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
<td style="text-align: left;"><a href="../sfn_create_activity/"> create_activity </a></td>
<td style="text-align: left;">Creates an activity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_create_state_machine/"> create_state_machine </a></td>
<td style="text-align: left;">Creates a state machine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_delete_activity/"> delete_activity </a></td>
<td style="text-align: left;">Deletes an activity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_delete_state_machine/"> delete_state_machine </a></td>
<td style="text-align: left;">Deletes a state machine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_describe_activity/"> describe_activity </a></td>
<td style="text-align: left;">Describes an activity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_describe_execution/"> describe_execution </a></td>
<td style="text-align: left;">Provides all information about a state
machine execution, such as the state machine associated with the
execution, the execution input and output, and relevant execution
metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_describe_map_run/"> describe_map_run </a></td>
<td style="text-align: left;">Provides information about a Map Run's
configuration, progress, and results</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_describe_state_machine/"> describe_state_machine </a></td>
<td style="text-align: left;">Provides information about a state
machine's definition, its IAM role Amazon Resource Name (ARN), and
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_describe_state_machine_for_execution/"> describe_state_machine_for_execution </a></td>
<td style="text-align: left;">Provides information about a state
machine's definition, its execution role ARN, and configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_get_activity_task/"> get_activity_task </a></td>
<td style="text-align: left;">Used by workers to retrieve a task (with
the specified activity ARN) which has been scheduled for execution by a
running state machine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_get_execution_history/"> get_execution_history </a></td>
<td style="text-align: left;">Returns the history of the specified
execution as a list of events</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_list_activities/"> list_activities </a></td>
<td style="text-align: left;">Lists the existing activities</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_list_executions/"> list_executions </a></td>
<td style="text-align: left;">Lists all executions of a state machine or
a Map Run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_list_map_runs/"> list_map_runs </a></td>
<td style="text-align: left;">Lists all Map Runs that were started by a
given state machine execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_list_state_machines/"> list_state_machines </a></td>
<td style="text-align: left;">Lists the existing state machines</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List tags for a given resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_send_task_failure/"> send_task_failure </a></td>
<td style="text-align: left;">Used by activity workers and task states
using the callback pattern to report that the task identified by the
taskToken failed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_send_task_heartbeat/"> send_task_heartbeat </a></td>
<td style="text-align: left;">Used by activity workers and task states
using the callback pattern to report to Step Functions that the task
represented by the specified taskToken is still making progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_send_task_success/"> send_task_success </a></td>
<td style="text-align: left;">Used by activity workers and task states
using the callback pattern to report that the task identified by the
taskToken completed successfully</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_start_execution/"> start_execution </a></td>
<td style="text-align: left;">Starts a state machine execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_start_sync_execution/"> start_sync_execution </a></td>
<td style="text-align: left;">Starts a Synchronous Express state machine
execution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_stop_execution/"> stop_execution </a></td>
<td style="text-align: left;">Stops an execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add a tag to a Step Functions
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove a tag from a Step Functions
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sfn_update_map_run/"> update_map_run </a></td>
<td style="text-align: left;">Updates an in-progress Map Run's
configuration to include changes to the settings that control maximum
concurrency and Map Run failure</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sfn_update_state_machine/"> update_state_machine </a></td>
<td style="text-align: left;">Updates an existing state machine by
modifying its definition, roleArn, or loggingConfiguration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sfn()
    svc$create_activity(
      Foo = 123
    )

    ## End(Not run)
