<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_describe_delivery_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified delivery stream and its status

### Description

Describes the specified delivery stream and its status. For example,
after your delivery stream is created, call `describe_delivery_stream`
to see whether the delivery stream is `ACTIVE` and therefore ready for
data to be sent to it.

If the status of a delivery stream is `CREATING_FAILED`, this status
doesn't change, and you can't invoke `create_delivery_stream` again on
it. However, you can invoke the `delete_delivery_stream` operation to
delete it. If the status is `DELETING_FAILED`, you can force deletion by
invoking `delete_delivery_stream` again but with
DeleteDeliveryStreamInput$AllowForceDelete set to true.

### Usage

    firehose_describe_delivery_stream(DeliveryStreamName, Limit,
      ExclusiveStartDestinationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_describe_delivery_stream_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_describe_delivery_stream_:_Limit">Limit</code></td>
<td><p>The limit on the number of destinations to return. You can have
one destination per delivery stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_describe_delivery_stream_:_ExclusiveStartDestinationId">ExclusiveStartDestinationId</code></td>
<td><p>The ID of the destination to start returning the destination
information. Kinesis Data Firehose supports one destination per delivery
stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliveryStreamDescription = list(
        DeliveryStreamName = "string",
        DeliveryStreamARN = "string",
        DeliveryStreamStatus = "CREATING"|"CREATING_FAILED"|"DELETING"|"DELETING_FAILED"|"ACTIVE",
        FailureDescription = list(
          Type = "RETIRE_KMS_GRANT_FAILED"|"CREATE_KMS_GRANT_FAILED"|"KMS_ACCESS_DENIED"|"DISABLED_KMS_KEY"|"INVALID_KMS_KEY"|"KMS_KEY_NOT_FOUND"|"KMS_OPT_IN_REQUIRED"|"CREATE_ENI_FAILED"|"DELETE_ENI_FAILED"|"SUBNET_NOT_FOUND"|"SECURITY_GROUP_NOT_FOUND"|"ENI_ACCESS_DENIED"|"SUBNET_ACCESS_DENIED"|"SECURITY_GROUP_ACCESS_DENIED"|"UNKNOWN_ERROR",
          Details = "string"
        ),
        DeliveryStreamEncryptionConfiguration = list(
          KeyARN = "string",
          KeyType = "AWS_OWNED_CMK"|"CUSTOMER_MANAGED_CMK",
          Status = "ENABLED"|"ENABLING"|"ENABLING_FAILED"|"DISABLED"|"DISABLING"|"DISABLING_FAILED",
          FailureDescription = list(
            Type = "RETIRE_KMS_GRANT_FAILED"|"CREATE_KMS_GRANT_FAILED"|"KMS_ACCESS_DENIED"|"DISABLED_KMS_KEY"|"INVALID_KMS_KEY"|"KMS_KEY_NOT_FOUND"|"KMS_OPT_IN_REQUIRED"|"CREATE_ENI_FAILED"|"DELETE_ENI_FAILED"|"SUBNET_NOT_FOUND"|"SECURITY_GROUP_NOT_FOUND"|"ENI_ACCESS_DENIED"|"SUBNET_ACCESS_DENIED"|"SECURITY_GROUP_ACCESS_DENIED"|"UNKNOWN_ERROR",
            Details = "string"
          )
        ),
        DeliveryStreamType = "DirectPut"|"KinesisStreamAsSource",
        VersionId = "string",
        CreateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Source = list(
          KinesisStreamSourceDescription = list(
            KinesisStreamARN = "string",
            RoleARN = "string",
            DeliveryStartTimestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        Destinations = list(
          list(
            DestinationId = "string",
            S3DestinationDescription = list(
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
            ExtendedS3DestinationDescription = list(
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
              S3BackupDescription = list(
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
            RedshiftDestinationDescription = list(
              RoleARN = "string",
              ClusterJDBCURL = "string",
              CopyCommand = list(
                DataTableName = "string",
                DataTableColumns = "string",
                CopyOptions = "string"
              ),
              Username = "string",
              RetryOptions = list(
                DurationInSeconds = 123
              ),
              S3DestinationDescription = list(
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
              S3BackupDescription = list(
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
            ElasticsearchDestinationDescription = list(
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
              S3BackupMode = "FailedDocumentsOnly"|"AllDocuments",
              S3DestinationDescription = list(
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
              ),
              VpcConfigurationDescription = list(
                SubnetIds = list(
                  "string"
                ),
                RoleARN = "string",
                SecurityGroupIds = list(
                  "string"
                ),
                VpcId = "string"
              )
            ),
            AmazonopensearchserviceDestinationDescription = list(
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
              S3BackupMode = "FailedDocumentsOnly"|"AllDocuments",
              S3DestinationDescription = list(
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
              ),
              VpcConfigurationDescription = list(
                SubnetIds = list(
                  "string"
                ),
                RoleARN = "string",
                SecurityGroupIds = list(
                  "string"
                ),
                VpcId = "string"
              )
            ),
            SplunkDestinationDescription = list(
              HECEndpoint = "string",
              HECEndpointType = "Raw"|"Event",
              HECToken = "string",
              HECAcknowledgmentTimeoutInSeconds = 123,
              RetryOptions = list(
                DurationInSeconds = 123
              ),
              S3BackupMode = "FailedEventsOnly"|"AllEvents",
              S3DestinationDescription = list(
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
            HttpEndpointDestinationDescription = list(
              EndpointConfiguration = list(
                Url = "string",
                Name = "string"
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
              S3DestinationDescription = list(
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
            AmazonOpenSearchServerlessDestinationDescription = list(
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
              S3BackupMode = "FailedDocumentsOnly"|"AllDocuments",
              S3DestinationDescription = list(
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
              ),
              VpcConfigurationDescription = list(
                SubnetIds = list(
                  "string"
                ),
                RoleARN = "string",
                SecurityGroupIds = list(
                  "string"
                ),
                VpcId = "string"
              )
            )
          )
        ),
        HasMoreDestinations = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_delivery_stream(
      DeliveryStreamName = "string",
      Limit = 123,
      ExclusiveStartDestinationId = "string"
    )
