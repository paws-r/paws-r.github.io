<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Lookout for Metrics

### Description

This is the *Amazon Lookout for Metrics API Reference*. For an
introduction to the service with tutorials for getting started, visit
[Amazon Lookout for Metrics Developer
Guide](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/).

### Usage

    lookoutmetrics(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lookoutmetrics_:_config">config</code></td>
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

    svc <- lookoutmetrics(
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
<td style="text-align: left;"><a href="../lookoutmetrics_activate_anomaly_detector/"> activate_anomaly_detector </a></td>
<td style="text-align: left;">Activates an anomaly detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_back_test_anomaly_detector/"> back_test_anomaly_detector </a></td>
<td style="text-align: left;">Runs a backtest for anomaly detection for
the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_create_alert/"> create_alert </a></td>
<td style="text-align: left;">Creates an alert for an anomaly
detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_create_anomaly_detector/"> create_anomaly_detector </a></td>
<td style="text-align: left;">Creates an anomaly detector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_create_metric_set/"> create_metric_set </a></td>
<td style="text-align: left;">Creates a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_deactivate_anomaly_detector/"> deactivate_anomaly_detector </a></td>
<td style="text-align: left;">Deactivates an anomaly detector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_delete_alert/"> delete_alert </a></td>
<td style="text-align: left;">Deletes an alert</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_delete_anomaly_detector/"> delete_anomaly_detector </a></td>
<td style="text-align: left;">Deletes a detector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_describe_alert/"> describe_alert </a></td>
<td style="text-align: left;">Describes an alert</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_describe_anomaly_detection_executions/"> describe_anomaly_detection_executions </a></td>
<td style="text-align: left;">Returns information about the status of
the specified anomaly detection jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_describe_anomaly_detector/"> describe_anomaly_detector </a></td>
<td style="text-align: left;">Describes a detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_describe_metric_set/"> describe_metric_set </a></td>
<td style="text-align: left;">Describes a dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_detect_metric_set_config/"> detect_metric_set_config </a></td>
<td style="text-align: left;">Detects an Amazon S3 dataset's file
format, interval, and offset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_get_anomaly_group/"> get_anomaly_group </a></td>
<td style="text-align: left;">Returns details about a group of anomalous
metrics</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_get_data_quality_metrics/"> get_data_quality_metrics </a></td>
<td style="text-align: left;">Returns details about the requested data
quality metrics</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_get_feedback/"> get_feedback </a></td>
<td style="text-align: left;">Get feedback for an anomaly group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_get_sample_data/"> get_sample_data </a></td>
<td style="text-align: left;">Returns a selection of sample records from
an Amazon S3 datasource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_list_alerts/"> list_alerts </a></td>
<td style="text-align: left;">Lists the alerts attached to a
detector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_list_anomaly_detectors/"> list_anomaly_detectors </a></td>
<td style="text-align: left;">Lists the detectors in the current AWS
Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_list_anomaly_group_related_metrics/"> list_anomaly_group_related_metrics </a></td>
<td style="text-align: left;">Returns a list of measures that are
potential causes or effects of an anomaly group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_list_anomaly_group_summaries/"> list_anomaly_group_summaries </a></td>
<td style="text-align: left;">Returns a list of anomaly groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_list_anomaly_group_time_series/"> list_anomaly_group_time_series </a></td>
<td style="text-align: left;">Gets a list of anomalous metrics for a
measure in an anomaly group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_list_metric_sets/"> list_metric_sets </a></td>
<td style="text-align: left;">Lists the datasets in the current AWS
Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets a list of tags for a detector,
dataset, or alert</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_put_feedback/"> put_feedback </a></td>
<td style="text-align: left;">Add feedback for an anomalous metric</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to a detector, dataset, or
alert</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a detector, dataset, or
alert</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_update_alert/"> update_alert </a></td>
<td style="text-align: left;">Make changes to an existing alert</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutmetrics_update_anomaly_detector/"> update_anomaly_detector </a></td>
<td style="text-align: left;">Updates a detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutmetrics_update_metric_set/"> update_metric_set </a></td>
<td style="text-align: left;">Updates a dataset</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lookoutmetrics()
    svc$activate_anomaly_detector(
      Foo = 123
    )

    ## End(Not run)
