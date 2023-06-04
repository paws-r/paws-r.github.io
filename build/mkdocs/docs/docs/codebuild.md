<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodeBuild

### Description

CodeBuild

CodeBuild is a fully managed build service in the cloud. CodeBuild
compiles your source code, runs unit tests, and produces artifacts that
are ready to deploy. CodeBuild eliminates the need to provision, manage,
and scale your own build servers. It provides prepackaged build
environments for the most popular programming languages and build tools,
such as Apache Maven, Gradle, and more. You can also fully customize
build environments in CodeBuild to use your own build tools. CodeBuild
scales automatically to meet peak build requests. You pay only for the
build time you consume. For more information about CodeBuild, see the
*<span href="https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html">CodeBuild
User Guide</span>.*

### Usage

    codebuild(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_:_config">config</code></td>
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

    svc <- codebuild(
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
<td style="text-align: left;"><a href="../codebuild_batch_delete_builds/"> batch_delete_builds </a></td>
<td style="text-align: left;">Deletes one or more builds</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_batch_get_build_batches/"> batch_get_build_batches </a></td>
<td style="text-align: left;">Retrieves information about one or more
batch builds</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_batch_get_builds/"> batch_get_builds </a></td>
<td style="text-align: left;">Gets information about one or more
builds</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_batch_get_projects/"> batch_get_projects </a></td>
<td style="text-align: left;">Gets information about one or more build
projects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_batch_get_report_groups/"> batch_get_report_groups </a></td>
<td style="text-align: left;">Returns an array of report groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_batch_get_reports/"> batch_get_reports </a></td>
<td style="text-align: left;">Returns an array of reports</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_create_project/"> create_project </a></td>
<td style="text-align: left;">Creates a build project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_create_report_group/"> create_report_group </a></td>
<td style="text-align: left;">Creates a report group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_create_webhook/"> create_webhook </a></td>
<td style="text-align: left;">For an existing CodeBuild build project
that has its source code stored in a GitHub or Bitbucket repository,
enables CodeBuild to start rebuilding the source code every time a code
change is pushed to the repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_delete_build_batch/"> delete_build_batch </a></td>
<td style="text-align: left;">Deletes a batch build</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_delete_project/"> delete_project </a></td>
<td style="text-align: left;">Deletes a build project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_delete_report/"> delete_report </a></td>
<td style="text-align: left;">Deletes a report</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_delete_report_group/"> delete_report_group </a></td>
<td style="text-align: left;">Deletes a report group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource policy that is
identified by its resource ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_delete_source_credentials/"> delete_source_credentials </a></td>
<td style="text-align: left;">Deletes a set of GitHub, GitHub
Enterprise, or Bitbucket source credentials</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_delete_webhook/"> delete_webhook </a></td>
<td style="text-align: left;">For an existing CodeBuild build project
that has its source code stored in a GitHub or Bitbucket repository,
stops CodeBuild from rebuilding the source code every time a code change
is pushed to the repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_describe_code_coverages/"> describe_code_coverages </a></td>
<td style="text-align: left;">Retrieves one or more code coverage
reports</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_describe_test_cases/"> describe_test_cases </a></td>
<td style="text-align: left;">Returns a list of details about test cases
for a report</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_get_report_group_trend/"> get_report_group_trend </a></td>
<td style="text-align: left;">Analyzes and accumulates test report
values for the specified test reports</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Gets a resource policy that is identified
by its resource ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_import_source_credentials/"> import_source_credentials </a></td>
<td style="text-align: left;">Imports the source repository credentials
for an CodeBuild project that has its source code stored in a GitHub,
GitHub Enterprise, or Bitbucket repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_invalidate_project_cache/"> invalidate_project_cache </a></td>
<td style="text-align: left;">Resets the cache for a project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_list_build_batches/"> list_build_batches </a></td>
<td style="text-align: left;">Retrieves the identifiers of your build
batches in the current region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_list_build_batches_for_project/"> list_build_batches_for_project </a></td>
<td style="text-align: left;">Retrieves the identifiers of the build
batches for a specific project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_list_builds/"> list_builds </a></td>
<td style="text-align: left;">Gets a list of build IDs, with each build
ID representing a single build</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_list_builds_for_project/"> list_builds_for_project </a></td>
<td style="text-align: left;">Gets a list of build identifiers for the
specified build project, with each build identifier representing a
single build</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_list_curated_environment_images/"> list_curated_environment_images </a></td>
<td style="text-align: left;">Gets information about Docker images that
are managed by CodeBuild</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_list_projects/"> list_projects </a></td>
<td style="text-align: left;">Gets a list of build project names, with
each build project name representing a single build project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_list_report_groups/"> list_report_groups </a></td>
<td style="text-align: left;">Gets a list ARNs for the report groups in
the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_list_reports/"> list_reports </a></td>
<td style="text-align: left;">Returns a list of ARNs for the reports in
the current Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_list_reports_for_report_group/"> list_reports_for_report_group </a></td>
<td style="text-align: left;">Returns a list of ARNs for the reports
that belong to a ReportGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_list_shared_projects/"> list_shared_projects </a></td>
<td style="text-align: left;">Gets a list of projects that are shared
with other Amazon Web Services accounts or users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_list_shared_report_groups/"> list_shared_report_groups </a></td>
<td style="text-align: left;">Gets a list of report groups that are
shared with other Amazon Web Services accounts or users</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_list_source_credentials/"> list_source_credentials </a></td>
<td style="text-align: left;">Returns a list of SourceCredentialsInfo
objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Stores a resource policy for the ARN of a
Project or ReportGroup object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_retry_build/"> retry_build </a></td>
<td style="text-align: left;">Restarts a build</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_retry_build_batch/"> retry_build_batch </a></td>
<td style="text-align: left;">Restarts a failed batch build</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_start_build/"> start_build </a></td>
<td style="text-align: left;">Starts running a build</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_start_build_batch/"> start_build_batch </a></td>
<td style="text-align: left;">Starts a batch build for a project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_stop_build/"> stop_build </a></td>
<td style="text-align: left;">Attempts to stop running a build</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_stop_build_batch/"> stop_build_batch </a></td>
<td style="text-align: left;">Stops a running batch build</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_update_project/"> update_project </a></td>
<td style="text-align: left;">Changes the settings of a build
project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_update_project_visibility/"> update_project_visibility </a></td>
<td style="text-align: left;">Changes the public visibility for a
project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codebuild_update_report_group/"> update_report_group </a></td>
<td style="text-align: left;">Updates a report group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codebuild_update_webhook/"> update_webhook </a></td>
<td style="text-align: left;">Updates the webhook associated with an
CodeBuild build project</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codebuild()
    svc$batch_delete_builds(
      Foo = 123
    )

    ## End(Not run)
