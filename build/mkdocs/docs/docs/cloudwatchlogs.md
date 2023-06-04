<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudWatch Logs

### Description

You can use Amazon CloudWatch Logs to monitor, store, and access your
log files from EC2 instances, CloudTrail, and other sources. You can
then retrieve the associated log data from CloudWatch Logs using the
CloudWatch console. Alternatively, you can use CloudWatch Logs commands
in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs
SDK.

You can use CloudWatch Logs to:

-   **Monitor logs from EC2 instances in real time**: You can use
    CloudWatch Logs to monitor applications and systems using log data.
    For example, CloudWatch Logs can track the number of errors that
    occur in your application logs. Then, it can send you a notification
    whenever the rate of errors exceeds a threshold that you specify.
    CloudWatch Logs uses your log data for monitoring so no code changes
    are required. For example, you can monitor application logs for
    specific literal terms (such as "NullReferenceException"). You can
    also count the number of occurrences of a literal term at a
    particular position in log data (such as "404" status codes in an
    Apache access log). When the term you are searching for is found,
    CloudWatch Logs reports the data to a CloudWatch metric that you
    specify.

-   **Monitor CloudTrail logged events**: You can create alarms in
    CloudWatch and receive notifications of particular API activity as
    captured by CloudTrail. You can use the notification to perform
    troubleshooting.

-   **Archive log data**: You can use CloudWatch Logs to store your log
    data in highly durable storage. You can change the log retention
    setting so that any log events earlier than this setting are
    automatically deleted. The CloudWatch Logs agent helps to quickly
    send both rotated and non-rotated log data off of a host and into
    the log service. You can then access the raw log data when you need
    it.

