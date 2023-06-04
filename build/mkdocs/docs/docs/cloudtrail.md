<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CloudTrail

### Description

CloudTrail

This is the CloudTrail API Reference. It provides descriptions of
actions, data types, common parameters, and common errors for
CloudTrail.

CloudTrail is a web service that records Amazon Web Services API calls
for your Amazon Web Services account and delivers log files to an Amazon
S3 bucket. The recorded information includes the identity of the user,
the start time of the Amazon Web Services API call, the source IP
address, the request parameters, and the response elements returned by
the service.

As an alternative to the API, you can use one of the Amazon Web Services
SDKs, which consist of libraries and sample code for various programming
languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
provide programmatic access to CloudTrail. For example, the SDKs handle
cryptographically signing requests, managing errors, and retrying
requests automatically. For more information about the Amazon Web
Services SDKs, including how to download and install them, see [Tools to
Build on Amazon Web Services](https://aws.amazon.com/developer/tools/).

See the [CloudTrail User
Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
for information about the data that is included with each Amazon Web
Services API call listed in the log files.

### Usage

    cloudtrail(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_:_config">config</code></td>
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

    svc <- cloudtrail(
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
<td style="text-align: left;"><a href="../cloudtrail_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds one or more tags to a trail, event
data store, or channel, up to a limit of 50</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_cancel_query/"> cancel_query </a></td>
<td style="text-align: left;">Cancels a query if the query is not in a
terminated state, such as CANCELLED, FAILED, TIMED_OUT, or FINISHED</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_create_channel/"> create_channel </a></td>
<td style="text-align: left;">Creates a channel for CloudTrail to ingest
events from a partner or external source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_create_event_data_store/"> create_event_data_store </a></td>
<td style="text-align: left;">Creates a new event data store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_create_trail/"> create_trail </a></td>
<td style="text-align: left;">Creates a trail that specifies the
settings for delivery of log data to an Amazon S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_delete_channel/"> delete_channel </a></td>
<td style="text-align: left;">Deletes a channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_delete_event_data_store/"> delete_event_data_store </a></td>
<td style="text-align: left;">Disables the event data store specified by
EventDataStore, which accepts an event data store ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes the resource-based policy attached
to the CloudTrail channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_delete_trail/"> delete_trail </a></td>
<td style="text-align: left;">Deletes a trail</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudtrail_deregister_organization_delegated_admin/"> deregister_organization_delegated_admin </a></td>
<td style="text-align: left;">Removes CloudTrail delegated administrator
permissions from a member account in an organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_describe_query/"> describe_query </a></td>
<td style="text-align: left;">Returns metadata about a query, including
query run time in milliseconds, number of events scanned and matched,
and query status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_describe_trails/"> describe_trails </a></td>
<td style="text-align: left;">Retrieves settings for one or more trails
associated with the current region for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_get_channel/"> get_channel </a></td>
<td style="text-align: left;">Returns information about a specific
channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_get_event_data_store/"> get_event_data_store </a></td>
<td style="text-align: left;">Returns information about an event data
store specified as either an ARN or the ID portion of the ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_get_event_selectors/"> get_event_selectors </a></td>
<td style="text-align: left;">Describes the settings for the event
selectors that you configured for your trail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_get_import/"> get_import </a></td>
<td style="text-align: left;">Returns information about a specific
import</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_get_insight_selectors/"> get_insight_selectors </a></td>
<td style="text-align: left;">Describes the settings for the Insights
event selectors that you configured for your trail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_get_query_results/"> get_query_results </a></td>
<td style="text-align: left;">Gets event data results of a query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Retrieves the JSON text of the
resource-based policy document attached to the CloudTrail channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_get_trail/"> get_trail </a></td>
<td style="text-align: left;">Returns settings information for a
specified trail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_get_trail_status/"> get_trail_status </a></td>
<td style="text-align: left;">Returns a JSON-formatted list of
information about the specified trail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_list_channels/"> list_channels </a></td>
<td style="text-align: left;">Lists the channels in the current account,
and their source names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_list_event_data_stores/"> list_event_data_stores </a></td>
<td style="text-align: left;">Returns information about all event data
stores in the account, in the current region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_list_import_failures/"> list_import_failures </a></td>
<td style="text-align: left;">Returns a list of failures for the
specified import</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_list_imports/"> list_imports </a></td>
<td style="text-align: left;">Returns information on all imports, or a
select set of imports by ImportStatus or Destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_list_public_keys/"> list_public_keys </a></td>
<td style="text-align: left;">Returns all public keys whose private keys
were used to sign the digest files within the specified time range</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_list_queries/"> list_queries </a></td>
<td style="text-align: left;">Returns a list of queries and query
statuses for the past seven days</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Lists the tags for the trail, event data
store, or channel in the current region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_list_trails/"> list_trails </a></td>
<td style="text-align: left;">Lists trails that are in the current
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_lookup_events/"> lookup_events </a></td>
<td style="text-align: left;">Looks up management events or CloudTrail
Insights events that are captured by CloudTrail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_put_event_selectors/"> put_event_selectors </a></td>
<td style="text-align: left;">Configures an event selector or advanced
event selectors for your trail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_put_insight_selectors/"> put_insight_selectors </a></td>
<td style="text-align: left;">Lets you enable Insights event logging by
specifying the Insights selectors that you want to enable on an existing
trail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Attaches a resource-based permission
policy to a CloudTrail channel that is used for an integration with an
event source outside of Amazon Web Services</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_register_organization_delegated_admin/"> register_organization_delegated_admin </a></td>
<td style="text-align: left;">Registers an organization’s member account
as the CloudTrail delegated administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes the specified tags from a trail,
event data store, or channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_restore_event_data_store/"> restore_event_data_store </a></td>
<td style="text-align: left;">Restores a deleted event data store
specified by EventDataStore, which accepts an event data store ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_start_import/"> start_import </a></td>
<td style="text-align: left;">Starts an import of logged trail events
from a source S3 bucket to a destination event data store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_start_logging/"> start_logging </a></td>
<td style="text-align: left;">Starts the recording of Amazon Web
Services API calls and log file delivery for a trail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_start_query/"> start_query </a></td>
<td style="text-align: left;">Starts a CloudTrail Lake query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_stop_import/"> stop_import </a></td>
<td style="text-align: left;">Stops a specified import</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_stop_logging/"> stop_logging </a></td>
<td style="text-align: left;">Suspends the recording of Amazon Web
Services API calls and log file delivery for the specified trail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_update_channel/"> update_channel </a></td>
<td style="text-align: left;">Updates a channel specified by a required
channel ARN or UUID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudtrail_update_event_data_store/"> update_event_data_store </a></td>
<td style="text-align: left;">Updates an event data store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudtrail_update_trail/"> update_trail </a></td>
<td style="text-align: left;">Updates trail settings that control what
events you are logging, and how to handle log files</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudtrail()
    svc$add_tags(
      Foo = 123
    )

    ## End(Not run)
