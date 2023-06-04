<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_update_app_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing app monitor

### Description

Updates the configuration of an existing app monitor. When you use this
operation, only the parts of the app monitor configuration that you
specify in this operation are changed. For any parameters that you omit,
the existing values are kept.

You can't use this operation to change the tags of an existing app
monitor. To change the tags of an existing app monitor, use
`tag_resource`.

To create a new app monitor, use `create_app_monitor`.

After you update an app monitor, sign in to the CloudWatch RUM console
to get the updated JavaScript code snippet to add to your web
application. For more information, see [How do I find a code snippet
that I've already
generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)

### Usage

    cloudwatchrum_update_app_monitor(AppMonitorConfiguration, CustomEvents,
      CwLogEnabled, Domain, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_update_app_monitor_:_AppMonitorConfiguration">AppMonitorConfiguration</code></td>
<td><p>A structure that contains much of the configuration data for the
app monitor. If you are using Amazon Cognito for authorization, you must
include this structure in your request, and it must include the ID of
the Amazon Cognito identity pool to use for authorization. If you don't
include <code>AppMonitorConfiguration</code>, you must set up your own
authorization method. For more information, see Authorize your
application to send data to Amazon Web Services.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_update_app_monitor_:_CustomEvents">CustomEvents</code></td>
<td><p>Specifies whether this app monitor allows the web client to
define and send custom events. The default is for custom events to be
<code>DISABLED</code>.</p>
<p>For more information about custom events, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html">Send
custom events</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_update_app_monitor_:_CwLogEnabled">CwLogEnabled</code></td>
<td><p>Data collected by RUM is kept by RUM for 30 days and then
deleted. This parameter specifies whether RUM sends a copy of this
telemetry data to Amazon CloudWatch Logs in your account. This enables
you to keep the telemetry data for more than 30 days, but it does incur
Amazon CloudWatch Logs charges.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_update_app_monitor_:_Domain">Domain</code></td>
<td><p>The top-level internet domain name for which your application has
administrative authority.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchrum_update_app_monitor_:_Name">Name</code></td>
<td><p>[required] The name of the app monitor to update.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_app_monitor(
      AppMonitorConfiguration = list(
        AllowCookies = TRUE|FALSE,
        EnableXRay = TRUE|FALSE,
        ExcludedPages = list(
          "string"
        ),
        FavoritePages = list(
          "string"
        ),
        GuestRoleArn = "string",
        IdentityPoolId = "string",
        IncludedPages = list(
          "string"
        ),
        SessionSampleRate = 123.0,
        Telemetries = list(
          "errors"|"performance"|"http"
        )
      ),
      CustomEvents = list(
        Status = "ENABLED"|"DISABLED"
      ),
      CwLogEnabled = TRUE|FALSE,
      Domain = "string",
      Name = "string"
    )
