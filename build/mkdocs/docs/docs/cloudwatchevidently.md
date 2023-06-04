<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudWatch Evidently

### Description

You can use Amazon CloudWatch Evidently to safely validate new features
by serving them to a specified percentage of your users while you roll
out the feature. You can monitor the performance of the new feature to
help you decide when to ramp up traffic to your users. This helps you
reduce risk and identify unintended consequences before you fully launch
the feature.

You can also conduct A/B experiments to make feature design decisions
based on evidence and data. An experiment can test as many as five
variations at once. Evidently collects experiment data and analyzes it
using statistical methods. It also provides clear recommendations about
which variations perform better. You can test both user-facing features
and backend features.

### Usage

    cloudwatchevidently(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevidently_:_config">config</code></td>
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

    svc <- cloudwatchevidently(
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
<td style="text-align: left;"><a href="../cloudwatchevidently_batch_evaluate_feature/"> batch_evaluate_feature </a></td>
<td style="text-align: left;">This operation assigns feature variation
to user sessions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_create_experiment/"> create_experiment </a></td>
<td style="text-align: left;">Creates an Evidently experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_create_feature/"> create_feature </a></td>
<td style="text-align: left;">Creates an Evidently feature that you want
to launch or test</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_create_launch/"> create_launch </a></td>
<td style="text-align: left;">Creates a launch of a given feature</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_create_project/"> create_project </a></td>
<td style="text-align: left;">Creates a project, which is the logical
object in Evidently that can contain features, launches, and
experiments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_create_segment/"> create_segment </a></td>
<td style="text-align: left;">Use this operation to define a segment of
your audience</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_delete_experiment/"> delete_experiment </a></td>
<td style="text-align: left;">Deletes an Evidently experiment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_delete_feature/"> delete_feature </a></td>
<td style="text-align: left;">Deletes an Evidently feature</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_delete_launch/"> delete_launch </a></td>
<td style="text-align: left;">Deletes an Evidently launch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_delete_project/"> delete_project </a></td>
<td style="text-align: left;">Deletes an Evidently project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_delete_segment/"> delete_segment </a></td>
<td style="text-align: left;">Deletes a segment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_evaluate_feature/"> evaluate_feature </a></td>
<td style="text-align: left;">This operation assigns a feature variation
to one given user session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_get_experiment/"> get_experiment </a></td>
<td style="text-align: left;">Returns the details about one
experiment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_get_experiment_results/"> get_experiment_results </a></td>
<td style="text-align: left;">Retrieves the results of a running or
completed experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_get_feature/"> get_feature </a></td>
<td style="text-align: left;">Returns the details about one feature</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_get_launch/"> get_launch </a></td>
<td style="text-align: left;">Returns the details about one launch</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_get_project/"> get_project </a></td>
<td style="text-align: left;">Returns the details about one launch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_get_segment/"> get_segment </a></td>
<td style="text-align: left;">Returns information about the specified
segment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_experiments/"> list_experiments </a></td>
<td style="text-align: left;">Returns configuration details about all
the experiments in the specified project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_features/"> list_features </a></td>
<td style="text-align: left;">Returns configuration details about all
the features in the specified project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_launches/"> list_launches </a></td>
<td style="text-align: left;">Returns configuration details about all
the launches in the specified project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_projects/"> list_projects </a></td>
<td style="text-align: left;">Returns configuration details about all
the projects in the current Region in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_segment_references/"> list_segment_references </a></td>
<td style="text-align: left;">Use this operation to find which
experiments or launches are using a specified segment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_segments/"> list_segments </a></td>
<td style="text-align: left;">Returns a list of audience segments that
you have created in your account in this Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with an
Evidently resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_put_project_events/"> put_project_events </a></td>
<td style="text-align: left;">Sends performance events to Evidently</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_start_experiment/"> start_experiment </a></td>
<td style="text-align: left;">Starts an existing experiment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_start_launch/"> start_launch </a></td>
<td style="text-align: left;">Starts an existing launch</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_stop_experiment/"> stop_experiment </a></td>
<td style="text-align: left;">Stops an experiment that is currently
running</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_stop_launch/"> stop_launch </a></td>
<td style="text-align: left;">Stops a launch that is currently
running</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified CloudWatch Evidently resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_test_segment_pattern/"> test_segment_pattern </a></td>
<td style="text-align: left;">Use this operation to test a rules pattern
that you plan to use to create an audience segment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_update_experiment/"> update_experiment </a></td>
<td style="text-align: left;">Updates an Evidently experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_update_feature/"> update_feature </a></td>
<td style="text-align: left;">Updates an existing feature</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_update_launch/"> update_launch </a></td>
<td style="text-align: left;">Updates a launch of a given feature</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchevidently_update_project/"> update_project </a></td>
<td style="text-align: left;">Updates the description of an existing
project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchevidently_update_project_data_delivery/"> update_project_data_delivery </a></td>
<td style="text-align: left;">Updates the data storage options for this
project</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudwatchevidently()
    svc$batch_evaluate_feature(
      Foo = 123
    )

    ## End(Not run)
