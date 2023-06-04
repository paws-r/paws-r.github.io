<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Kinesis Analytics

### Description

**Overview**

This documentation is for version 1 of the Amazon Kinesis Data Analytics
API, which only supports SQL applications. Version 2 of the API supports
SQL and Java applications. For more information about version 2, see
Amazon Kinesis Data Analytics API V2 Documentation.

This is the *Amazon Kinesis Analytics v1 API Reference*. The Amazon
Kinesis Analytics Developer Guide provides additional information.

### Usage

    kinesisanalytics(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesisanalytics_:_config">config</code></td>
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

    svc <- kinesisanalytics(
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
style="text-align: left;"><a href="../kinesisanalytics_add_application_cloud_watch_logging_option/"> add_application_cloud_watch_logging_option </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_add_application_input/"> add_application_input </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kinesisanalytics_add_application_input_processing_configuration/"> add_application_input_processing_configuration </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_add_application_output/"> add_application_output </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalytics_add_application_reference_data_source/"> add_application_reference_data_source </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_create_application/"> create_application </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalytics_delete_application/"> delete_application </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../kinesisanalytics_delete_application_cloud_watch_logging_option/"> delete_application_cloud_watch_logging_option </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kinesisanalytics_delete_application_input_processing_configuration/"> delete_application_input_processing_configuration </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_delete_application_output/"> delete_application_output </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kinesisanalytics_delete_application_reference_data_source/"> delete_application_reference_data_source </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_describe_application/"> describe_application </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalytics_discover_input_schema/"> discover_input_schema </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_list_applications/"> list_applications </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalytics_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves the list of key-value tags
assigned to the application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_start_application/"> start_application </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalytics_stop_application/"> stop_application </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more key-value tags to a
Kinesis Analytics application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesisanalytics_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a Kinesis
Analytics application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesisanalytics_update_application/"> update_application </a></td>
<td style="text-align: left;">This documentation is for version 1 of the
Amazon Kinesis Data Analytics API, which only supports SQL
applications</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kinesisanalytics()
    svc$add_application_cloud_watch_logging_option(
      Foo = 123
    )

    ## End(Not run)
