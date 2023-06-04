<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_create_delivery_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Kinesis Data Firehose delivery stream

### Description

Creates a Kinesis Data Firehose delivery stream.

By default, you can create up to 50 delivery streams per Amazon Web
Services Region.

This is an asynchronous operation that immediately returns. The initial
status of the delivery stream is `CREATING`. After the delivery stream
is created, its status is `ACTIVE` and it now accepts data. If the
delivery stream creation fails, the status transitions to
`CREATING_FAILED`. Attempts to send data to a delivery stream that is
not in the `ACTIVE` state cause an exception. To check the state of a
delivery stream, use `describe_delivery_stream`.

If the status of a delivery stream is `CREATING_FAILED`, this status
doesn't change, and you can't invoke `create_delivery_stream` again on
it. However, you can invoke the `delete_delivery_stream` operation to
delete it.

A Kinesis Data Firehose delivery stream can be configured to receive
records directly from providers using `put_record` or
`put_record_batch`, or it can be configured to use an existing Kinesis
stream as its source. To specify a Kinesis data stream as input, set the
`DeliveryStreamType` parameter to `KinesisStreamAsSource`, and provide
the Kinesis stream Amazon Resource Name (ARN) and role ARN in the
`KinesisStreamSourceConfiguration` parameter.

To create a delivery stream with server-side encryption (SSE) enabled,
include DeliveryStreamEncryptionConfigurationInput in your request. This
is optional. You can also invoke `start_delivery_stream_encryption` to
turn on SSE for an existing delivery stream that doesn't have SSE
enabled.

A delivery stream is configured with a single destination: Amazon S3,
Amazon ES, Amazon Redshift, or Splunk. You must specify only one of the
following destination configuration parameters:
`ExtendedS3DestinationConfiguration`, `S3DestinationConfiguration`,
`ElasticsearchDestinationConfiguration`,
`RedshiftDestinationConfiguration`, or `SplunkDestinationConfiguration`.

When you specify `S3DestinationConfiguration`, you can also provide the
following optional values: BufferingHints, `EncryptionConfiguration`,
and `CompressionFormat`. By default, if no `BufferingHints` value is
provided, Kinesis Data Firehose buffers data up to 5 MB or for 5
minutes, whichever condition is satisfied first. `BufferingHints` is a
hint, so there are some cases where the service cannot adhere to these
conditions strictly. For example, record boundaries might be such that
the size is a little over or under the configured buffering size. By
default, no encryption is performed. We strongly recommend that you
enable encryption to ensure secure data storage in Amazon S3.

A few notes about Amazon Redshift as a destination:

-   An Amazon Redshift destination requires an S3 bucket as intermediate
    location. Kinesis Data Firehose first delivers data to Amazon S3 and
    then uses `COPY` syntax to load data into an Amazon Redshift table.
    This is specified in the
    `RedshiftDestinationConfiguration.S3Configuration` parameter.

-   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    `RedshiftDestinationConfiguration.S3Configuration` because the
    Amazon Redshift `COPY` operation that reads from the S3 bucket
    doesn't support these compression formats.

-   We strongly recommend that you use the user name and password you
    provide exclusively with Kinesis Data Firehose, and that the
    permissions for the account are restricted for Amazon Redshift
    `INSERT` permissions.

Kinesis Data Firehose assumes the IAM role that is configured as part of
the destination. The role should allow the Kinesis Data Firehose
principal to assume the role, and the role should have permissions that
allow the service to deliver the data. For more information, see [Grant
Kinesis Data Firehose Access to an Amazon S3
Destination](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3)
in the *Amazon Kinesis Data Firehose Developer Guide*.

