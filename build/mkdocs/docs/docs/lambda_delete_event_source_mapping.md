<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_delete_event_source_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an event source mapping

### Description

Deletes an [event source
mapping](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html).
You can get the identifier of a mapping from the output of
`list_event_source_mappings`.

When you delete an event source mapping, it enters a `Deleting` state
and might not be completely deleted for several seconds.

### Usage

    lambda_delete_event_source_mapping(UUID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_delete_event_source_mapping_:_UUID">UUID</code></td>
<td><p>[required] The identifier of the event source mapping.</p></td>
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

    svc$delete_event_source_mapping(
      UUID = "string"
    )
