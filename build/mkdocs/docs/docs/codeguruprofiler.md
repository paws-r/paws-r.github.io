<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CodeGuru Profiler

### Description

This section provides documentation for the Amazon CodeGuru Profiler API
operations.

Amazon CodeGuru Profiler collects runtime performance data from your
live applications, and provides recommendations that can help you
fine-tune your application performance. Using machine learning
algorithms, CodeGuru Profiler can help you find your most expensive
lines of code and suggest ways you can improve efficiency and remove CPU
bottlenecks.

Amazon CodeGuru Profiler provides different visualizations of profiling
data to help you identify what code is running on the CPU, see how much
time is consumed, and suggest ways to reduce CPU utilization.

Amazon CodeGuru Profiler currently supports applications written in all
Java virtual machine (JVM) languages and Python. While CodeGuru Profiler
supports both visualizations and recommendations for applications
written in Java, it can also generate visualizations and a subset of
recommendations for applications written in other JVM languages and
Python.

For more information, see [What is Amazon CodeGuru
Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html)
in the *Amazon CodeGuru Profiler User Guide*.

### Usage

    codeguruprofiler(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeguruprofiler_:_config">config</code></td>
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

    svc <- codeguruprofiler(
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
<td style="text-align: left;"><a href="../codeguruprofiler_add_notification_channels/"> add_notification_channels </a></td>
<td style="text-align: left;">Add up to 2 anomaly notifications channels
for a profiling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_batch_get_frame_metric_data/"> batch_get_frame_metric_data </a></td>
<td style="text-align: left;">Returns the time series of values for a
requested list of frame metrics from a time period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_configure_agent/"> configure_agent </a></td>
<td style="text-align: left;">Used by profiler agents to report their
current state and to receive remote configuration updates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_create_profiling_group/"> create_profiling_group </a></td>
<td style="text-align: left;">Creates a profiling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_delete_profiling_group/"> delete_profiling_group </a></td>
<td style="text-align: left;">Deletes a profiling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_describe_profiling_group/"> describe_profiling_group </a></td>
<td style="text-align: left;">Returns a ProfilingGroupDescription object
that contains information about the requested profiling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_get_findings_report_account_summary/"> get_findings_report_account_summary </a></td>
<td style="text-align: left;">Returns a list of FindingsReportSummary
objects that contain analysis results for all profiling groups in your
AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_get_notification_configuration/"> get_notification_configuration </a></td>
<td style="text-align: left;">Get the current configuration for anomaly
notifications for a profiling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_get_policy/"> get_policy </a></td>
<td style="text-align: left;">Returns the JSON-formatted resource-based
policy on a profiling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_get_profile/"> get_profile </a></td>
<td style="text-align: left;">Gets the aggregated profile of a profiling
group for a specified time range</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_get_recommendations/"> get_recommendations </a></td>
<td style="text-align: left;">Returns a list of Recommendation objects
that contain recommendations for a profiling group for a given time
period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_list_findings_reports/"> list_findings_reports </a></td>
<td style="text-align: left;">List the available reports for a given
profiling group and time range</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_list_profile_times/"> list_profile_times </a></td>
<td style="text-align: left;">Lists the start times of the available
aggregated profiles of a profiling group for an aggregation period
within the specified time range</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_list_profiling_groups/"> list_profiling_groups </a></td>
<td style="text-align: left;">Returns a list of profiling groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of the tags that are
assigned to a specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_post_agent_profile/"> post_agent_profile </a></td>
<td style="text-align: left;">Submits profiling data to an aggregated
profile of a profiling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_put_permission/"> put_permission </a></td>
<td style="text-align: left;">Adds permissions to a profiling group's
resource-based policy that are provided using an action group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_remove_notification_channel/"> remove_notification_channel </a></td>
<td style="text-align: left;">Remove one anomaly notifications channel
for a profiling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_remove_permission/"> remove_permission </a></td>
<td style="text-align: left;">Removes permissions from a profiling
group's resource-based policy that are provided using an action
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_submit_feedback/"> submit_feedback </a></td>
<td style="text-align: left;">Sends feedback to CodeGuru Profiler about
whether the anomaly detected by the analysis is useful or not</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Use to assign one or more tags to a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeguruprofiler_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Use to remove one or more tags from a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeguruprofiler_update_profiling_group/"> update_profiling_group </a></td>
<td style="text-align: left;">Updates a profiling group</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codeguruprofiler()
    svc$add_notification_channels(
      Foo = 123
    )

    ## End(Not run)
