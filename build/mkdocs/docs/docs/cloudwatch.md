<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudWatch

### Description

Amazon CloudWatch monitors your Amazon Web Services (Amazon Web
Services) resources and the applications you run on Amazon Web Services
in real time. You can use CloudWatch to collect and track metrics, which
are the variables you want to measure for your resources and
applications.

CloudWatch alarms send notifications or automatically change the
resources you are monitoring based on rules that you define. For
example, you can monitor the CPU usage and disk reads and writes of your
Amazon EC2 instances. Then, use this data to determine whether you
should launch additional instances to handle increased load. You can
also use this data to stop under-used instances to save money.

In addition to monitoring the built-in metrics that come with Amazon Web
Services, you can monitor your own custom metrics. With CloudWatch, you
gain system-wide visibility into resource utilization, application
performance, and operational health.

### Usage

    cloudwatch(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatch_:_config">config</code></td>
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

    svc <- cloudwatch(
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
<td style="text-align: left;"><a href="../cloudwatch_delete_alarms/"> delete_alarms </a></td>
<td style="text-align: left;">Deletes the specified alarms</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_delete_anomaly_detector/"> delete_anomaly_detector </a></td>
<td style="text-align: left;">Deletes the specified anomaly detection
model from your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_delete_dashboards/"> delete_dashboards </a></td>
<td style="text-align: left;">Deletes all dashboards that you
specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_delete_insight_rules/"> delete_insight_rules </a></td>
<td style="text-align: left;">Permanently deletes the specified
Contributor Insights rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_delete_metric_stream/"> delete_metric_stream </a></td>
<td style="text-align: left;">Permanently deletes the metric stream that
you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_describe_alarm_history/"> describe_alarm_history </a></td>
<td style="text-align: left;">Retrieves the history for the specified
alarm</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_describe_alarms/"> describe_alarms </a></td>
<td style="text-align: left;">Retrieves the specified alarms</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_describe_alarms_for_metric/"> describe_alarms_for_metric </a></td>
<td style="text-align: left;">Retrieves the alarms for the specified
metric</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_describe_anomaly_detectors/"> describe_anomaly_detectors </a></td>
<td style="text-align: left;">Lists the anomaly detection models that
you have created in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_describe_insight_rules/"> describe_insight_rules </a></td>
<td style="text-align: left;">Returns a list of all the Contributor
Insights rules in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_disable_alarm_actions/"> disable_alarm_actions </a></td>
<td style="text-align: left;">Disables the actions for the specified
alarms</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_disable_insight_rules/"> disable_insight_rules </a></td>
<td style="text-align: left;">Disables the specified Contributor
Insights rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_enable_alarm_actions/"> enable_alarm_actions </a></td>
<td style="text-align: left;">Enables the actions for the specified
alarms</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_enable_insight_rules/"> enable_insight_rules </a></td>
<td style="text-align: left;">Enables the specified Contributor Insights
rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_get_dashboard/"> get_dashboard </a></td>
<td style="text-align: left;">Displays the details of the dashboard that
you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_get_insight_rule_report/"> get_insight_rule_report </a></td>
<td style="text-align: left;">This operation returns the time series
data collected by a Contributor Insights rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_get_metric_data/"> get_metric_data </a></td>
<td style="text-align: left;">You can use the GetMetricData API to
retrieve CloudWatch metric values</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_get_metric_statistics/"> get_metric_statistics </a></td>
<td style="text-align: left;">Gets statistics for the specified
metric</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_get_metric_stream/"> get_metric_stream </a></td>
<td style="text-align: left;">Returns information about the metric
stream that you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_get_metric_widget_image/"> get_metric_widget_image </a></td>
<td style="text-align: left;">You can use the GetMetricWidgetImage API
to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as
a bitmap image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_list_dashboards/"> list_dashboards </a></td>
<td style="text-align: left;">Returns a list of the dashboards for your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_list_managed_insight_rules/"> list_managed_insight_rules </a></td>
<td style="text-align: left;">Returns a list that contains the number of
managed Contributor Insights rules in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_list_metrics/"> list_metrics </a></td>
<td style="text-align: left;">List the specified metrics</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_list_metric_streams/"> list_metric_streams </a></td>
<td style="text-align: left;">Returns a list of metric streams in this
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with a
CloudWatch resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_put_anomaly_detector/"> put_anomaly_detector </a></td>
<td style="text-align: left;">Creates an anomaly detection model for a
CloudWatch metric</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_put_composite_alarm/"> put_composite_alarm </a></td>
<td style="text-align: left;">Creates or updates a composite alarm</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_put_dashboard/"> put_dashboard </a></td>
<td style="text-align: left;">Creates a dashboard if it does not already
exist, or updates an existing dashboard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_put_insight_rule/"> put_insight_rule </a></td>
<td style="text-align: left;">Creates a Contributor Insights rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_put_managed_insight_rules/"> put_managed_insight_rules </a></td>
<td style="text-align: left;">Creates a managed Contributor Insights
rule for a specified Amazon Web Services resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_put_metric_alarm/"> put_metric_alarm </a></td>
<td style="text-align: left;">Creates or updates an alarm and associates
it with the specified metric, metric math expression, anomaly detection
model, or Metrics Insights query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_put_metric_data/"> put_metric_data </a></td>
<td style="text-align: left;">Publishes metric data points to Amazon
CloudWatch</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_put_metric_stream/"> put_metric_stream </a></td>
<td style="text-align: left;">Creates or updates a metric stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_set_alarm_state/"> set_alarm_state </a></td>
<td style="text-align: left;">Temporarily sets the state of an alarm for
testing purposes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_start_metric_streams/"> start_metric_streams </a></td>
<td style="text-align: left;">Starts the streaming of metrics for one or
more of your metric streams</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_stop_metric_streams/"> stop_metric_streams </a></td>
<td style="text-align: left;">Stops the streaming of metrics for one or
more of your metric streams</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatch_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified CloudWatch resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatch_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudwatch()
    svc$delete_alarms(
      Foo = 123
    )

    ## End(Not run)
