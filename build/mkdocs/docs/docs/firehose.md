<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Kinesis Firehose

### Description

Amazon Kinesis Data Firehose API Reference

Amazon Kinesis Data Firehose is a fully managed service that delivers
real-time streaming data to destinations such as Amazon Simple Storage
Service (Amazon S3), Amazon OpenSearch Service, Amazon Redshift, Splunk,
and various other supportd destinations.

### Usage

    firehose(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="firehose_:_config">config</code></td>
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

    svc <- firehose(
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
<td style="text-align: left;"><a href="../firehose_create_delivery_stream/"> create_delivery_stream </a></td>
<td style="text-align: left;">Creates a Kinesis Data Firehose delivery
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../firehose_delete_delivery_stream/"> delete_delivery_stream </a></td>
<td style="text-align: left;">Deletes a delivery stream and its
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../firehose_describe_delivery_stream/"> describe_delivery_stream </a></td>
<td style="text-align: left;">Describes the specified delivery stream
and its status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../firehose_list_delivery_streams/"> list_delivery_streams </a></td>
<td style="text-align: left;">Lists your delivery streams in
alphabetical order of their names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../firehose_list_tags_for_delivery_stream/"> list_tags_for_delivery_stream </a></td>
<td style="text-align: left;">Lists the tags for the specified delivery
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../firehose_put_record/"> put_record </a></td>
<td style="text-align: left;">Writes a single data record into an Amazon
Kinesis Data Firehose delivery stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../firehose_put_record_batch/"> put_record_batch </a></td>
<td style="text-align: left;">Writes multiple data records into a
delivery stream in a single call, which can achieve higher throughput
per producer than when writing single records</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../firehose_start_delivery_stream_encryption/"> start_delivery_stream_encryption </a></td>
<td style="text-align: left;">Enables server-side encryption (SSE) for
the delivery stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../firehose_stop_delivery_stream_encryption/"> stop_delivery_stream_encryption </a></td>
<td style="text-align: left;">Disables server-side encryption (SSE) for
the delivery stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../firehose_tag_delivery_stream/"> tag_delivery_stream </a></td>
<td style="text-align: left;">Adds or updates tags for the specified
delivery stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../firehose_untag_delivery_stream/"> untag_delivery_stream </a></td>
<td style="text-align: left;">Removes tags from the specified delivery
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../firehose_update_destination/"> update_destination </a></td>
<td style="text-align: left;">Updates the specified destination of the
specified delivery stream</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- firehose()
    svc$create_delivery_stream(
      Foo = 123
    )

    ## End(Not run)
