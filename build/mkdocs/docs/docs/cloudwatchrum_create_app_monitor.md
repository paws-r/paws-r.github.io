<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_create_app_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that data to RUM

### Description

Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
data from your application and sends that data to RUM. The data includes
performance and reliability information such as page load time,
client-side errors, and user behavior.

You use this operation only to create a new app monitor. To update an
existing app monitor, use `update_app_monitor` instead.

After you create an app monitor, sign in to the CloudWatch RUM console
to get the JavaScript code snippet to add to your web application. For
more information, see [How do I find a code snippet that I've already
generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)

### Usage

    cloudwatchrum_create_app_monitor(AppMonitorConfiguration, CustomEvents,
      CwLogEnabled, Domain, Name, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_create_app_monitor_:_AppMonitorConfiguration">AppMonitorConfiguration</code></td>
<td><p>A structure that contains much of the configuration data for the
app monitor. If you are using Amazon Cognito for authorization, you must
include this structure in your request, and it must include the ID of
the Amazon Cognito identity pool to use for authorization. If you don't
include <code>AppMonitorConfiguration</code>, you must set up your own
authorization method. For more information, see Authorize your
application to send data to Amazon Web Services.</p>
<p>If you omit this argument, the sample rate used for RUM is set to 10%
of the user sessions.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_create_app_monitor_:_CustomEvents">CustomEvents</code></td>
<td><p>Specifies whether this app monitor allows the web client to
define and send custom events. If you omit this parameter, custom events
are <code>DISABLED</code>.</p>
<p>For more information about custom events, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html">Send
custom events</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_create_app_monitor_:_CwLogEnabled">CwLogEnabled</code></td>
<td><p>Data collected by RUM is kept by RUM for 30 days and then
deleted. This parameter specifies whether RUM sends a copy of this
telemetry data to Amazon CloudWatch Logs in your account. This enables
you to keep the telemetry data for more than 30 days, but it does incur
Amazon CloudWatch Logs charges.</p>
<p>If you omit this parameter, the default is
<code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_create_app_monitor_:_Domain">Domain</code></td>
<td><p>[required] The top-level internet domain name for which your
application has administrative authority.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchrum_create_app_monitor_:_Name">Name</code></td>
<td><p>[required] A name for the app monitor.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchrum_create_app_monitor_:_Tags">Tags</code></td>
<td><p>Assigns one or more tags (key-value pairs) to the app
monitor.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.</p>
<p>You can associate as many as 50 tags with an app monitor.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_app_monitor(
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
      Name = "string",
      Tags = list(
        "string"
      )
    )
