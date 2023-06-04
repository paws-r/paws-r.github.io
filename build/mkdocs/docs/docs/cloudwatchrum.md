<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## CloudWatch RUM

### Description

With Amazon CloudWatch RUM, you can perform real-user monitoring to
collect client-side data about your web application performance from
actual user sessions in real time. The data collected includes page load
times, client-side errors, and user behavior. When you view this data,
you can see it all aggregated together and also see breakdowns by the
browsers and devices that your customers use.

You can use the collected data to quickly identify and debug client-side
performance issues. CloudWatch RUM helps you visualize anomalies in your
application performance and find relevant debugging data such as error
messages, stack traces, and user sessions. You can also use RUM to
understand the range of end-user impact including the number of users,
geolocations, and browsers used.

### Usage

    cloudwatchrum(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchrum_:_config">config</code></td>
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

    svc <- cloudwatchrum(
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
<td style="text-align: left;"><a href="../cloudwatchrum_batch_create_rum_metric_definitions/"> batch_create_rum_metric_definitions </a></td>
<td style="text-align: left;">Specifies the extended metrics and custom
metrics that you want a CloudWatch RUM app monitor to send to a
destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_batch_delete_rum_metric_definitions/"> batch_delete_rum_metric_definitions </a></td>
<td style="text-align: left;">Removes the specified metrics from being
sent to an extended metrics destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_batch_get_rum_metric_definitions/"> batch_get_rum_metric_definitions </a></td>
<td style="text-align: left;">Retrieves the list of metrics and
dimensions that a RUM app monitor is sending to a single
destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_create_app_monitor/"> create_app_monitor </a></td>
<td style="text-align: left;">Creates a Amazon CloudWatch RUM app
monitor, which collects telemetry data from your application and sends
that data to RUM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_delete_app_monitor/"> delete_app_monitor </a></td>
<td style="text-align: left;">Deletes an existing app monitor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_delete_rum_metrics_destination/"> delete_rum_metrics_destination </a></td>
<td style="text-align: left;">Deletes a destination for CloudWatch RUM
extended metrics, so that the specified app monitor stops sending
extended metrics to that destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_get_app_monitor/"> get_app_monitor </a></td>
<td style="text-align: left;">Retrieves the complete configuration
information for one app monitor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_get_app_monitor_data/"> get_app_monitor_data </a></td>
<td style="text-align: left;">Retrieves the raw performance events that
RUM has collected from your web application, so that you can do your own
processing or analysis of this data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_list_app_monitors/"> list_app_monitors </a></td>
<td style="text-align: left;">Returns a list of the Amazon CloudWatch
RUM app monitors in the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_list_rum_metrics_destinations/"> list_rum_metrics_destinations </a></td>
<td style="text-align: left;">Returns a list of destinations that you
have created to receive RUM extended metrics, for the specified app
monitor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with a
CloudWatch RUM resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_put_rum_events/"> put_rum_events </a></td>
<td style="text-align: left;">Sends telemetry events about your
application performance and user behavior to CloudWatch RUM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_put_rum_metrics_destination/"> put_rum_metrics_destination </a></td>
<td style="text-align: left;">Creates or updates a destination to
receive extended metrics from CloudWatch RUM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified CloudWatch RUM resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchrum_update_app_monitor/"> update_app_monitor </a></td>
<td style="text-align: left;">Updates the configuration of an existing
app monitor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchrum_update_rum_metric_definition/"> update_rum_metric_definition </a></td>
<td style="text-align: left;">Modifies one existing metric definition
for CloudWatch RUM extended metrics</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudwatchrum()
    svc$batch_create_rum_metric_definitions(
      Foo = 123
    )

    ## End(Not run)
