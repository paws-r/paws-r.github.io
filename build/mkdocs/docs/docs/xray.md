<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS X-Ray

### Description

Amazon Web Services X-Ray provides APIs for managing debug traces and
retrieving service maps and other data created by processing those
traces.

### Usage

    xray(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_:_config">config</code></td>
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

    svc <- xray(
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
<td style="text-align: left;"><a href="../xray_batch_get_traces/"> batch_get_traces </a></td>
<td style="text-align: left;">Retrieves a list of traces specified by
ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a group resource with a name and a
filter expression</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_create_sampling_rule/"> create_sampling_rule </a></td>
<td style="text-align: left;">Creates a rule to control sampling
behavior for instrumented applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Deletes a group resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource policy from the target
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_delete_sampling_rule/"> delete_sampling_rule </a></td>
<td style="text-align: left;">Deletes a sampling rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_encryption_config/"> get_encryption_config </a></td>
<td style="text-align: left;">Retrieves the current encryption
configuration for X-Ray data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_group/"> get_group </a></td>
<td style="text-align: left;">Retrieves group resource details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_groups/"> get_groups </a></td>
<td style="text-align: left;">Retrieves all active group details</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_insight/"> get_insight </a></td>
<td style="text-align: left;">Retrieves the summary information of an
insight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_insight_events/"> get_insight_events </a></td>
<td style="text-align: left;">X-Ray reevaluates insights periodically
until they're resolved, and records each intermediate state as an
event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_insight_impact_graph/"> get_insight_impact_graph </a></td>
<td style="text-align: left;">Retrieves a service graph structure
filtered by the specified insight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_insight_summaries/"> get_insight_summaries </a></td>
<td style="text-align: left;">Retrieves the summaries of all insights in
the specified group matching the provided filter values</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_sampling_rules/"> get_sampling_rules </a></td>
<td style="text-align: left;">Retrieves all sampling rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_sampling_statistic_summaries/"> get_sampling_statistic_summaries </a></td>
<td style="text-align: left;">Retrieves information about recent
sampling results for all sampling rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_sampling_targets/"> get_sampling_targets </a></td>
<td style="text-align: left;">Requests a sampling quota for rules that
the service is using to sample requests</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_service_graph/"> get_service_graph </a></td>
<td style="text-align: left;">Retrieves a document that describes
services that process incoming requests, and downstream services that
they call as a result</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_time_series_service_statistics/"> get_time_series_service_statistics </a></td>
<td style="text-align: left;">Get an aggregation of service statistics
defined by a specific time range</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_get_trace_graph/"> get_trace_graph </a></td>
<td style="text-align: left;">Retrieves a service graph for one or more
specific trace IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_get_trace_summaries/"> get_trace_summaries </a></td>
<td style="text-align: left;">Retrieves IDs and annotations for traces
available for a specified time frame using an optional filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_list_resource_policies/"> list_resource_policies </a></td>
<td style="text-align: left;">Returns the list of resource policies in
the target Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags that are applied to
the specified Amazon Web Services X-Ray group or sampling rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_put_encryption_config/"> put_encryption_config </a></td>
<td style="text-align: left;">Updates the encryption configuration for
X-Ray data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Sets the resource policy to grant one or
more Amazon Web Services services and accounts permissions to access
X-Ray</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_put_telemetry_records/"> put_telemetry_records </a></td>
<td style="text-align: left;">Used by the Amazon Web Services X-Ray
daemon to upload telemetry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_put_trace_segments/"> put_trace_segments </a></td>
<td style="text-align: left;">Uploads segment documents to Amazon Web
Services X-Ray</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Applies tags to an existing Amazon Web
Services X-Ray group or sampling rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from an Amazon Web Services
X-Ray group or sampling rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../xray_update_group/"> update_group </a></td>
<td style="text-align: left;">Updates a group resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../xray_update_sampling_rule/"> update_sampling_rule </a></td>
<td style="text-align: left;">Modifies a sampling rule's
configuration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- xray()
    svc$batch_get_traces(
      Foo = 123
    )

    ## End(Not run)
