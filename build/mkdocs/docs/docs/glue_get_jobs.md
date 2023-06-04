<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all current job definitions

### Description

Retrieves all current job definitions.

### Usage

    glue_get_jobs(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_jobs_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Jobs = list(
        list(
          Name = "string",
          Description = "string",
          LogUri = "string",
          Role = "string",
          CreatedOn = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedOn = as.POSIXct(
            "2015-01-01"
          ),
          ExecutionProperty = list(
            MaxConcurrentRuns = 123
          ),
          Command = list(
            Name = "string",
            ScriptLocation = "string",
            PythonVersion = "string"
          ),
          DefaultArguments = list(
            "string"
          ),
          NonOverridableArguments = list(
            "string"
          ),
          Connections = list(
            Connections = list(
              "string"
            )
          ),
          MaxRetries = 123,
          AllocatedCapacity = 123,
          Timeout = 123,
          MaxCapacity = 123.0,
          WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
          NumberOfWorkers = 123,
          SecurityConfiguration = "string",
          NotificationProperty = list(
            NotifyDelayAfter = 123
          ),
          GlueVersion = "string",
          CodeGenConfigurationNodes = list(
            list(
              AthenaConnectorSource = list(
                Name = "string",
                ConnectionName = "string",
                ConnectorName = "string",
                ConnectionType = "string",
                ConnectionTable = "string",
                SchemaName = "string",
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              JDBCConnectorSource = list(
                Name = "string",
                ConnectionName = "string",
                ConnectorName = "string",
                ConnectionType = "string",
                AdditionalOptions = list(
                  FilterPredicate = "string",
                  PartitionColumn = "string",
                  LowerBound = 123,
                  UpperBound = 123,
                  NumPartitions = 123,
                  JobBookmarkKeys = list(
                    "string"
                  ),
                  JobBookmarkKeysSortOrder = "string",
                  DataTypeMapping = list(
                    "DATE"|"STRING"|"TIMESTAMP"|"INT"|"FLOAT"|"LONG"|"BIGDECIMAL"|"BYTE"|"SHORT"|"DOUBLE"
                  )
                ),
                ConnectionTable = "string",
                Query = "string",
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              SparkConnectorSource = list(
                Name = "string",
                ConnectionName = "string",
                ConnectorName = "string",
                ConnectionType = "string",
                AdditionalOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              CatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              RedshiftSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                RedshiftTmpDir = "string",
                TmpDirIAMRole = "string"
              ),
              S3CatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                PartitionPredicate = "string",
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123
                )
              ),
              S3CsvSource = list(
                Name = "string",
                Paths = list(
                  "string"
                ),
                CompressionType = "gzip"|"bzip2",
                Exclusions = list(
                  "string"
                ),
                GroupSize = "string",
                GroupFiles = "string",
                Recurse = TRUE|FALSE,
                MaxBand = 123,
                MaxFilesInBand = 123,
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123,
                  EnableSamplePath = TRUE|FALSE,
                  SamplePath = "string"
                ),
                Separator = "comma"|"ctrla"|"pipe"|"semicolon"|"tab",
                Escaper = "string",
                QuoteChar = "quote"|"quillemet"|"single_quote"|"disabled",
                Multiline = TRUE|FALSE,
                WithHeader = TRUE|FALSE,
                WriteHeader = TRUE|FALSE,
                SkipFirst = TRUE|FALSE,
                OptimizePerformance = TRUE|FALSE,
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              S3JsonSource = list(
                Name = "string",
                Paths = list(
                  "string"
                ),
                CompressionType = "gzip"|"bzip2",
                Exclusions = list(
                  "string"
                ),
                GroupSize = "string",
                GroupFiles = "string",
                Recurse = TRUE|FALSE,
                MaxBand = 123,
                MaxFilesInBand = 123,
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123,
                  EnableSamplePath = TRUE|FALSE,
                  SamplePath = "string"
                ),
                JsonPath = "string",
                Multiline = TRUE|FALSE,
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              S3ParquetSource = list(
                Name = "string",
                Paths = list(
                  "string"
                ),
                CompressionType = "snappy"|"lzo"|"gzip"|"uncompressed"|"none",
                Exclusions = list(
                  "string"
                ),
                GroupSize = "string",
                GroupFiles = "string",
                Recurse = TRUE|FALSE,
                MaxBand = 123,
                MaxFilesInBand = 123,
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123,
                  EnableSamplePath = TRUE|FALSE,
                  SamplePath = "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              RelationalCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              DynamoDBCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              JDBCConnectorTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                ConnectionName = "string",
                ConnectionTable = "string",
                ConnectorName = "string",
                ConnectionType = "string",
                AdditionalOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              SparkConnectorTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                ConnectionName = "string",
                ConnectorName = "string",
                ConnectionType = "string",
                AdditionalOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              CatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Database = "string",
                Table = "string"
              ),
              RedshiftTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Database = "string",
                Table = "string",
                RedshiftTmpDir = "string",
                TmpDirIAMRole = "string",
                UpsertRedshiftOptions = list(
                  TableLocation = "string",
                  ConnectionName = "string",
                  UpsertKeys = list(
                    "string"
                  )
                )
              ),
              S3CatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Table = "string",
                Database = "string",
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG"
                )
              ),
              S3GlueParquetTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Path = "string",
                Compression = "snappy"|"lzo"|"gzip"|"uncompressed"|"none",
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG",
                  Table = "string",
                  Database = "string"
                )
              ),
              S3DirectTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Path = "string",
                Compression = "string",
                Format = "json"|"csv"|"avro"|"orc"|"parquet"|"hudi"|"delta",
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG",
                  Table = "string",
                  Database = "string"
                )
              ),
              ApplyMapping = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Mapping = list(
                  list(
                    ToKey = "string",
                    FromPath = list(
                      "string"
                    ),
                    FromType = "string",
                    ToType = "string",
                    Dropped = TRUE|FALSE,
                    Children = list()
                  )
                )
              ),
              SelectFields = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Paths = list(
                  list(
                    "string"
                  )
                )
              ),
              DropFields = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Paths = list(
                  list(
                    "string"
                  )
                )
              ),
              RenameField = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                SourcePath = list(
                  "string"
                ),
                TargetPath = list(
                  "string"
                )
              ),
              Spigot = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Path = "string",
                Topk = 123,
                Prob = 123.0
              ),
              Join = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                JoinType = "equijoin"|"left"|"right"|"outer"|"leftsemi"|"leftanti",
                Columns = list(
                  list(
                    From = "string",
                    Keys = list(
                      list(
                        "string"
                      )
                    )
                  )
                )
              ),
              SplitFields = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Paths = list(
                  list(
                    "string"
                  )
                )
              ),
              SelectFromCollection = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Index = 123
              ),
              FillMissingValues = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                ImputedPath = "string",
                FilledPath = "string"
              ),
              Filter = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                LogicalOperator = "AND"|"OR",
                Filters = list(
                  list(
                    Operation = "EQ"|"LT"|"GT"|"LTE"|"GTE"|"REGEX"|"ISNULL",
                    Negated = TRUE|FALSE,
                    Values = list(
                      list(
                        Type = "COLUMNEXTRACTED"|"CONSTANT",
                        Value = list(
                          "string"
                        )
                      )
                    )
                  )
                )
              ),
              CustomCode = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Code = "string",
                ClassName = "string",
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              SparkSQL = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                SqlQuery = "string",
                SqlAliases = list(
                  list(
                    From = "string",
                    Alias = "string"
                  )
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              DirectKinesisSource = list(
                Name = "string",
                WindowSize = 123,
                DetectSchema = TRUE|FALSE,
                StreamingOptions = list(
                  EndpointUrl = "string",
                  StreamName = "string",
                  Classification = "string",
                  Delimiter = "string",
                  StartingPosition = "latest"|"trim_horizon"|"earliest",
                  MaxFetchTimeInMs = 123,
                  MaxFetchRecordsPerShard = 123,
                  MaxRecordPerRead = 123,
                  AddIdleTimeBetweenReads = TRUE|FALSE,
                  IdleTimeBetweenReadsInMs = 123,
                  DescribeShardInterval = 123,
                  NumRetries = 123,
                  RetryIntervalMs = 123,
                  MaxRetryIntervalMs = 123,
                  AvoidEmptyBatches = TRUE|FALSE,
                  StreamArn = "string",
                  RoleArn = "string",
                  RoleSessionName = "string",
                  AddRecordTimestamp = "string",
                  EmitConsumerLagMetrics = "string"
                ),
                DataPreviewOptions = list(
                  PollingTime = 123,
                  RecordPollingLimit = 123
                )
              ),
              DirectKafkaSource = list(
                Name = "string",
                StreamingOptions = list(
                  BootstrapServers = "string",
                  SecurityProtocol = "string",
                  ConnectionName = "string",
                  TopicName = "string",
                  Assign = "string",
                  SubscribePattern = "string",
                  Classification = "string",
                  Delimiter = "string",
                  StartingOffsets = "string",
                  EndingOffsets = "string",
                  PollTimeoutMs = 123,
                  NumRetries = 123,
                  RetryIntervalMs = 123,
                  MaxOffsetsPerTrigger = 123,
                  MinPartitions = 123,
                  IncludeHeaders = TRUE|FALSE,
                  AddRecordTimestamp = "string",
                  EmitConsumerLagMetrics = "string"
                ),
                WindowSize = 123,
                DetectSchema = TRUE|FALSE,
                DataPreviewOptions = list(
                  PollingTime = 123,
                  RecordPollingLimit = 123
                )
              ),
              CatalogKinesisSource = list(
                Name = "string",
                WindowSize = 123,
                DetectSchema = TRUE|FALSE,
                Table = "string",
                Database = "string",
                StreamingOptions = list(
                  EndpointUrl = "string",
                  StreamName = "string",
                  Classification = "string",
                  Delimiter = "string",
                  StartingPosition = "latest"|"trim_horizon"|"earliest",
                  MaxFetchTimeInMs = 123,
                  MaxFetchRecordsPerShard = 123,
                  MaxRecordPerRead = 123,
                  AddIdleTimeBetweenReads = TRUE|FALSE,
                  IdleTimeBetweenReadsInMs = 123,
                  DescribeShardInterval = 123,
                  NumRetries = 123,
                  RetryIntervalMs = 123,
                  MaxRetryIntervalMs = 123,
                  AvoidEmptyBatches = TRUE|FALSE,
                  StreamArn = "string",
                  RoleArn = "string",
                  RoleSessionName = "string",
                  AddRecordTimestamp = "string",
                  EmitConsumerLagMetrics = "string"
                ),
                DataPreviewOptions = list(
                  PollingTime = 123,
                  RecordPollingLimit = 123
                )
              ),
              CatalogKafkaSource = list(
                Name = "string",
                WindowSize = 123,
                DetectSchema = TRUE|FALSE,
                Table = "string",
                Database = "string",
                StreamingOptions = list(
                  BootstrapServers = "string",
                  SecurityProtocol = "string",
                  ConnectionName = "string",
                  TopicName = "string",
                  Assign = "string",
                  SubscribePattern = "string",
                  Classification = "string",
                  Delimiter = "string",
                  StartingOffsets = "string",
                  EndingOffsets = "string",
                  PollTimeoutMs = 123,
                  NumRetries = 123,
                  RetryIntervalMs = 123,
                  MaxOffsetsPerTrigger = 123,
                  MinPartitions = 123,
                  IncludeHeaders = TRUE|FALSE,
                  AddRecordTimestamp = "string",
                  EmitConsumerLagMetrics = "string"
                ),
                DataPreviewOptions = list(
                  PollingTime = 123,
                  RecordPollingLimit = 123
                )
              ),
              DropNullFields = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                NullCheckBoxList = list(
                  IsEmpty = TRUE|FALSE,
                  IsNullString = TRUE|FALSE,
                  IsNegOne = TRUE|FALSE
                ),
                NullTextList = list(
                  list(
                    Value = "string",
                    Datatype = list(
                      Id = "string",
                      Label = "string"
                    )
                  )
                )
              ),
              Merge = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Source = "string",
                PrimaryKeys = list(
                  list(
                    "string"
                  )
                )
              ),
              Union = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                UnionType = "ALL"|"DISTINCT"
              ),
              PIIDetection = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PiiType = "RowAudit"|"RowMasking"|"ColumnAudit"|"ColumnMasking",
                EntityTypesToDetect = list(
                  "string"
                ),
                OutputColumnName = "string",
                SampleFraction = 123.0,
                ThresholdFraction = 123.0,
                MaskValue = "string"
              ),
              Aggregate = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Groups = list(
                  list(
                    "string"
                  )
                ),
                Aggs = list(
                  list(
                    Column = list(
                      "string"
                    ),
                    AggFunc = "avg"|"countDistinct"|"count"|"first"|"last"|"kurtosis"|"max"|"min"|"skewness"|"stddev_samp"|"stddev_pop"|"sum"|"sumDistinct"|"var_samp"|"var_pop"
                  )
                )
              ),
              DropDuplicates = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Columns = list(
                  list(
                    "string"
                  )
                )
              ),
              GovernedCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Table = "string",
                Database = "string",
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG"
                )
              ),
              GovernedCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                PartitionPredicate = "string",
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123
                )
              ),
              MicrosoftSQLServerCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              MySQLCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              OracleSQLCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              PostgreSQLCatalogSource = list(
                Name = "string",
                Database = "string",
                Table = "string"
              ),
              MicrosoftSQLServerCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Database = "string",
                Table = "string"
              ),
              MySQLCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Database = "string",
                Table = "string"
              ),
              OracleSQLCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Database = "string",
                Table = "string"
              ),
              PostgreSQLCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Database = "string",
                Table = "string"
              ),
              DynamicTransform = list(
                Name = "string",
                TransformName = "string",
                Inputs = list(
                  "string"
                ),
                Parameters = list(
                  list(
                    Name = "string",
                    Type = "str"|"int"|"float"|"complex"|"bool"|"list"|"null",
                    ValidationRule = "string",
                    ValidationMessage = "string",
                    Value = list(
                      "string"
                    ),
                    ListType = "str"|"int"|"float"|"complex"|"bool"|"list"|"null",
                    IsOptional = TRUE|FALSE
                  )
                ),
                FunctionName = "string",
                Path = "string",
                Version = "string",
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              EvaluateDataQuality = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Ruleset = "string",
                Output = "PrimaryInput"|"EvaluationResults",
                PublishingOptions = list(
                  EvaluationContext = "string",
                  ResultsS3Prefix = "string",
                  CloudWatchMetricsEnabled = TRUE|FALSE,
                  ResultsPublishingEnabled = TRUE|FALSE
                ),
                StopJobOnFailureOptions = list(
                  StopJobOnFailureTiming = "Immediate"|"AfterDataLoad"
                )
              ),
              S3CatalogHudiSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                AdditionalHudiOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              CatalogHudiSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                AdditionalHudiOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              S3HudiSource = list(
                Name = "string",
                Paths = list(
                  "string"
                ),
                AdditionalHudiOptions = list(
                  "string"
                ),
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123,
                  EnableSamplePath = TRUE|FALSE,
                  SamplePath = "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              S3HudiCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Table = "string",
                Database = "string",
                AdditionalOptions = list(
                  "string"
                ),
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG"
                )
              ),
              S3HudiDirectTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                Path = "string",
                Compression = "gzip"|"lzo"|"uncompressed"|"snappy",
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Format = "json"|"csv"|"avro"|"orc"|"parquet"|"hudi"|"delta",
                AdditionalOptions = list(
                  "string"
                ),
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG",
                  Table = "string",
                  Database = "string"
                )
              ),
              DirectJDBCSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                ConnectionName = "string",
                ConnectionType = "sqlserver"|"mysql"|"oracle"|"postgresql"|"redshift",
                RedshiftTmpDir = "string"
              ),
              S3CatalogDeltaSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                AdditionalDeltaOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              CatalogDeltaSource = list(
                Name = "string",
                Database = "string",
                Table = "string",
                AdditionalDeltaOptions = list(
                  "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              S3DeltaSource = list(
                Name = "string",
                Paths = list(
                  "string"
                ),
                AdditionalDeltaOptions = list(
                  "string"
                ),
                AdditionalOptions = list(
                  BoundedSize = 123,
                  BoundedFiles = 123,
                  EnableSamplePath = TRUE|FALSE,
                  SamplePath = "string"
                ),
                OutputSchemas = list(
                  list(
                    Columns = list(
                      list(
                        Name = "string",
                        Type = "string"
                      )
                    )
                  )
                )
              ),
              S3DeltaCatalogTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Table = "string",
                Database = "string",
                AdditionalOptions = list(
                  "string"
                ),
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG"
                )
              ),
              S3DeltaDirectTarget = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                PartitionKeys = list(
                  list(
                    "string"
                  )
                ),
                Path = "string",
                Compression = "uncompressed"|"snappy",
                Format = "json"|"csv"|"avro"|"orc"|"parquet"|"hudi"|"delta",
                AdditionalOptions = list(
                  "string"
                ),
                SchemaChangePolicy = list(
                  EnableUpdateCatalog = TRUE|FALSE,
                  UpdateBehavior = "UPDATE_IN_DATABASE"|"LOG",
                  Table = "string",
                  Database = "string"
                )
              ),
              AmazonRedshiftSource = list(
                Name = "string",
                Data = list(
                  AccessType = "string",
                  SourceType = "string",
                  Connection = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  Schema = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  Table = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  CatalogDatabase = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  CatalogTable = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  CatalogRedshiftSchema = "string",
                  CatalogRedshiftTable = "string",
                  TempDir = "string",
                  IamRole = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  AdvancedOptions = list(
                    list(
                      Key = "string",
                      Value = "string"
                    )
                  ),
                  SampleQuery = "string",
                  PreAction = "string",
                  PostAction = "string",
                  Action = "string",
                  TablePrefix = "string",
                  Upsert = TRUE|FALSE,
                  MergeAction = "string",
                  MergeWhenMatched = "string",
                  MergeWhenNotMatched = "string",
                  MergeClause = "string",
                  CrawlerConnection = "string",
                  TableSchema = list(
                    list(
                      Value = "string",
                      Label = "string",
                      Description = "string"
                    )
                  ),
                  StagingTable = "string",
                  SelectedColumns = list(
                    list(
                      Value = "string",
                      Label = "string",
                      Description = "string"
                    )
                  )
                )
              ),
              AmazonRedshiftTarget = list(
                Name = "string",
                Data = list(
                  AccessType = "string",
                  SourceType = "string",
                  Connection = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  Schema = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  Table = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  CatalogDatabase = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  CatalogTable = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  CatalogRedshiftSchema = "string",
                  CatalogRedshiftTable = "string",
                  TempDir = "string",
                  IamRole = list(
                    Value = "string",
                    Label = "string",
                    Description = "string"
                  ),
                  AdvancedOptions = list(
                    list(
                      Key = "string",
                      Value = "string"
                    )
                  ),
                  SampleQuery = "string",
                  PreAction = "string",
                  PostAction = "string",
                  Action = "string",
                  TablePrefix = "string",
                  Upsert = TRUE|FALSE,
                  MergeAction = "string",
                  MergeWhenMatched = "string",
                  MergeWhenNotMatched = "string",
                  MergeClause = "string",
                  CrawlerConnection = "string",
                  TableSchema = list(
                    list(
                      Value = "string",
                      Label = "string",
                      Description = "string"
                    )
                  ),
                  StagingTable = "string",
                  SelectedColumns = list(
                    list(
                      Value = "string",
                      Label = "string",
                      Description = "string"
                    )
                  )
                ),
                Inputs = list(
                  "string"
                )
              ),
              EvaluateDataQualityMultiFrame = list(
                Name = "string",
                Inputs = list(
                  "string"
                ),
                AdditionalDataSources = list(
                  "string"
                ),
                Ruleset = "string",
                PublishingOptions = list(
                  EvaluationContext = "string",
                  ResultsS3Prefix = "string",
                  CloudWatchMetricsEnabled = TRUE|FALSE,
                  ResultsPublishingEnabled = TRUE|FALSE
                ),
                AdditionalOptions = list(
                  "string"
                ),
                StopJobOnFailureOptions = list(
                  StopJobOnFailureTiming = "Immediate"|"AfterDataLoad"
                )
              )
            )
          ),
          ExecutionClass = "FLEX"|"STANDARD",
          SourceControlDetails = list(
            Provider = "GITHUB"|"AWS_CODE_COMMIT",
            Repository = "string",
            Owner = "string",
            Branch = "string",
            Folder = "string",
            LastCommitId = "string",
            AuthStrategy = "PERSONAL_ACCESS_TOKEN"|"AWS_SECRETS_MANAGER",
            AuthToken = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_jobs(
      NextToken = "string",
      MaxResults = 123
    )
