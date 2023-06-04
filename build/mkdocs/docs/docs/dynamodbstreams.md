<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodbstreams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon DynamoDB Streams

### Description

Amazon DynamoDB

Amazon DynamoDB Streams provides API actions for accessing streams and
processing stream records. To learn more about application development
with Streams, see [Capturing Table Activity with DynamoDB
Streams](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
in the Amazon DynamoDB Developer Guide.

### Usage

    dynamodbstreams(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodbstreams_:_config">config</code></td>
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

    svc <- dynamodbstreams(
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
<td style="text-align: left;"><a href="../dynamodbstreams_describe_stream/"> describe_stream </a></td>
<td style="text-align: left;">Returns information about a stream,
including the current status of the stream, its Amazon Resource Name
(ARN), the composition of its shards, and its corresponding DynamoDB
table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodbstreams_get_records/"> get_records </a></td>
<td style="text-align: left;">Retrieves the stream records from a given
shard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodbstreams_get_shard_iterator/"> get_shard_iterator </a></td>
<td style="text-align: left;">Returns a shard iterator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodbstreams_list_streams/"> list_streams </a></td>
<td style="text-align: left;">Returns an array of stream ARNs associated
with the current account and endpoint</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- dynamodbstreams()
    # The following example describes a stream with a given stream ARN.
    svc$describe_stream(
      StreamArn = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2..."
    )

    ## End(Not run)