### Usage

    firehose_create_delivery_stream(DeliveryStreamName, DeliveryStreamType,
      KinesisStreamSourceConfiguration,
      DeliveryStreamEncryptionConfigurationInput, S3DestinationConfiguration,
      ExtendedS3DestinationConfiguration, RedshiftDestinationConfiguration,
      ElasticsearchDestinationConfiguration,
      AmazonopensearchserviceDestinationConfiguration,
      SplunkDestinationConfiguration, HttpEndpointDestinationConfiguration,
      Tags, AmazonOpenSearchServerlessDestinationConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream. This name must be
unique per Amazon Web Services account in the same Amazon Web Services
Region. If the delivery streams are in different accounts or different
Regions, you can have multiple delivery streams with the same
name.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_create_delivery_stream_:_DeliveryStreamType">DeliveryStreamType</code></td>
<td><p>The delivery stream type. This parameter can be one of the
following values:</p>
<ul>
<li><p><code>DirectPut</code>: Provider applications access the delivery
stream directly.</p></li>
<li><p><code>KinesisStreamAsSource</code>: The delivery stream uses a
Kinesis data stream as a source.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_KinesisStreamSourceConfiguration">KinesisStreamSourceConfiguration</code></td>
<td><p>When a Kinesis data stream is used as the source for the delivery
stream, a KinesisStreamSourceConfiguration containing the Kinesis data
stream Amazon Resource Name (ARN) and the role ARN for the source
stream.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_create_delivery_stream_:_DeliveryStreamEncryptionConfigurationInput">DeliveryStreamEncryptionConfigurationInput</code></td>
<td><p>Used to specify the type and Amazon Resource Name (ARN) of the
KMS key needed for Server-Side Encryption (SSE).</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_S3DestinationConfiguration">S3DestinationConfiguration</code></td>
<td><p>[Deprecated] The destination in Amazon S3. You can specify only
one destination.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_create_delivery_stream_:_ExtendedS3DestinationConfiguration">ExtendedS3DestinationConfiguration</code></td>
<td><p>The destination in Amazon S3. You can specify only one
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_RedshiftDestinationConfiguration">RedshiftDestinationConfiguration</code></td>
<td><p>The destination in Amazon Redshift. You can specify only one
destination.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_create_delivery_stream_:_ElasticsearchDestinationConfiguration">ElasticsearchDestinationConfiguration</code></td>
<td><p>The destination in Amazon ES. You can specify only one
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_AmazonopensearchserviceDestinationConfiguration">AmazonopensearchserviceDestinationConfiguration</code></td>
<td><p>The destination in Amazon OpenSearch Service. You can specify
only one destination.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_create_delivery_stream_:_SplunkDestinationConfiguration">SplunkDestinationConfiguration</code></td>
<td><p>The destination in Splunk. You can specify only one
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_HttpEndpointDestinationConfiguration">HttpEndpointDestinationConfiguration</code></td>
<td><p>Enables configuring Kinesis Firehose to deliver data to any HTTP
endpoint destination. You can specify only one destination.</p></td>
</tr>
<tr class="even">
<td><code id="firehose_create_delivery_stream_:_Tags">Tags</code></td>
<td><p>A set of tags to assign to the delivery stream. A tag is a
key-value pair that you can define and assign to Amazon Web Services
resources. Tags are metadata. For example, you can add friendly names
and descriptions or other types of information that can help you
distinguish the delivery stream. For more information about tags, see <a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
Cost Allocation Tags</a> in the Amazon Web Services Billing and Cost
Management User Guide.</p>
<p>You can specify up to 50 tags when creating a delivery
stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_create_delivery_stream_:_AmazonOpenSearchServerlessDestinationConfiguration">AmazonOpenSearchServerlessDestinationConfiguration</code></td>
<td><p>The destination in the Serverless offering for Amazon OpenSearch
Service. You can specify only one destination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliveryStreamARN = "string"
    )

### Request syntax

    svc$create_delivery_stream(
      DeliveryStreamName = "string",
      DeliveryStreamType = "DirectPut"|"KinesisStreamAsSource",
      KinesisStreamSourceConfiguration = list(
        KinesisStreamARN = "string",
        RoleARN = "string"
      ),
      DeliveryStreamEncryptionConfigurationInput = list(
        KeyARN = "string",
        KeyType = "AWS_OWNED_CMK"|"CUSTOMER_MANAGED_CMK"
      ),
      S3DestinationConfiguration = list(
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
      ExtendedS3DestinationConfiguration = list(
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
        S3BackupConfiguration = list(
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
      RedshiftDestinationConfiguration = list(
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
        S3Configuration = list(
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
        S3BackupConfiguration = list(
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
      ElasticsearchDestinationConfiguration = list(
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
        S3Configuration = list(
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
        VpcConfiguration = list(
          SubnetIds = list(
            "string"
          ),
          RoleARN = "string",
          SecurityGroupIds = list(
            "string"
          )
        )
      ),
      AmazonopensearchserviceDestinationConfiguration = list(
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
        S3Configuration = list(
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
        VpcConfiguration = list(
          SubnetIds = list(
            "string"
          ),
          RoleARN = "string",
          SecurityGroupIds = list(
            "string"
          )
        )
      ),
      SplunkDestinationConfiguration = list(
        HECEndpoint = "string",
        HECEndpointType = "Raw"|"Event",
        HECToken = "string",
        HECAcknowledgmentTimeoutInSeconds = 123,
        RetryOptions = list(
          DurationInSeconds = 123
        ),
        S3BackupMode = "FailedEventsOnly"|"AllEvents",
        S3Configuration = list(
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
      HttpEndpointDestinationConfiguration = list(
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
        S3Configuration = list(
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AmazonOpenSearchServerlessDestinationConfiguration = list(
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
        S3Configuration = list(
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
        VpcConfiguration = list(
          SubnetIds = list(
            "string"
          ),
          RoleARN = "string",
          SecurityGroupIds = list(
            "string"
          )
        )
      )
    )
