<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_event_source_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists event source mappings

### Description

Lists event source mappings. Specify an `EventSourceArn` to show only
event source mappings for a single event source.

### Usage

    lambda_list_event_source_mappings(EventSourceArn, FunctionName, Marker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_event_source_mappings_:_EventSourceArn">EventSourceArn</code></td>
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
id="lambda_list_event_source_mappings_:_FunctionName">FunctionName</code></td>
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
id="lambda_list_event_source_mappings_:_Marker">Marker</code></td>
<td><p>A pagination token returned by a previous call.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_event_source_mappings_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of event source mappings to return. Note that
ListEventSourceMappings returns a maximum of 100 items in each response,
even if you set the number higher.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      EventSourceMappings = list(
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
      )
    )

### Request syntax

    svc$list_event_source_mappings(
      EventSourceArn = "string",
      FunctionName = "string",
      Marker = "string",
      MaxItems = 123
    )
