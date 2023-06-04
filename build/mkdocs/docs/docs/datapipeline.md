<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Data Pipeline

### Description

AWS Data Pipeline configures and manages a data-driven workflow called a
pipeline. AWS Data Pipeline handles the details of scheduling and
ensuring that data dependencies are met so that your application can
focus on processing the data.

AWS Data Pipeline provides a JAR implementation of a task runner called
AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides
logic for common data management scenarios, such as performing database
queries and running data analysis using Amazon Elastic MapReduce (Amazon
EMR). You can use AWS Data Pipeline Task Runner as your task runner, or
you can write your own task runner to provide custom data management.

AWS Data Pipeline implements two main sets of functionality. Use the
first set to create a pipeline and define data sources, schedules,
dependencies, and the transforms to be performed on the data. Use the
second set in your task runner application to receive the next task
ready for processing. The logic for performing the task, such as
querying the data, running data analysis, or converting the data from
one format to another, is contained within the task runner. The task
runner performs the task assigned to it by the web service, reporting
progress to the web service as it does so. When the task is done, the
task runner reports the final success or failure of the task to the web
service.

### Usage

    datapipeline(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="datapipeline_:_config">config</code></td>
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

    svc <- datapipeline(
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
<td style="text-align: left;"><a href="../datapipeline_activate_pipeline/"> activate_pipeline </a></td>
<td style="text-align: left;">Validates the specified pipeline and
starts processing pipeline tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds or modifies tags for the specified
pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_create_pipeline/"> create_pipeline </a></td>
<td style="text-align: left;">Creates a new, empty pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_deactivate_pipeline/"> deactivate_pipeline </a></td>
<td style="text-align: left;">Deactivates the specified running
pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_delete_pipeline/"> delete_pipeline </a></td>
<td style="text-align: left;">Deletes a pipeline, its pipeline
definition, and its run history</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_describe_objects/"> describe_objects </a></td>
<td style="text-align: left;">Gets the object definitions for a set of
objects associated with the pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_describe_pipelines/"> describe_pipelines </a></td>
<td style="text-align: left;">Retrieves metadata about one or more
pipelines</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_evaluate_expression/"> evaluate_expression </a></td>
<td style="text-align: left;">Task runners call EvaluateExpression to
evaluate a string in the context of the specified object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_get_pipeline_definition/"> get_pipeline_definition </a></td>
<td style="text-align: left;">Gets the definition of the specified
pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_list_pipelines/"> list_pipelines </a></td>
<td style="text-align: left;">Lists the pipeline identifiers for all
active pipelines that you have permission to access</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_poll_for_task/"> poll_for_task </a></td>
<td style="text-align: left;">Task runners call PollForTask to receive a
task to perform from AWS Data Pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_put_pipeline_definition/"> put_pipeline_definition </a></td>
<td style="text-align: left;">Adds tasks, schedules, and preconditions
to the specified pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_query_objects/"> query_objects </a></td>
<td style="text-align: left;">Queries the specified pipeline for the
names of objects that match the specified set of conditions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes existing tags from the specified
pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_report_task_progress/"> report_task_progress </a></td>
<td style="text-align: left;">Task runners call ReportTaskProgress when
assigned a task to acknowledge that it has the task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_report_task_runner_heartbeat/"> report_task_runner_heartbeat </a></td>
<td style="text-align: left;">Task runners call
ReportTaskRunnerHeartbeat every 15 minutes to indicate that they are
operational</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_set_status/"> set_status </a></td>
<td style="text-align: left;">Requests that the status of the specified
physical or logical pipeline objects be updated in the specified
pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../datapipeline_set_task_status/"> set_task_status </a></td>
<td style="text-align: left;">Task runners call SetTaskStatus to notify
AWS Data Pipeline that a task is completed and provide information about
the final status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../datapipeline_validate_pipeline_definition/"> validate_pipeline_definition </a></td>
<td style="text-align: left;">Validates the specified pipeline
definition to ensure that it is well formed and can be run without
error</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- datapipeline()
    svc$activate_pipeline(
      Foo = 123
    )

    ## End(Not run)
