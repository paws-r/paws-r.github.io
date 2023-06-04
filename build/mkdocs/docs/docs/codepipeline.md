<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodePipeline

### Description

CodePipeline

**Overview**

This is the CodePipeline API Reference. This guide provides descriptions
of the actions and data types for CodePipeline. Some functionality for
your pipeline can only be configured through the API. For more
information, see the [CodePipeline User
Guide](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

You can use the CodePipeline API to work with pipelines, stages,
actions, and transitions.

*Pipelines* are models of automated release processes. Each pipeline is
uniquely named, and consists of stages, actions, and transitions.

You can work with pipelines by calling:

-   `create_pipeline`, which creates a uniquely named pipeline.

-   `delete_pipeline`, which deletes the specified pipeline.

-   `get_pipeline`, which returns information about the pipeline
    structure and pipeline metadata, including the pipeline Amazon
    Resource Name (ARN).

-   `get_pipeline_execution`, which returns information about a specific
    execution of a pipeline.

-   `get_pipeline_state`, which returns information about the current
    state of the stages and actions of a pipeline.

-   `list_action_executions`, which returns action-level details for
    past executions. The details include full stage and action-level
    details, including individual action duration, status, any errors
    that occurred during the execution, and input and output artifact
    location details.

-   `list_pipelines`, which gets a summary of all of the pipelines
    associated with your account.

-   `list_pipeline_executions`, which gets a summary of the most recent
    executions for a pipeline.

-   `start_pipeline_execution`, which runs the most recent revision of
    an artifact through the pipeline.

-   `stop_pipeline_execution`, which stops the specified pipeline
    execution from continuing through the pipeline.

-   `update_pipeline`, which updates a pipeline with edits or changes to
    the structure of the pipeline.

Pipelines include *stages*. Each stage contains one or more actions that
must complete before the next stage begins. A stage results in success
or failure. If a stage fails, the pipeline stops at that stage and
remains stopped until either a new version of an artifact appears in the
source location, or a user takes action to rerun the most recent
artifact through the pipeline. You can call `get_pipeline_state`, which
displays the status of a pipeline, including the status of stages in the
pipeline, or `get_pipeline`, which returns the entire structure of the
pipeline, including the stages of that pipeline. For more information
about the structure of stages and actions, see [CodePipeline Pipeline
Structure
Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html).

Pipeline stages include *actions* that are categorized into categories
such as source or build actions performed in a stage of a pipeline. For
example, you can use a source action to import artifacts into a pipeline
from a source such as Amazon S3. Like stages, you do not work with
actions directly in most cases, but you do define and interact with
actions when working with pipeline operations such as `create_pipeline`
and `get_pipeline_state`. Valid action categories are:

-   Source

-   Build

-   Test

-   Deploy

-   Approval

-   Invoke

Pipelines also include *transitions*, which allow the transition of
artifacts from one stage to the next in a pipeline after the actions in
one stage complete.

You can work with transitions by calling:

-   `disable_stage_transition`, which prevents artifacts from
    transitioning to the next stage in a pipeline.

-   `enable_stage_transition`, which enables transition of artifacts
    between stages in a pipeline.

**Using the API to integrate with CodePipeline**

For third-party integrators or developers who want to create their own
integrations with CodePipeline, the expected sequence varies from the
standard API user. To integrate with CodePipeline, developers need to
work with the following items:

**Jobs**, which are instances of an action. For example, a job for a
source action might import a revision of an artifact from a source.

You can work with jobs by calling:

-   `acknowledge_job`, which confirms whether a job worker has received
    the specified job.

-   `get_job_details`, which returns the details of a job.

-   `poll_for_jobs`, which determines whether there are any jobs to act
    on.

-   `put_job_failure_result`, which provides details of a job failure.

-   `put_job_success_result`, which provides details of a job success.

**Third party jobs**, which are instances of an action created by a
partner action and integrated into CodePipeline. Partner actions are
created by members of the Amazon Web Services Partner Network.

You can work with third party jobs by calling:

-   `acknowledge_third_party_job`, which confirms whether a job worker
    has received the specified job.

-   `get_third_party_job_details`, which requests the details of a job
    for a partner action.

-   `poll_for_third_party_jobs`, which determines whether there are any
    jobs to act on.

-   `put_third_party_job_failure_result`, which provides details of a
    job failure.

-   `put_third_party_job_success_result`, which provides details of a
    job success.

### Usage

    codepipeline(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codepipeline_:_config">config</code></td>
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

    svc <- codepipeline(
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
<td style="text-align: left;"><a href="../codepipeline_acknowledge_job/"> acknowledge_job </a></td>
<td style="text-align: left;">Returns information about a specified job
and whether that job has been received by the job worker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_acknowledge_third_party_job/"> acknowledge_third_party_job </a></td>
<td style="text-align: left;">Confirms a job worker has received the
specified job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_create_custom_action_type/"> create_custom_action_type </a></td>
<td style="text-align: left;">Creates a new custom action that can be
used in all pipelines associated with the Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_create_pipeline/"> create_pipeline </a></td>
<td style="text-align: left;">Creates a pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_delete_custom_action_type/"> delete_custom_action_type </a></td>
<td style="text-align: left;">Marks a custom action as deleted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_delete_pipeline/"> delete_pipeline </a></td>
<td style="text-align: left;">Deletes the specified pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_delete_webhook/"> delete_webhook </a></td>
<td style="text-align: left;">Deletes a previously created webhook by
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_deregister_webhook_with_third_party/"> deregister_webhook_with_third_party </a></td>
<td style="text-align: left;">Removes the connection between the webhook
that was created by CodePipeline and the external tool with events to be
detected</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_disable_stage_transition/"> disable_stage_transition </a></td>
<td style="text-align: left;">Prevents artifacts in a pipeline from
transitioning to the next stage in the pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_enable_stage_transition/"> enable_stage_transition </a></td>
<td style="text-align: left;">Enables artifacts in a pipeline to
transition to a stage in a pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_get_action_type/"> get_action_type </a></td>
<td style="text-align: left;">Returns information about an action type
created for an external provider, where the action is to be used by
customers of the external provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_get_job_details/"> get_job_details </a></td>
<td style="text-align: left;">Returns information about a job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_get_pipeline/"> get_pipeline </a></td>
<td style="text-align: left;">Returns the metadata, structure, stages,
and actions of a pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_get_pipeline_execution/"> get_pipeline_execution </a></td>
<td style="text-align: left;">Returns information about an execution of
a pipeline, including details about artifacts, the pipeline execution
ID, and the name, version, and status of the pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_get_pipeline_state/"> get_pipeline_state </a></td>
<td style="text-align: left;">Returns information about the state of a
pipeline, including the stages and actions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_get_third_party_job_details/"> get_third_party_job_details </a></td>
<td style="text-align: left;">Requests the details of a job for a third
party action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_list_action_executions/"> list_action_executions </a></td>
<td style="text-align: left;">Lists the action executions that have
occurred in a pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_list_action_types/"> list_action_types </a></td>
<td style="text-align: left;">Gets a summary of all CodePipeline action
types associated with your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_list_pipeline_executions/"> list_pipeline_executions </a></td>
<td style="text-align: left;">Gets a summary of the most recent
executions for a pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_list_pipelines/"> list_pipelines </a></td>
<td style="text-align: left;">Gets a summary of all of the pipelines
associated with your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets the set of key-value pairs (metadata)
that are used to manage the resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_list_webhooks/"> list_webhooks </a></td>
<td style="text-align: left;">Gets a listing of all the webhooks in this
Amazon Web Services Region for this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_poll_for_jobs/"> poll_for_jobs </a></td>
<td style="text-align: left;">Returns information about any jobs for
CodePipeline to act on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_poll_for_third_party_jobs/"> poll_for_third_party_jobs </a></td>
<td style="text-align: left;">Determines whether there are any third
party jobs for a job worker to act on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_put_action_revision/"> put_action_revision </a></td>
<td style="text-align: left;">Provides information to CodePipeline about
new revisions to a source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_put_approval_result/"> put_approval_result </a></td>
<td style="text-align: left;">Provides the response to a manual approval
request to CodePipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_put_job_failure_result/"> put_job_failure_result </a></td>
<td style="text-align: left;">Represents the failure of a job as
returned to the pipeline by a job worker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_put_job_success_result/"> put_job_success_result </a></td>
<td style="text-align: left;">Represents the success of a job as
returned to the pipeline by a job worker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_put_third_party_job_failure_result/"> put_third_party_job_failure_result </a></td>
<td style="text-align: left;">Represents the failure of a third party
job as returned to the pipeline by a job worker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_put_third_party_job_success_result/"> put_third_party_job_success_result </a></td>
<td style="text-align: left;">Represents the success of a third party
job as returned to the pipeline by a job worker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_put_webhook/"> put_webhook </a></td>
<td style="text-align: left;">Defines a webhook and returns a unique
webhook URL generated by CodePipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_register_webhook_with_third_party/"> register_webhook_with_third_party </a></td>
<td style="text-align: left;">Configures a connection between the
webhook that was created and the external tool with events to be
detected</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_retry_stage_execution/"> retry_stage_execution </a></td>
<td style="text-align: left;">Resumes the pipeline execution by retrying
the last failed actions in a stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_start_pipeline_execution/"> start_pipeline_execution </a></td>
<td style="text-align: left;">Starts the specified pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_stop_pipeline_execution/"> stop_pipeline_execution </a></td>
<td style="text-align: left;">Stops the specified pipeline
execution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds to or modifies the tags of the given
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from an Amazon Web Services
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codepipeline_update_action_type/"> update_action_type </a></td>
<td style="text-align: left;">Updates an action type that was created
with any supported integration model, where the action type is to be
used by customers of the action type provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codepipeline_update_pipeline/"> update_pipeline </a></td>
<td style="text-align: left;">Updates a specified pipeline with edits or
changes to its structure</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codepipeline()
    svc$acknowledge_job(
      Foo = 123
    )

    ## End(Not run)