### Usage

    cloudwatchlogs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchlogs_:_config">config</code></td>
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

    svc <- cloudwatchlogs(
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
<td style="text-align: left;"><a href="../cloudwatchlogs_associate_kms_key/"> associate_kms_key </a></td>
<td style="text-align: left;">Associates the specified KMS key with the
specified log group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_cancel_export_task/"> cancel_export_task </a></td>
<td style="text-align: left;">Cancels the specified export task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_create_export_task/"> create_export_task </a></td>
<td style="text-align: left;">Creates an export task so that you can
efficiently export data from a log group to an Amazon S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_create_log_group/"> create_log_group </a></td>
<td style="text-align: left;">Creates a log group with the specified
name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_create_log_stream/"> create_log_stream </a></td>
<td style="text-align: left;">Creates a log stream for the specified log
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_data_protection_policy/"> delete_data_protection_policy </a></td>
<td style="text-align: left;">Deletes the data protection policy from
the specified log group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_destination/"> delete_destination </a></td>
<td style="text-align: left;">Deletes the specified destination, and
eventually disables all the subscription filters that publish to it</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_log_group/"> delete_log_group </a></td>
<td style="text-align: left;">Deletes the specified log group and
permanently deletes all the archived log events associated with the log
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_log_stream/"> delete_log_stream </a></td>
<td style="text-align: left;">Deletes the specified log stream and
permanently deletes all the archived log events associated with the log
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_metric_filter/"> delete_metric_filter </a></td>
<td style="text-align: left;">Deletes the specified metric filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_query_definition/"> delete_query_definition </a></td>
<td style="text-align: left;">Deletes a saved CloudWatch Logs Insights
query definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource policy from this
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_retention_policy/"> delete_retention_policy </a></td>
<td style="text-align: left;">Deletes the specified retention
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_delete_subscription_filter/"> delete_subscription_filter </a></td>
<td style="text-align: left;">Deletes the specified subscription
filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_destinations/"> describe_destinations </a></td>
<td style="text-align: left;">Lists all your destinations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_export_tasks/"> describe_export_tasks </a></td>
<td style="text-align: left;">Lists the specified export tasks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_log_groups/"> describe_log_groups </a></td>
<td style="text-align: left;">Lists the specified log groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_log_streams/"> describe_log_streams </a></td>
<td style="text-align: left;">Lists the log streams for the specified
log group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_metric_filters/"> describe_metric_filters </a></td>
<td style="text-align: left;">Lists the specified metric filters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_queries/"> describe_queries </a></td>
<td style="text-align: left;">Returns a list of CloudWatch Logs Insights
queries that are scheduled, running, or have been run recently in this
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_query_definitions/"> describe_query_definitions </a></td>
<td style="text-align: left;">This operation returns a paginated list of
your saved CloudWatch Logs Insights query definitions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_resource_policies/"> describe_resource_policies </a></td>
<td style="text-align: left;">Lists the resource policies in this
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_describe_subscription_filters/"> describe_subscription_filters </a></td>
<td style="text-align: left;">Lists the subscription filters for the
specified log group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_disassociate_kms_key/"> disassociate_kms_key </a></td>
<td style="text-align: left;">Disassociates the associated KMS key from
the specified log group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_filter_log_events/"> filter_log_events </a></td>
<td style="text-align: left;">Lists log events from the specified log
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_get_data_protection_policy/"> get_data_protection_policy </a></td>
<td style="text-align: left;">Returns information about a log group data
protection policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_get_log_events/"> get_log_events </a></td>
<td style="text-align: left;">Lists log events from the specified log
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_get_log_group_fields/"> get_log_group_fields </a></td>
<td style="text-align: left;">Returns a list of the fields that are
included in log events in the specified log group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_get_log_record/"> get_log_record </a></td>
<td style="text-align: left;">Retrieves all of the fields and values of
a single log event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_get_query_results/"> get_query_results </a></td>
<td style="text-align: left;">Returns the results from the specified
query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with a
CloudWatch Logs resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_list_tags_log_group/"> list_tags_log_group </a></td>
<td style="text-align: left;">The ListTagsLogGroup operation is on the
path to deprecation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_data_protection_policy/"> put_data_protection_policy </a></td>
<td style="text-align: left;">Creates a data protection policy for the
specified log group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_destination/"> put_destination </a></td>
<td style="text-align: left;">Creates or updates a destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_destination_policy/"> put_destination_policy </a></td>
<td style="text-align: left;">Creates or updates an access policy
associated with an existing destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_log_events/"> put_log_events </a></td>
<td style="text-align: left;">Uploads a batch of log events to the
specified log stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_metric_filter/"> put_metric_filter </a></td>
<td style="text-align: left;">Creates or updates a metric filter and
associates it with the specified log group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_query_definition/"> put_query_definition </a></td>
<td style="text-align: left;">Creates or updates a query definition for
CloudWatch Logs Insights</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Creates or updates a resource policy
allowing other Amazon Web Services services to put log events to this
account, such as Amazon Route 53</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_retention_policy/"> put_retention_policy </a></td>
<td style="text-align: left;">Sets the retention of the specified log
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_put_subscription_filter/"> put_subscription_filter </a></td>
<td style="text-align: left;">Creates or updates a subscription filter
and associates it with the specified log group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_start_query/"> start_query </a></td>
<td style="text-align: left;">Schedules a query of a log group using
CloudWatch Logs Insights</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_stop_query/"> stop_query </a></td>
<td style="text-align: left;">Stops a CloudWatch Logs Insights query
that is in progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_tag_log_group/"> tag_log_group </a></td>
<td style="text-align: left;">The TagLogGroup operation is on the path
to deprecation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified CloudWatch Logs resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_test_metric_filter/"> test_metric_filter </a></td>
<td style="text-align: left;">Tests the filter pattern of a metric
filter against a sample of log event messages</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudwatchlogs_untag_log_group/"> untag_log_group </a></td>
<td style="text-align: left;">The UntagLogGroup operation is on the path
to deprecation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudwatchlogs_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudwatchlogs()
    svc$associate_kms_key(
      Foo = 123
    )

    ## End(Not run)
