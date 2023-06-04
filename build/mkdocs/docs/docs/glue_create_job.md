<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new job definition

### Description

Creates a new job definition.

### Usage

    glue_create_job(Name, Description, LogUri, Role, ExecutionProperty,
      Command, DefaultArguments, NonOverridableArguments, Connections,
      MaxRetries, AllocatedCapacity, Timeout, MaxCapacity,
      SecurityConfiguration, Tags, NotificationProperty, GlueVersion,
      NumberOfWorkers, WorkerType, CodeGenConfigurationNodes, ExecutionClass,
      SourceControlDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_job_:_Name">Name</code></td>
<td><p>[required] The name you assign to this job definition. It must be
unique in your account.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_job_:_Description">Description</code></td>
<td><p>Description of the job being defined.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_job_:_LogUri">LogUri</code></td>
<td><p>This field is reserved for future use.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_job_:_Role">Role</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the IAM role
associated with this job.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_job_:_ExecutionProperty">ExecutionProperty</code></td>
<td><p>An <code>ExecutionProperty</code> specifying the maximum number
of concurrent runs allowed for this job.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_job_:_Command">Command</code></td>
<td><p>[required] The <code>JobCommand</code> that runs this
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_job_:_DefaultArguments">DefaultArguments</code></td>
<td><p>The default arguments for this job.</p>
<p>You can specify arguments here that your own job-execution script
consumes, as well as arguments that Glue itself consumes.</p>
<p>Job arguments may be logged. Do not pass plaintext secrets as
arguments. Retrieve secrets from a Glue Connection, Secrets Manager or
other secret management mechanism if you intend to keep them within the
Job.</p>
<p>For information about how to specify and consume your own Job
arguments, see the <a
href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling
Glue APIs in Python</a> topic in the developer guide.</p>
<p>For information about the key-value pairs that Glue consumes to set
up your job, see the <a
href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special
Parameters Used by Glue</a> topic in the developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_job_:_NonOverridableArguments">NonOverridableArguments</code></td>
<td><p>Non-overridable arguments for this job, specified as name-value
pairs.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_job_:_Connections">Connections</code></td>
<td><p>The connections used for this job.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_job_:_MaxRetries">MaxRetries</code></td>
<td><p>The maximum number of times to retry this job if it
fails.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_job_:_AllocatedCapacity">AllocatedCapacity</code></td>
<td><p>This parameter is deprecated. Use <code>MaxCapacity</code>
instead.</p>
<p>The number of Glue data processing units (DPUs) to allocate to this
Job. You can allocate a minimum of 2 DPUs; the default is 10. A DPU is a
relative measure of processing power that consists of 4 vCPUs of compute
capacity and 16 GB of memory. For more information, see the <a
href="https://aws.amazon.com/glue/pricing/">Glue pricing
page</a>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_job_:_Timeout">Timeout</code></td>
<td><p>The job timeout in minutes. This is the maximum time that a job
run can consume resources before it is terminated and enters
<code>TIMEOUT</code> status. The default is 2,880 minutes (48
hours).</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_job_:_MaxCapacity">MaxCapacity</code></td>
<td><p>For Glue version 1.0 or earlier jobs, using the standard worker
type, the number of Glue data processing units (DPUs) that can be
allocated when this job runs. A DPU is a relative measure of processing
power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
For more information, see the <a
href="https://aws.amazon.com/glue/pricing/">Glue pricing page</a>.</p>
<p>Do not set <code style="white-space: pre;">⁠Max Capacity⁠</code> if
using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
<p>The value that can be allocated for <code>MaxCapacity</code> depends
on whether you are running a Python shell job or an Apache Spark ETL
job:</p>
<ul>
<li><p>When you specify a Python shell job
(<code>JobCommand.Name</code>="pythonshell"), you can allocate either
0.0625 or 1 DPU. The default is 0.0625 DPU.</p></li>
<li><p>When you specify an Apache Spark ETL job
(<code>JobCommand.Name</code>="glueetl") or Apache Spark streaming ETL
job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate a
minimum of 2 DPUs. The default is 10 DPUs. This job type cannot have a
fractional DPU allocation.</p></li>
</ul>
<p>For Glue version 2.0 jobs, you cannot instead specify a <code
style="white-space: pre;">⁠Maximum capacity⁠</code>. Instead, you should
specify a <code style="white-space: pre;">⁠Worker type⁠</code> and the
<code style="white-space: pre;">⁠Number of workers⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_job_:_SecurityConfiguration">SecurityConfiguration</code></td>
<td><p>The name of the <code>SecurityConfiguration</code> structure to
be used with this job.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_job_:_Tags">Tags</code></td>
<td><p>The tags to use with this job. You may use tags to limit access
to the job. For more information about tags in Glue, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon
Web Services Tags in Glue</a> in the developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_job_:_NotificationProperty">NotificationProperty</code></td>
<td><p>Specifies configuration properties of a job
notification.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_job_:_GlueVersion">GlueVersion</code></td>
<td><p>Glue version determines the versions of Apache Spark and Python
that Glue supports. The Python version indicates the version supported
for jobs of type Spark.</p>
<p>For more information about the available Glue versions and
corresponding Spark and Python versions, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue
version</a> in the developer guide.</p>
<p>Jobs that are created without specifying a Glue version default to
Glue 0.9.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_job_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of workers of a defined <code>workerType</code> that
are allocated when a job runs.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_job_:_WorkerType">WorkerType</code></td>
<td><p>The type of predefined worker that is allocated when a job runs.
Accepts a value of Standard, G.1X, G.2X, or G.025X.</p>
<ul>
<li><p>For the <code>Standard</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 50GB disk, and 2 executors per
worker.</p></li>
<li><p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU
(4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per
worker. We recommend this worker type for memory-intensive
jobs.</p></li>
<li><p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU
(8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per
worker. We recommend this worker type for memory-intensive
jobs.</p></li>
<li><p>For the <code>G.025X</code> worker type, each worker maps to 0.25
DPU (2 vCPU, 4 GB of memory, 64 GB disk), and provides 1 executor per
worker. We recommend this worker type for low volume streaming jobs.
This worker type is only available for Glue version 3.0 streaming
jobs.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_create_job_:_CodeGenConfigurationNodes">CodeGenConfigurationNodes</code></td>
<td><p>The representation of a directed acyclic graph on which both the
Glue Studio visual component and Glue Studio code generation is
based.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_job_:_ExecutionClass">ExecutionClass</code></td>
<td><p>Indicates whether the job is run with a standard or flexible
execution class. The standard execution-class is ideal for
time-sensitive workloads that require fast job startup and dedicated
resources.</p>
<p>The flexible execution class is appropriate for time-insensitive jobs
whose start and completion times may vary.</p>
<p>Only jobs with Glue version 3.0 and above and command type
<code>glueetl</code> will be allowed to set <code>ExecutionClass</code>
to <code>FLEX</code>. The flexible execution class is available for
Spark jobs.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_job_:_SourceControlDetails">SourceControlDetails</code></td>
<td><p>The details for a source control configuration for a job,
allowing synchronization of job artifacts to or from a remote
repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_job(
      Name = "string",
      Description = "string",
      LogUri = "string",
      Role = "string",
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
      SecurityConfiguration = "string",
      Tags = list(
        "string"
      ),
      NotificationProperty = list(
        NotifyDelayAfter = 123
      ),
      GlueVersion = "string",
      NumberOfWorkers = 123,
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
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
