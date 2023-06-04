<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_create_event_source_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a mapping between an event source and an Lambda function

### Description

Creates a mapping between an event source and an Lambda function. Lambda
reads items from the event source and invokes the function.

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

    lambda_create_event_source_mapping(EventSourceArn, FunctionName,
      Enabled, BatchSize, FilterCriteria, MaximumBatchingWindowInSeconds,
      ParallelizationFactor, StartingPosition, StartingPositionTimestamp,
      DestinationConfig, MaximumRecordAgeInSeconds,
      BisectBatchOnFunctionError, MaximumRetryAttempts,
      TumblingWindowInSeconds, Topics, Queues, SourceAccessConfigurations,
      SelfManagedEventSource, FunctionResponseTypes,
      AmazonManagedKafkaEventSourceConfig, SelfManagedKafkaEventSourceConfig,
      ScalingConfig, DocumentDBEventSourceConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_EventSourceArn">EventSourceArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the event source.</p>
<ul>
<li><p><strong>Amazon Kinesis</strong> – The ARN of the data stream or a
stream consumer.</p></li>
<li><p><strong>Amazon DynamoDB Streams</strong> – The ARN of the
stream.</p></li>
<li><p><strong>Amazon Simple Queue Service</strong> – The ARN of the
queue.</p></li>
<li><p><strong>Amazon Managed Streaming for Apache Kafka</strong> – The
ARN of the cluster.</p></li>
<li><p><strong>Amazon MQ</strong> – The ARN of the broker.</p></li>
<li><p><strong>Amazon DocumentDB</strong> – The ARN of the DocumentDB
change stream.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
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
id="lambda_create_event_source_mapping_:_Enabled">Enabled</code></td>
<td><p>When true, the event source mapping is active. When false, Lambda
pauses polling and invocation.</p>
<p>Default: True</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_BatchSize">BatchSize</code></td>
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
id="lambda_create_event_source_mapping_:_FilterCriteria">FilterCriteria</code></td>
<td><p>An object that defines the filter criteria that determine whether
Lambda should process an event. For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda
event filtering</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_MaximumBatchingWindowInSeconds">MaximumBatchingWindowInSeconds</code></td>
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
id="lambda_create_event_source_mapping_:_ParallelizationFactor">ParallelizationFactor</code></td>
<td><p>(Kinesis and DynamoDB Streams only) The number of batches to
process from each shard concurrently.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_StartingPosition">StartingPosition</code></td>
<td><p>The position in a stream from which to start reading. Required
for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources.
<code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams
and Amazon DocumentDB.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_StartingPositionTimestamp">StartingPositionTimestamp</code></td>
<td><p>With <code>StartingPosition</code> set to
<code>AT_TIMESTAMP</code>, the time from which to start
reading.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_DestinationConfig">DestinationConfig</code></td>
<td><p>(Kinesis and DynamoDB Streams only) A standard Amazon SQS queue
or standard Amazon SNS topic destination for discarded records.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_MaximumRecordAgeInSeconds">MaximumRecordAgeInSeconds</code></td>
<td><p>(Kinesis and DynamoDB Streams only) Discard records older than
the specified age. The default value is infinite (-1).</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_BisectBatchOnFunctionError">BisectBatchOnFunctionError</code></td>
<td><p>(Kinesis and DynamoDB Streams only) If the function returns an
error, split the batch in two and retry.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_MaximumRetryAttempts">MaximumRetryAttempts</code></td>
<td><p>(Kinesis and DynamoDB Streams only) Discard records after the
specified number of retries. The default value is infinite (-1). When
set to infinite (-1), failed records are retried until the record
expires.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_TumblingWindowInSeconds">TumblingWindowInSeconds</code></td>
<td><p>(Kinesis and DynamoDB Streams only) The duration in seconds of a
processing window for DynamoDB and Kinesis Streams event sources. A
value of 0 seconds indicates no tumbling window.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_Topics">Topics</code></td>
<td><p>The name of the Kafka topic.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_Queues">Queues</code></td>
<td><p>(MQ) The name of the Amazon MQ broker destination queue to
consume.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_SourceAccessConfigurations">SourceAccessConfigurations</code></td>
<td><p>An array of authentication protocols or VPC components required
to secure your event source.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_SelfManagedEventSource">SelfManagedEventSource</code></td>
<td><p>The self-managed Apache Kafka cluster to receive records
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_FunctionResponseTypes">FunctionResponseTypes</code></td>
<td><p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current
response type enums applied to the event source mapping.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_AmazonManagedKafkaEventSourceConfig">AmazonManagedKafkaEventSourceConfig</code></td>
<td><p>Specific configuration settings for an Amazon Managed Streaming
for Apache Kafka (Amazon MSK) event source.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_SelfManagedKafkaEventSourceConfig">SelfManagedKafkaEventSourceConfig</code></td>
<td><p>Specific configuration settings for a self-managed Apache Kafka
event source.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_event_source_mapping_:_ScalingConfig">ScalingConfig</code></td>
<td><p>(Amazon SQS only) The scaling configuration for the event source.
For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring
maximum concurrency for Amazon SQS event sources</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_event_source_mapping_:_DocumentDBEventSourceConfig">DocumentDBEventSourceConfig</code></td>
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

    svc$create_event_source_mapping(
      EventSourceArn = "string",
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
      ParallelizationFactor = 123,
      StartingPosition = "TRIM_HORIZON"|"LATEST"|"AT_TIMESTAMP",
      StartingPositionTimestamp = as.POSIXct(
        "2015-01-01"
      ),
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
      TumblingWindowInSeconds = 123,
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
