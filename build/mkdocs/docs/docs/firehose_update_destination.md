<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_update_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified destination of the specified delivery stream

### Description

Updates the specified destination of the specified delivery stream.

Use this operation to change the destination type (for example, to
replace the Amazon S3 destination with Amazon Redshift) or change the
parameters associated with a destination (for example, to change the
bucket name of the Amazon S3 destination). The update might not occur
immediately. The target delivery stream remains active while the
configurations are updated, so data writes to the delivery stream can
continue during this process. The updated configurations are usually
effective within a few minutes.

Switching between Amazon ES and other services is not supported. For an
Amazon ES destination, you can only update to another Amazon ES
destination.

If the destination type is the same, Kinesis Data Firehose merges the
configuration parameters specified with the destination configuration
that already exists on the delivery stream. If any of the parameters are
not specified in the call, the existing values are retained. For
example, in the Amazon S3 destination, if EncryptionConfiguration is not
specified, then the existing `EncryptionConfiguration` is maintained on
the destination.

If the destination type is not the same, for example, changing the
destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose
does not merge any parameters. In this case, all parameters must be
specified.

Kinesis Data Firehose uses `CurrentDeliveryStreamVersionId` to avoid
race conditions and conflicting merges. This is a required field, and
the service updates the configuration only if the existing configuration
has a version ID that matches. After the update is applied successfully,
the version ID is updated, and can be retrieved using
`describe_delivery_stream`. Use the new version ID to set
`CurrentDeliveryStreamVersionId` in the next call.

