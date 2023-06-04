<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Cognito Sync

### Description

Amazon Cognito Sync provides an AWS service and client library that
enable cross-device syncing of application-related user data. High-level
client libraries are available for both iOS and Android. You can use
these libraries to persist data locally so that it's available even if
the device is offline. Developer credentials don't need to be stored on
the mobile device to access the service. You can use Amazon Cognito to
obtain a normalized user ID and credentials. User data is persisted in a
dataset that can store up to 1 MB of key-value pairs, and you can have
up to 20 datasets per user identity.

With Amazon Cognito Sync, the data stored for each identity is
accessible only to credentials assigned to that identity. In order to
use the Cognito Sync service, you need to make API calls using
credentials retrieved with [Amazon Cognito Identity
service](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html).

If you want to use Cognito Sync in an Android or iOS application, you
will probably want to make API calls via the AWS Mobile SDK. To learn
more, see the Developer Guide for Android and the Developer Guide for
iOS.

### Usage

    cognitosync(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cognitosync_:_config">config</code></td>
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

    svc <- cognitosync(
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
<td style="text-align: left;"><a href="../cognitosync_bulk_publish/"> bulk_publish </a></td>
<td style="text-align: left;">Initiates a bulk publish of all existing
datasets for an Identity Pool to the configured stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes the specific dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Gets meta data about a dataset by identity
and dataset name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_describe_identity_pool_usage/"> describe_identity_pool_usage </a></td>
<td style="text-align: left;">Gets usage details (for example, data
storage) about a particular identity pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_describe_identity_usage/"> describe_identity_usage </a></td>
<td style="text-align: left;">Gets usage information for an identity,
including number of datasets and data usage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_get_bulk_publish_details/"> get_bulk_publish_details </a></td>
<td style="text-align: left;">Get the status of the last BulkPublish
operation for an identity pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_get_cognito_events/"> get_cognito_events </a></td>
<td style="text-align: left;">Gets the events and the corresponding
Lambda functions associated with an identity pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_get_identity_pool_configuration/"> get_identity_pool_configuration </a></td>
<td style="text-align: left;">Gets the configuration settings of an
identity pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">Lists datasets for an identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_list_identity_pool_usage/"> list_identity_pool_usage </a></td>
<td style="text-align: left;">Gets a list of identity pools registered
with Cognito</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_list_records/"> list_records </a></td>
<td style="text-align: left;">Gets paginated records, optionally changed
after a particular sync count for a dataset and identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_register_device/"> register_device </a></td>
<td style="text-align: left;">Registers a device to receive push sync
notifications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_set_cognito_events/"> set_cognito_events </a></td>
<td style="text-align: left;">Sets the AWS Lambda function for a given
event type for an identity pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_set_identity_pool_configuration/"> set_identity_pool_configuration </a></td>
<td style="text-align: left;">Sets the necessary configuration for push
sync</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_subscribe_to_dataset/"> subscribe_to_dataset </a></td>
<td style="text-align: left;">Subscribes to receive notifications when a
dataset is modified by another device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitosync_unsubscribe_from_dataset/"> unsubscribe_from_dataset </a></td>
<td style="text-align: left;">Unsubscribes from receiving notifications
when a dataset is modified by another device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitosync_update_records/"> update_records </a></td>
<td style="text-align: left;">Posts updates to records and adds and
deletes records for a dataset and user</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cognitosync()
    svc$bulk_publish(
      Foo = 123
    )

    ## End(Not run)
