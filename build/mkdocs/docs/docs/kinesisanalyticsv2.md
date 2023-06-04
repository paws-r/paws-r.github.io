<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Kinesis Analytics

### Description

Amazon Kinesis Data Analytics is a fully managed service that you can
use to process and analyze streaming data using Java, SQL, or Scala. The
service enables you to quickly author and run Java, SQL, or Scala code
against streaming sources to perform time series analytics, feed
real-time dashboards, and create real-time metrics.

### Usage

    kinesisanalyticsv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesisanalyticsv2_:_config">config</code></td>
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

    svc <- kinesisanalyticsv2(
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
<td
style="text-align: left;"><a href="../kinesisanalyticsv2_add_application_cloud_watch_logging_option/"> add_application_cloud_watch_logging_option </a></td>
<td style="text-align: left;">Adds an Amazon CloudWatch log stream to
monitor application configuration errors</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_add_application_input/"> add_application_input </a></td>
<td style="text-align: left;">Adds a streaming source to your SQL-based
Kinesis Data Analytics application</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kinesisanalyticsv2_add_application_input_processing_configuration/"> add_application_input_processing_configuration </a></td>
<td style="text-align: left;">Adds an InputProcessingConfiguration to a
SQL-based Kinesis Data Analytics application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_add_application_output/"> add_application_output </a></td>
<td style="text-align: left;">Adds an external destination to your
SQL-based Kinesis Data Analytics application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_add_application_reference_data_source/"> add_application_reference_data_source </a></td>
<td style="text-align: left;">Adds a reference data source to an
existing SQL-based Kinesis Data Analytics application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_add_application_vpc_configuration/"> add_application_vpc_configuration </a></td>
<td style="text-align: left;">Adds a Virtual Private Cloud (VPC)
configuration to the application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates a Kinesis Data Analytics
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_create_application_presigned_url/"> create_application_presigned_url </a></td>
<td style="text-align: left;">Creates and returns a URL that you can use
to connect to an application's extension</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_create_application_snapshot/"> create_application_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of the application's
state data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes the specified application</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application_cloud_watch_logging_option/"> delete_application_cloud_watch_logging_option </a></td>
<td style="text-align: left;">Deletes an Amazon CloudWatch log stream
from an Kinesis Data Analytics application</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application_input_processing_configuration/"> delete_application_input_processing_configuration </a></td>
<td style="text-align: left;">Deletes an InputProcessingConfiguration
from an input</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application_output/"> delete_application_output </a></td>
<td style="text-align: left;">Deletes the output destination
configuration from your SQL-based Kinesis Data Analytics application's
configuration</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application_reference_data_source/"> delete_application_reference_data_source </a></td>
<td style="text-align: left;">Deletes a reference data source
configuration from the specified SQL-based Kinesis Data Analytics
application's configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application_snapshot/"> delete_application_snapshot </a></td>
<td style="text-align: left;">Deletes a snapshot of application
state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_delete_application_vpc_configuration/"> delete_application_vpc_configuration </a></td>
<td style="text-align: left;">Removes a VPC configuration from a Kinesis
Data Analytics application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_describe_application/"> describe_application </a></td>
<td style="text-align: left;">Returns information about a specific
Kinesis Data Analytics application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_describe_application_snapshot/"> describe_application_snapshot </a></td>
<td style="text-align: left;">Returns information about a snapshot of
application state data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_describe_application_version/"> describe_application_version </a></td>
<td style="text-align: left;">Provides a detailed description of a
specified version of the application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_discover_input_schema/"> discover_input_schema </a></td>
<td style="text-align: left;">Infers a schema for a SQL-based Kinesis
Data Analytics application by evaluating sample records on the specified
streaming source (Kinesis data stream or Kinesis Data Firehose delivery
stream) or Amazon S3 object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_list_applications/"> list_applications </a></td>
<td style="text-align: left;">Returns a list of Kinesis Data Analytics
applications in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_list_application_snapshots/"> list_application_snapshots </a></td>
<td style="text-align: left;">Lists information about the current
application snapshots</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_list_application_versions/"> list_application_versions </a></td>
<td style="text-align: left;">Lists all the versions for the specified
application, including versions that were rolled back</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves the list of key-value tags
assigned to the application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_rollback_application/"> rollback_application </a></td>
<td style="text-align: left;">Reverts the application to the previous
running version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_start_application/"> start_application </a></td>
<td style="text-align: left;">Starts the specified Kinesis Data
Analytics application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_stop_application/"> stop_application </a></td>
<td style="text-align: left;">Stops the application from processing
data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more key-value tags to a
Kinesis Data Analytics application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a Kinesis
Data Analytics application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalyticsv2_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates an existing Kinesis Data Analytics
application</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kinesisanalyticsv2_update_application_maintenance_configuration/"> update_application_maintenance_configuration </a></td>
<td style="text-align: left;">Updates the maintenance configuration of
the Kinesis Data Analytics application</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kinesisanalyticsv2()
    svc$add_application_cloud_watch_logging_option(
      Foo = 123
    )

    ## End(Not run)
