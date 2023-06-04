<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Kinesis

### Description

Amazon Kinesis Data Streams Service API Reference

Amazon Kinesis Data Streams is a managed service that scales elastically
for real-time processing of streaming big data.

### Usage

    kinesis(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_:_config">config</code></td>
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

    svc <- kinesis(
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
<td style="text-align: left;"><a href="../kinesis_add_tags_to_stream/"> add_tags_to_stream </a></td>
<td style="text-align: left;">Adds or updates tags for the specified
Kinesis data stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_create_stream/"> create_stream </a></td>
<td style="text-align: left;">Creates a Kinesis data stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_decrease_stream_retention_period/"> decrease_stream_retention_period </a></td>
<td style="text-align: left;">Decreases the Kinesis data stream's
retention period, which is the length of time data records are
accessible after they are added to the stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_delete_stream/"> delete_stream </a></td>
<td style="text-align: left;">Deletes a Kinesis data stream and all its
shards and data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_deregister_stream_consumer/"> deregister_stream_consumer </a></td>
<td style="text-align: left;">To deregister a consumer, provide its
ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_describe_limits/"> describe_limits </a></td>
<td style="text-align: left;">Describes the shard limits and usage for
the account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_describe_stream/"> describe_stream </a></td>
<td style="text-align: left;">Describes the specified Kinesis data
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_describe_stream_consumer/"> describe_stream_consumer </a></td>
<td style="text-align: left;">To get the description of a registered
consumer, provide the ARN of the consumer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_describe_stream_summary/"> describe_stream_summary </a></td>
<td style="text-align: left;">Provides a summarized description of the
specified Kinesis data stream without the shard list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_disable_enhanced_monitoring/"> disable_enhanced_monitoring </a></td>
<td style="text-align: left;">Disables enhanced monitoring</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_enable_enhanced_monitoring/"> enable_enhanced_monitoring </a></td>
<td style="text-align: left;">Enables enhanced Kinesis data stream
monitoring for shard-level metrics</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_get_records/"> get_records </a></td>
<td style="text-align: left;">Gets data records from a Kinesis data
stream's shard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_get_shard_iterator/"> get_shard_iterator </a></td>
<td style="text-align: left;">Gets an Amazon Kinesis shard iterator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_increase_stream_retention_period/"> increase_stream_retention_period </a></td>
<td style="text-align: left;">Increases the Kinesis data stream's
retention period, which is the length of time data records are
accessible after they are added to the stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_list_shards/"> list_shards </a></td>
<td style="text-align: left;">Lists the shards in a stream and provides
information about each shard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_list_stream_consumers/"> list_stream_consumers </a></td>
<td style="text-align: left;">Lists the consumers registered to receive
data from a stream using enhanced fan-out, and provides information
about each consumer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_list_streams/"> list_streams </a></td>
<td style="text-align: left;">Lists your Kinesis data streams</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_list_tags_for_stream/"> list_tags_for_stream </a></td>
<td style="text-align: left;">Lists the tags for the specified Kinesis
data stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_merge_shards/"> merge_shards </a></td>
<td style="text-align: left;">Merges two adjacent shards in a Kinesis
data stream and combines them into a single shard to reduce the stream's
capacity to ingest and transport data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_put_record/"> put_record </a></td>
<td style="text-align: left;">Writes a single data record into an Amazon
Kinesis data stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_put_records/"> put_records </a></td>
<td style="text-align: left;">Writes multiple data records into a
Kinesis data stream in a single call (also referred to as a PutRecords
request)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_register_stream_consumer/"> register_stream_consumer </a></td>
<td style="text-align: left;">Registers a consumer with a Kinesis data
stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_remove_tags_from_stream/"> remove_tags_from_stream </a></td>
<td style="text-align: left;">Removes tags from the specified Kinesis
data stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_split_shard/"> split_shard </a></td>
<td style="text-align: left;">Splits a shard into two new shards in the
Kinesis data stream, to increase the stream's capacity to ingest and
transport data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_start_stream_encryption/"> start_stream_encryption </a></td>
<td style="text-align: left;">Enables or updates server-side encryption
using an Amazon Web Services KMS key for a specified stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_stop_stream_encryption/"> stop_stream_encryption </a></td>
<td style="text-align: left;">Disables server-side encryption for a
specified stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kinesis_update_shard_count/"> update_shard_count </a></td>
<td style="text-align: left;">Updates the shard count of the specified
stream to the specified number of shards</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kinesis_update_stream_mode/"> update_stream_mode </a></td>
<td style="text-align: left;">Updates the capacity mode of the data
stream</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kinesis()
    svc$add_tags_to_stream(
      Foo = 123
    )

    ## End(Not run)
