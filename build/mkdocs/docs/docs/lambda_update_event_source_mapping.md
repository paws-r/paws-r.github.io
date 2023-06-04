<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_update_event_source_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an event source mapping

### Description

Updates an event source mapping. You can change the function that Lambda
invokes, or pause invocation and resume later from the same location.

For details about how to configure different event sources, see the
following topics.

-   [Amazon DynamoDB
    Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

-   [Amazon
    Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

-   [Amazon
    SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

-   [Amazon MQ and
    RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

-   [Amazon
    MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

-   [Apache
    Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html)

-   [Amazon
    DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

The following error handling options are available only for stream
sources (DynamoDB and Kinesis):

-   `BisectBatchOnFunctionError` – If the function returns an error,
    split the batch in two and retry.

-   `DestinationConfig` – Send discarded records to an Amazon SQS queue
    or Amazon SNS topic.

-   `MaximumRecordAgeInSeconds` – Discard records older than the
    specified age. The default value is infinite (-1). When set to
    infinite (-1), failed records are retried until the record expires

-   `MaximumRetryAttempts` – Discard records after the specified number
    of retries. The default value is infinite (-1). When set to infinite
    (-1), failed records are retried until the record expires.

-   `ParallelizationFactor` – Process multiple batches from each shard
    concurrently.

For information about which configuration parameters apply to each event
source, see the following topics.

-   [Amazon DynamoDB
    Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

-   [Amazon
    Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

-   [Amazon
    SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

-   [Amazon MQ and
    RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

-   [Amazon
    MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

-   [Apache
    Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

-   [Amazon
    DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)

### Usage

    lambda_update_event_source_mapping(UUID, FunctionName, Enabled,
      BatchSize, FilterCriteria, MaximumBatchingWindowInSeconds,
      DestinationConfig, MaximumRecordAgeInSeconds,
      BisectBatchOnFunctionError, MaximumRetryAttempts, ParallelizationFactor,
      SourceAccessConfigurations, TumblingWindowInSeconds,
      FunctionResponseTypes, ScalingConfig, DocumentDBEventSourceConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_UUID">UUID</code></td>
<td><p>[required] The identifier of the event source mapping.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_FunctionName">FunctionName</code></td>
<td><p>The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> –
<code>MyFunction</code>.</p></li>
<li><p><strong>Function ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:MyFunction⁠</code>.</p></li>
<li><p><strong>Version or Alias ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> – <code
style="white-space: pre;">⁠123456789012:function:MyFunction⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it's limited to 64 characters in
length.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_Enabled">Enabled</code></td>
<td><p>When true, the event source mapping is active. When false, Lambda
pauses polling and invocation.</p>
<p>Default: True</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_BatchSize">BatchSize</code></td>
<td><p>The maximum number of records in each batch that Lambda pulls
from your stream or queue and sends to your function. Lambda passes all
of the records in the batch to the function in a single call, up to the
payload limit for synchronous invocation (6 MB).</p>
<ul>
<li><p><strong>Amazon Kinesis</strong> – Default 100. Max
10,000.</p></li>
<li><p><strong>Amazon DynamoDB Streams</strong> – Default 100. Max
10,000.</p></li>
<li><p><strong>Amazon Simple Queue Service</strong> – Default 10. For
standard queues the max is 10,000. For FIFO queues the max is
10.</p></li>
<li><p><strong>Amazon Managed Streaming for Apache Kafka</strong> –
Default 100. Max 10,000.</p></li>
<li><p><strong>Self-managed Apache Kafka</strong> – Default 100. Max
10,000.</p></li>
<li><p><strong>Amazon MQ (ActiveMQ and RabbitMQ)</strong> – Default 100.
Max 10,000.</p></li>
<li><p><strong>DocumentDB</strong> – Default 100. Max 10,000.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_FilterCriteria">FilterCriteria</code></td>
<td><p>An object that defines the filter criteria that determine whether
Lambda should process an event. For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda
event filtering</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_MaximumBatchingWindowInSeconds">MaximumBatchingWindowInSeconds</code></td>
<td><p>The maximum amount of time, in seconds, that Lambda spends
gathering records before invoking the function. You can configure
<code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds
to 300 seconds in increments of seconds.</p>
<p>For streams and Amazon SQS event sources, the default batching window
is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and
DocumentDB event sources, the default batching window is 500 ms. Note
that because you can only change
<code>MaximumBatchingWindowInSeconds</code> in increments of seconds,
you cannot revert back to the 500 ms default batching window after you
have changed it. To restore the default batching window, you must create
a new event source mapping.</p>
<p>Related setting: For streams and Amazon SQS event sources, when you
set <code>BatchSize</code> to a value greater than 10, you must set
<code>MaximumBatchingWindowInSeconds</code> to at least 1.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_DestinationConfig">DestinationConfig</code></td>
<td><p>(Kinesis and DynamoDB Streams only) A standard Amazon SQS queue
or standard Amazon SNS topic destination for discarded records.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_MaximumRecordAgeInSeconds">MaximumRecordAgeInSeconds</code></td>
<td><p>(Kinesis and DynamoDB Streams only) Discard records older than
the specified age. The default value is infinite (-1).</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_BisectBatchOnFunctionError">BisectBatchOnFunctionError</code></td>
<td><p>(Kinesis and DynamoDB Streams only) If the function returns an
error, split the batch in two and retry.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_MaximumRetryAttempts">MaximumRetryAttempts</code></td>
<td><p>(Kinesis and DynamoDB Streams only) Discard records after the
specified number of retries. The default value is infinite (-1). When
set to infinite (-1), failed records are retried until the record
expires.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_ParallelizationFactor">ParallelizationFactor</code></td>
<td><p>(Kinesis and DynamoDB Streams only) The number of batches to
process from each shard concurrently.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_SourceAccessConfigurations">SourceAccessConfigurations</code></td>
<td><p>An array of authentication protocols or VPC components required
to secure your event source.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_TumblingWindowInSeconds">TumblingWindowInSeconds</code></td>
<td><p>(Kinesis and DynamoDB Streams only) The duration in seconds of a
processing window for DynamoDB and Kinesis Streams event sources. A
value of 0 seconds indicates no tumbling window.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_FunctionResponseTypes">FunctionResponseTypes</code></td>
<td><p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current
response type enums applied to the event source mapping.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_event_source_mapping_:_ScalingConfig">ScalingConfig</code></td>
<td><p>(Amazon SQS only) The scaling configuration for the event source.
For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring
maximum concurrency for Amazon SQS event sources</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_event_source_mapping_:_DocumentDBEventSourceConfig">DocumentDBEventSourceConfig</code></td>
<td><p>Specific configuration settings for a DocumentDB event
source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UUID = "string",
      StartingPosition = "TRIM_HORIZON"|"LATEST"|"AT_TIMESTAMP",
      StartingPositionTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      BatchSize = 123,
      MaximumBatchingWindowInSeconds = 123,
      ParallelizationFactor = 123,
      EventSourceArn = "string",
      FilterCriteria = list(
        Filters = list(
          list(
            Pattern = "string"
          )
        )
      ),
      FunctionArn = "string",
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      LastProcessingResult = "string",
      State = "string",
      StateTransitionReason = "string",
      DestinationConfig = list(
        OnSuccess = list(
          Destination = "string"
        ),
        OnFailure = list(
          Destination = "string"
        )
      ),
      Topics = list(
        "string"
      ),
      Queues = list(
        "string"
      ),
      SourceAccessConfigurations = list(
        list(
          Type = "BASIC_AUTH"|"VPC_SUBNET"|"VPC_SECURITY_GROUP"|"SASL_SCRAM_512_AUTH"|"SASL_SCRAM_256_AUTH"|"VIRTUAL_HOST"|"CLIENT_CERTIFICATE_TLS_AUTH"|"SERVER_ROOT_CA_CERTIFICATE",
          URI = "string"
        )
      ),
      SelfManagedEventSource = list(
        Endpoints = list(
          list(
            "string"
          )
        )
      ),
      MaximumRecordAgeInSeconds = 123,
      BisectBatchOnFunctionError = TRUE|FALSE,
      MaximumRetryAttempts = 123,
      TumblingWindowInSeconds = 123,
      FunctionResponseTypes = list(
        "ReportBatchItemFailures"
      ),
      AmazonManagedKafkaEventSourceConfig = list(
        ConsumerGroupId = "string"
      ),
      SelfManagedKafkaEventSourceConfig = list(
        ConsumerGroupId = "string"
      ),
      ScalingConfig = list(
        MaximumConcurrency = 123
      ),
      DocumentDBEventSourceConfig = list(
        DatabaseName = "string",
        CollectionName = "string",
        FullDocument = "UpdateLookup"|"Default"
      )
    )

### Request syntax

    svc$update_event_source_mapping(
      UUID = "string",
      FunctionName = "string",
      Enabled = TRUE|FALSE,
      BatchSize = 123,
      FilterCriteria = list(
        Filters = list(
          list(
            Pattern = "string"
          )
        )
      ),
      MaximumBatchingWindowInSeconds = 123,
      DestinationConfig = list(
        OnSuccess = list(
          Destination = "string"
        ),
        OnFailure = list(
          Destination = "string"
        )
      ),
      MaximumRecordAgeInSeconds = 123,
      BisectBatchOnFunctionError = TRUE|FALSE,
      MaximumRetryAttempts = 123,
      ParallelizationFactor = 123,
      SourceAccessConfigurations = list(
        list(
          Type = "BASIC_AUTH"|"VPC_SUBNET"|"VPC_SECURITY_GROUP"|"SASL_SCRAM_512_AUTH"|"SASL_SCRAM_256_AUTH"|"VIRTUAL_HOST"|"CLIENT_CERTIFICATE_TLS_AUTH"|"SERVER_ROOT_CA_CERTIFICATE",
          URI = "string"
        )
      ),
      TumblingWindowInSeconds = 123,
      FunctionResponseTypes = list(
        "ReportBatchItemFailures"
      ),
      ScalingConfig = list(
        MaximumConcurrency = 123
      ),
      DocumentDBEventSourceConfig = list(
        DatabaseName = "string",
        CollectionName = "string",
        FullDocument = "UpdateLookup"|"Default"
      )
    )