### Usage

    firehose_update_destination(DeliveryStreamName,
      CurrentDeliveryStreamVersionId, DestinationId, S3DestinationUpdate,
      ExtendedS3DestinationUpdate, RedshiftDestinationUpdate,
      ElasticsearchDestinationUpdate,
      AmazonopensearchserviceDestinationUpdate, SplunkDestinationUpdate,
      HttpEndpointDestinationUpdate,
      AmazonOpenSearchServerlessDestinationUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_update_destination_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_update_destination_:_CurrentDeliveryStreamVersionId">CurrentDeliveryStreamVersionId</code></td>
<td><p>[required] Obtain this value from the <code>VersionId</code>
result of DeliveryStreamDescription. This value is required, and helps
the service perform conditional operations. For example, if there is an
interleaving update and this value is null, then the update destination
fails. After the update is successful, the <code>VersionId</code> value
is updated. The service then performs a merge of the old configuration
with the new configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_update_destination_:_DestinationId">DestinationId</code></td>
<td><p>[required] The ID of the destination.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_update_destination_:_S3DestinationUpdate">S3DestinationUpdate</code></td>
<td><p>[Deprecated] Describes an update for a destination in Amazon
S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_update_destination_:_ExtendedS3DestinationUpdate">ExtendedS3DestinationUpdate</code></td>
<td><p>Describes an update for a destination in Amazon S3.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_update_destination_:_RedshiftDestinationUpdate">RedshiftDestinationUpdate</code></td>
<td><p>Describes an update for a destination in Amazon
Redshift.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_update_destination_:_ElasticsearchDestinationUpdate">ElasticsearchDestinationUpdate</code></td>
<td><p>Describes an update for a destination in Amazon ES.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_update_destination_:_AmazonopensearchserviceDestinationUpdate">AmazonopensearchserviceDestinationUpdate</code></td>
<td><p>Describes an update for a destination in Amazon OpenSearch
Service.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_update_destination_:_SplunkDestinationUpdate">SplunkDestinationUpdate</code></td>
<td><p>Describes an update for a destination in Splunk.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_update_destination_:_HttpEndpointDestinationUpdate">HttpEndpointDestinationUpdate</code></td>
<td><p>Describes an update to the specified HTTP endpoint
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_update_destination_:_AmazonOpenSearchServerlessDestinationUpdate">AmazonOpenSearchServerlessDestinationUpdate</code></td>
<td><p>Describes an update for a destination in the Serverless offering
for Amazon OpenSearch Service.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_destination(
      DeliveryStreamName = "string",
      CurrentDeliveryStreamVersionId = "string",
      DestinationId = "string",
      S3DestinationUpdate = list(
        RoleARN = "string",
        BucketARN = "string",
        Prefix = "string",
        ErrorOutputPrefix = "string",
        BufferingHints = list(
          SizeInMBs = 123,
          IntervalInSeconds = 123
        ),
        CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
        EncryptionConfiguration = list(
          NoEncryptionConfig = "NoEncryption",
          KMSEncryptionConfig = list(
            AWSKMSKeyARN = "string"
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        )
      ),
      ExtendedS3DestinationUpdate = list(
        RoleARN = "string",
        BucketARN = "string",
        Prefix = "string",
        ErrorOutputPrefix = "string",
        BufferingHints = list(
          SizeInMBs = 123,
          IntervalInSeconds = 123
        ),
        CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
        EncryptionConfiguration = list(
          NoEncryptionConfig = "NoEncryption",
          KMSEncryptionConfig = list(
            AWSKMSKeyARN = "string"
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        S3BackupMode = "Disabled"|"Enabled",
        S3BackupUpdate = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        DataFormatConversionConfiguration = list(
          SchemaConfiguration = list(
            RoleARN = "string",
            CatalogId = "string",
            DatabaseName = "string",
            TableName = "string",
            Region = "string",
            VersionId = "string"
          ),
          InputFormatConfiguration = list(
            Deserializer = list(
              OpenXJsonSerDe = list(
                ConvertDotsInJsonKeysToUnderscores = TRUE|FALSE,
                CaseInsensitive = TRUE|FALSE,
                ColumnToJsonKeyMappings = list(
                  "string"
                )
              ),
              HiveJsonSerDe = list(
                TimestampFormats = list(
                  "string"
                )
              )
            )
          ),
          OutputFormatConfiguration = list(
            Serializer = list(
              ParquetSerDe = list(
                BlockSizeBytes = 123,
                PageSizeBytes = 123,
                Compression = "UNCOMPRESSED"|"GZIP"|"SNAPPY",
                EnableDictionaryCompression = TRUE|FALSE,
                MaxPaddingBytes = 123,
                WriterVersion = "V1"|"V2"
              ),
              OrcSerDe = list(
                StripeSizeBytes = 123,
                BlockSizeBytes = 123,
                RowIndexStride = 123,
                EnablePadding = TRUE|FALSE,
                PaddingTolerance = 123.0,
                Compression = "NONE"|"ZLIB"|"SNAPPY",
                BloomFilterColumns = list(
                  "string"
                ),
                BloomFilterFalsePositiveProbability = 123.0,
                DictionaryKeyThreshold = 123.0,
                FormatVersion = "V0_11"|"V0_12"
              )
            )
          ),
          Enabled = TRUE|FALSE
        ),
        DynamicPartitioningConfiguration = list(
          RetryOptions = list(
            DurationInSeconds = 123
          ),
          Enabled = TRUE|FALSE
        )
      ),
      RedshiftDestinationUpdate = list(
        RoleARN = "string",
        ClusterJDBCURL = "string",
        CopyCommand = list(
          DataTableName = "string",
          DataTableColumns = "string",
          CopyOptions = "string"
        ),
        Username = "string",
        Password = "string",
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3Update = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        S3BackupMode = "Disabled"|"Enabled",
        S3BackupUpdate = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        )
      ),
      ElasticsearchDestinationUpdate = list(
        RoleARN = "string",
        DomainARN = "string",
        ClusterEndpoint = "string",
        IndexName = "string",
        TypeName = "string",
        IndexRotationPeriod = "NoRotation"|"OneHour"|"OneDay"|"OneWeek"|"OneMonth",
        BufferingHints = list(
          IntervalInSeconds = 123,
          SizeInMBs = 123
        ),
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3Update = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        )
      ),
      AmazonopensearchserviceDestinationUpdate = list(
        RoleARN = "string",
        DomainARN = "string",
        ClusterEndpoint = "string",
        IndexName = "string",
        TypeName = "string",
        IndexRotationPeriod = "NoRotation"|"OneHour"|"OneDay"|"OneWeek"|"OneMonth",
        BufferingHints = list(
          IntervalInSeconds = 123,
          SizeInMBs = 123
        ),
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3Update = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        )
      ),
      SplunkDestinationUpdate = list(
        HECEndpoint = "string",
        HECEndpointType = "Raw"|"Event",
        HECToken = "string",
        HECAcknowledgmentTimeoutInSeconds = 123,
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3BackupMode = "FailedEventsOnly"|"AllEvents",
        S3Update = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        )
      ),
      HttpEndpointDestinationUpdate = list(
        EndpointConfiguration = list(
          Url = "string",
          Name = "string",
          AccessKey = "string"
        ),
        BufferingHints = list(
          SizeInMBs = 123,
          IntervalInSeconds = 123
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        ),
        RequestConfiguration = list(
          ContentEncoding = "NONE"|"GZIP",
          CommonAttributes = list(
            list(
              AttributeName = "string",
              AttributeValue = "string"
            )
          )
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        RoleARN = "string",
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3BackupMode = "FailedDataOnly"|"AllData",
        S3Update = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        )
      ),
      AmazonOpenSearchServerlessDestinationUpdate = list(
        RoleARN = "string",
        CollectionEndpoint = "string",
        IndexName = "string",
        BufferingHints = list(
          IntervalInSeconds = 123,
          SizeInMBs = 123
        ),
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3Update = list(
          RoleARN = "string",
          BucketARN = "string",
          Prefix = "string",
          ErrorOutputPrefix = "string",
          BufferingHints = list(
            SizeInMBs = 123,
            IntervalInSeconds = 123
          ),
          CompressionFormat = "UNCOMPRESSED"|"GZIP"|"ZIP"|"Snappy"|"HADOOP_SNAPPY",
          EncryptionConfiguration = list(
            NoEncryptionConfig = "NoEncryption",
            KMSEncryptionConfig = list(
              AWSKMSKeyARN = "string"
            )
          ),
          CloudWatchLoggingOptions = list(
            Enabled = TRUE|FALSE,
            LogGroupName = "string",
            LogStreamName = "string"
          )
        ),
        ProcessingConfiguration = list(
          Enabled = TRUE|FALSE,
          Processors = list(
            list(
              Type = "RecordDeAggregation"|"Lambda"|"MetadataExtraction"|"AppendDelimiterToRecord",
              Parameters = list(
                list(
                  ParameterName = "LambdaArn"|"NumberOfRetries"|"MetadataExtractionQuery"|"JsonParsingEngine"|"RoleArn"|"BufferSizeInMBs"|"BufferIntervalInSeconds"|"SubRecordType"|"Delimiter",
                  ParameterValue = "string"
                )
              )
            )
          )
        ),
        CloudWatchLoggingOptions = list(
          Enabled = TRUE|FALSE,
          LogGroupName = "string",
          LogStreamName = "string"
        )
      )
    )
