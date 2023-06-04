<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## EMR Serverless

### Description

Amazon EMR Serverless is a new deployment option for Amazon EMR. EMR
Serverless provides a serverless runtime environment that simplifies
running analytics applications using the latest open source frameworks
such as Apache Spark and Apache Hive. With EMR Serverless, you don’t
have to configure, optimize, secure, or operate clusters to run
applications with these frameworks.

The API reference to Amazon EMR Serverless is `emr-serverless`. The
`emr-serverless` prefix is used in the following scenarios:

-   It is the prefix in the CLI commands for Amazon EMR Serverless. For
    example, `⁠aws emr-serverless start-job-run⁠`.

-   It is the prefix before IAM policy actions for Amazon EMR
    Serverless. For example, `⁠"Action": ["emr-serverless:StartJobRun"]⁠`.
    For more information, see [Policy actions for Amazon EMR
    Serverless](https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

-   It is the prefix used in Amazon EMR Serverless service endpoints.
    For example, `⁠emr-serverless.us-east-2.amazonaws.com⁠`.

### Usage

    emrserverless(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrserverless_:_config">config</code></td>
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

    svc <- emrserverless(
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
<td style="text-align: left;"><a href="../emrserverless_cancel_job_run/"> cancel_job_run </a></td>
<td style="text-align: left;">Cancels a job run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_get_application/"> get_application </a></td>
<td style="text-align: left;">Displays detailed information about a
specified application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_get_dashboard_for_job_run/"> get_dashboard_for_job_run </a></td>
<td style="text-align: left;">Returns a URL to access the job run
dashboard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_get_job_run/"> get_job_run </a></td>
<td style="text-align: left;">Displays detailed information about a job
run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_list_applications/"> list_applications </a></td>
<td style="text-align: left;">Lists applications based on a set of
parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_list_job_runs/"> list_job_runs </a></td>
<td style="text-align: left;">Lists job runs based on a set of
parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags assigned to the
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_start_application/"> start_application </a></td>
<td style="text-align: left;">Starts a specified application and
initializes initial capacity if configured</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_start_job_run/"> start_job_run </a></td>
<td style="text-align: left;">Starts a job run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_stop_application/"> stop_application </a></td>
<td style="text-align: left;">Stops a specified application and releases
initial capacity if configured</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns tags to resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emrserverless_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emrserverless_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates a specified application</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- emrserverless()
    svc$cancel_job_run(
      Foo = 123
    )

    ## End(Not run)
