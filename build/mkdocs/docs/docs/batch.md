<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Batch

### Description

Batch

Using Batch, you can run batch computing workloads on the Amazon Web
Services Cloud. Batch computing is a common means for developers,
scientists, and engineers to access large amounts of compute resources.
Batch uses the advantages of the batch computing to remove the
undifferentiated heavy lifting of configuring and managing required
infrastructure. At the same time, it also adopts a familiar batch
computing software approach. You can use Batch to efficiently provision
resources d, and work toward eliminating capacity constraints, reducing
your overall compute costs, and delivering results more quickly.

As a fully managed service, Batch can run batch computing workloads of
any scale. Batch automatically provisions compute resources and
optimizes workload distribution based on the quantity and scale of your
specific workloads. With Batch, there's no need to install or manage
batch computing software. This means that you can focus on analyzing
results and solving your specific problems instead.

### Usage

    batch(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_:_config">config</code></td>
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

    svc <- batch(
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
<td style="text-align: left;"><a href="../batch_cancel_job/"> cancel_job </a></td>
<td style="text-align: left;">Cancels a job in an Batch job queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_create_compute_environment/"> create_compute_environment </a></td>
<td style="text-align: left;">Creates an Batch compute environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_create_job_queue/"> create_job_queue </a></td>
<td style="text-align: left;">Creates an Batch job queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_create_scheduling_policy/"> create_scheduling_policy </a></td>
<td style="text-align: left;">Creates an Batch scheduling policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_delete_compute_environment/"> delete_compute_environment </a></td>
<td style="text-align: left;">Deletes an Batch compute environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_delete_job_queue/"> delete_job_queue </a></td>
<td style="text-align: left;">Deletes the specified job queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_delete_scheduling_policy/"> delete_scheduling_policy </a></td>
<td style="text-align: left;">Deletes the specified scheduling
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_deregister_job_definition/"> deregister_job_definition </a></td>
<td style="text-align: left;">Deregisters an Batch job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_describe_compute_environments/"> describe_compute_environments </a></td>
<td style="text-align: left;">Describes one or more of your compute
environments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_describe_job_definitions/"> describe_job_definitions </a></td>
<td style="text-align: left;">Describes a list of job definitions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_describe_job_queues/"> describe_job_queues </a></td>
<td style="text-align: left;">Describes one or more of your job
queues</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_describe_jobs/"> describe_jobs </a></td>
<td style="text-align: left;">Describes a list of Batch jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_describe_scheduling_policies/"> describe_scheduling_policies </a></td>
<td style="text-align: left;">Describes one or more of your scheduling
policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_list_jobs/"> list_jobs </a></td>
<td style="text-align: left;">Returns a list of Batch jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_list_scheduling_policies/"> list_scheduling_policies </a></td>
<td style="text-align: left;">Returns a list of Batch scheduling
policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for an Batch resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_register_job_definition/"> register_job_definition </a></td>
<td style="text-align: left;">Registers an Batch job definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_submit_job/"> submit_job </a></td>
<td style="text-align: left;">Submits an Batch job from a job
definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_terminate_job/"> terminate_job </a></td>
<td style="text-align: left;">Terminates a job in a job queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from an Batch
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_update_compute_environment/"> update_compute_environment </a></td>
<td style="text-align: left;">Updates an Batch compute environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../batch_update_job_queue/"> update_job_queue </a></td>
<td style="text-align: left;">Updates a job queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../batch_update_scheduling_policy/"> update_scheduling_policy </a></td>
<td style="text-align: left;">Updates a scheduling policy</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- batch()
    # This example cancels a job with the specified job ID.
    svc$cancel_job(
      jobId = "1d828f65-7a4d-42e8-996d-3b900ed59dc4",
      reason = "Cancelling job."
    )

    ## End(Not run)
