<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon DevOps Guru

### Description

Amazon DevOps Guru is a fully managed service that helps you identify
anomalous behavior in business critical operational applications. You
specify the Amazon Web Services resources that you want DevOps Guru to
cover, then the Amazon CloudWatch metrics and Amazon Web Services
CloudTrail events related to those resources are analyzed. When
anomalous behavior is detected, DevOps Guru creates an *insight* that
includes recommendations, related events, and related metrics that can
help you improve your operational applications. For more information,
see [What is Amazon DevOps
Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html).

You can specify 1 or 2 Amazon Simple Notification Service topics so you
are notified every time a new insight is created. You can also enable
DevOps Guru to generate an OpsItem in Amazon Web Services Systems
Manager for each insight to help you manage and track your work
addressing insights.

To learn about the DevOps Guru workflow, see [How DevOps Guru
works](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works).
To learn about DevOps Guru concepts, see [Concepts in DevOps
Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html).

### Usage

    devopsguru(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="devopsguru_:_config">config</code></td>
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

    svc <- devopsguru(
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
<td style="text-align: left;"><a href="../devopsguru_add_notification_channel/"> add_notification_channel </a></td>
<td style="text-align: left;">Adds a notification channel to DevOps
Guru</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_delete_insight/"> delete_insight </a></td>
<td style="text-align: left;">Deletes the insight along with the
associated anomalies, events and recommendations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_describe_account_health/"> describe_account_health </a></td>
<td style="text-align: left;">Returns the number of open reactive
insights, the number of open proactive insights, and the number of
metrics analyzed in your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_describe_account_overview/"> describe_account_overview </a></td>
<td style="text-align: left;">For the time range passed in, returns the
number of open reactive insight that were created, the number of open
proactive insights that were created, and the Mean Time to Recover
(MTTR) for all closed reactive insights</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_describe_anomaly/"> describe_anomaly </a></td>
<td style="text-align: left;">Returns details about an anomaly that you
specify using its ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_describe_event_sources_config/"> describe_event_sources_config </a></td>
<td style="text-align: left;">Returns the integration status of services
that are integrated with DevOps Guru as Consumer via EventBridge</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_describe_feedback/"> describe_feedback </a></td>
<td style="text-align: left;">Returns the most recent feedback submitted
in the current Amazon Web Services account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_describe_insight/"> describe_insight </a></td>
<td style="text-align: left;">Returns details about an insight that you
specify using its ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_describe_organization_health/"> describe_organization_health </a></td>
<td style="text-align: left;">Returns active insights, predictive
insights, and resource hours analyzed in last hour</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_describe_organization_overview/"> describe_organization_overview </a></td>
<td style="text-align: left;">Returns an overview of your organization's
history based on the specified time range</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../devopsguru_describe_organization_resource_collection_health/"> describe_organization_resource_collection_health </a></td>
<td style="text-align: left;">Provides an overview of your system's
health</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_describe_resource_collection_health/"> describe_resource_collection_health </a></td>
<td style="text-align: left;">Returns the number of open proactive
insights, open reactive insights, and the Mean Time to Recover (MTTR)
for all closed insights in resource collections in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_describe_service_integration/"> describe_service_integration </a></td>
<td style="text-align: left;">Returns the integration status of services
that are integrated with DevOps Guru</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_get_cost_estimation/"> get_cost_estimation </a></td>
<td style="text-align: left;">Returns an estimate of the monthly cost
for DevOps Guru to analyze your Amazon Web Services resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_get_resource_collection/"> get_resource_collection </a></td>
<td style="text-align: left;">Returns lists Amazon Web Services
resources that are of the specified resource collection type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_list_anomalies_for_insight/"> list_anomalies_for_insight </a></td>
<td style="text-align: left;">Returns a list of the anomalies that
belong to an insight that you specify using its ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_list_anomalous_log_groups/"> list_anomalous_log_groups </a></td>
<td style="text-align: left;">Returns the list of log groups that
contain log anomalies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_list_events/"> list_events </a></td>
<td style="text-align: left;">Returns a list of the events emitted by
the resources that are evaluated by DevOps Guru</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_list_insights/"> list_insights </a></td>
<td style="text-align: left;">Returns a list of insights in your Amazon
Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_list_monitored_resources/"> list_monitored_resources </a></td>
<td style="text-align: left;">Returns the list of all log groups that
are being monitored and tagged by DevOps Guru</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_list_notification_channels/"> list_notification_channels </a></td>
<td style="text-align: left;">Returns a list of notification channels
configured for DevOps Guru</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_list_organization_insights/"> list_organization_insights </a></td>
<td style="text-align: left;">Returns a list of insights associated with
the account or OU Id</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_list_recommendations/"> list_recommendations </a></td>
<td style="text-align: left;">Returns a list of a specified insight's
recommendations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_put_feedback/"> put_feedback </a></td>
<td style="text-align: left;">Collects customer feedback about the
specified insight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_remove_notification_channel/"> remove_notification_channel </a></td>
<td style="text-align: left;">Removes a notification channel from DevOps
Guru</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_search_insights/"> search_insights </a></td>
<td style="text-align: left;">Returns a list of insights in your Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_search_organization_insights/"> search_organization_insights </a></td>
<td style="text-align: left;">Returns a list of insights in your
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_start_cost_estimation/"> start_cost_estimation </a></td>
<td style="text-align: left;">Starts the creation of an estimate of the
monthly cost to analyze your Amazon Web Services resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_update_event_sources_config/"> update_event_sources_config </a></td>
<td style="text-align: left;">Enables or disables integration with a
service that can be integrated with DevOps Guru</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../devopsguru_update_resource_collection/"> update_resource_collection </a></td>
<td style="text-align: left;">Updates the collection of resources that
DevOps Guru analyzes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../devopsguru_update_service_integration/"> update_service_integration </a></td>
<td style="text-align: left;">Enables or disables integration with a
service that can be integrated with DevOps Guru</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- devopsguru()
    svc$add_notification_channel(
      Foo = 123
    )

    ## End(Not run)
