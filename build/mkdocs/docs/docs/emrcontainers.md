<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon EMR Containers

### Description

Amazon EMR on EKS provides a deployment option for Amazon EMR that
allows you to run open-source big data frameworks on Amazon Elastic
Kubernetes Service (Amazon EKS). With this deployment option, you can
focus on running analytics workloads while Amazon EMR on EKS builds,
configures, and manages containers for open-source applications. For
more information about Amazon EMR on EKS concepts and tasks, see [What
is shared
id="EMR-EKS"/\\](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html).

*Amazon EMR containers* is the API name for Amazon EMR on EKS. The
`emr-containers` prefix is used in the following scenarios:

-   It is the prefix in the CLI commands for Amazon EMR on EKS. For
    example, `⁠aws emr-containers start-job-run⁠`.

-   It is the prefix before IAM policy actions for Amazon EMR on EKS.
    For example, `⁠"Action": [ "emr-containers:StartJobRun"]⁠`. For more
    information, see [Policy actions for Amazon EMR on
    EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

-   It is the prefix used in Amazon EMR on EKS service endpoints. For
    example, `⁠emr-containers.us-east-2.amazonaws.com⁠`. For more
    information, see [Amazon EMR on EKSService
    Endpoints](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints).

### Usage

    emrcontainers(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_:_config">config</code></td>
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

    svc <- emrcontainers(
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
<td style="text-align: left;"><a href="../emrcontainers_cancel_job_run/"> cancel_job_run </a></td>
<td style="text-align: left;">Cancels a job run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_create_job_template/"> create_job_template </a></td>
<td style="text-align: left;">Creates a job template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_create_managed_endpoint/"> create_managed_endpoint </a></td>
<td style="text-align: left;">Creates a managed endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_create_virtual_cluster/"> create_virtual_cluster </a></td>
<td style="text-align: left;">Creates a virtual cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_delete_job_template/"> delete_job_template </a></td>
<td style="text-align: left;">Deletes a job template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_delete_managed_endpoint/"> delete_managed_endpoint </a></td>
<td style="text-align: left;">Deletes a managed endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_delete_virtual_cluster/"> delete_virtual_cluster </a></td>
<td style="text-align: left;">Deletes a virtual cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_describe_job_run/"> describe_job_run </a></td>
<td style="text-align: left;">Displays detailed information about a job
run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_describe_job_template/"> describe_job_template </a></td>
<td style="text-align: left;">Displays detailed information about a
specified job template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_describe_managed_endpoint/"> describe_managed_endpoint </a></td>
<td style="text-align: left;">Displays detailed information about a
managed endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_describe_virtual_cluster/"> describe_virtual_cluster </a></td>
<td style="text-align: left;">Displays detailed information about a
specified virtual cluster</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../emrcontainers_get_managed_endpoint_session_credentials/"> get_managed_endpoint_session_credentials </a></td>
<td style="text-align: left;">Generate a session token to connect to a
managed endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_list_job_runs/"> list_job_runs </a></td>
<td style="text-align: left;">Lists job runs based on a set of
parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_list_job_templates/"> list_job_templates </a></td>
<td style="text-align: left;">Lists job templates based on a set of
parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_list_managed_endpoints/"> list_managed_endpoints </a></td>
<td style="text-align: left;">Lists managed endpoints based on a set of
parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags assigned to the
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_list_virtual_clusters/"> list_virtual_clusters </a></td>
<td style="text-align: left;">Lists information about the specified
virtual cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_start_job_run/"> start_job_run </a></td>
<td style="text-align: left;">Starts a job run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrcontainers_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns tags to resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrcontainers_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from resources</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- emrcontainers()
    svc$cancel_job_run(
      Foo = 123
    )

    ## End(Not run)
