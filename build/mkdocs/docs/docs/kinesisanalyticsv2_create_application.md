<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Kinesis Data Analytics application

### Description

Creates a Kinesis Data Analytics application. For information about
creating a Kinesis Data Analytics application, see [Creating an
Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).

### Usage

    kinesisanalyticsv2_create_application(ApplicationName,
      ApplicationDescription, RuntimeEnvironment, ServiceExecutionRole,
      ApplicationConfiguration, CloudWatchLoggingOptions, Tags,
      ApplicationMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_create_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of your application (for example,
<code>sample-app</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_create_application_:_ApplicationDescription">ApplicationDescription</code></td>
<td><p>A summary description of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_create_application_:_RuntimeEnvironment">RuntimeEnvironment</code></td>
<td><p>[required] The runtime environment for the application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_create_application_:_ServiceExecutionRole">ServiceExecutionRole</code></td>
<td><p>[required] The IAM role used by the application to access Kinesis
data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects,
and other external resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_create_application_:_ApplicationConfiguration">ApplicationConfiguration</code></td>
<td><p>Use this parameter to configure the application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_create_application_:_CloudWatchLoggingOptions">CloudWatchLoggingOptions</code></td>
<td><p>Use this parameter to configure an Amazon CloudWatch log stream
to monitor application configuration errors.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_create_application_:_Tags">Tags</code></td>
<td><p>A list of one or more tags to assign to the application. A tag is
a key-value pair that identifies an application. Note that the maximum
number of application tags includes system tags. The maximum number of
user-defined application tags is 50. For more information, see <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using
Tagging</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_create_application_:_ApplicationMode">ApplicationMode</code></td>
<td><p>Use the <code>STREAMING</code> mode to create a Kinesis Data
Analytics For Flink application. To create a Kinesis Data Analytics
Studio notebook, use the <code>INTERACTIVE</code> mode.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationDetail = list(
        ApplicationARN = "string",
        ApplicationDescription = "string",
        ApplicationName = "string",
        RuntimeEnvironment = "SQL-1_0"|"FLINK-1_6"|"FLINK-1_8"|"ZEPPELIN-FLINK-1_0"|"FLINK-1_11"|"FLINK-1_13"|"ZEPPELIN-FLINK-2_0"|"FLINK-1_15",
        ServiceExecutionRole = "string",
        ApplicationStatus = "DELETING"|"STARTING"|"STOPPING"|"READY"|"RUNNING"|"UPDATING"|"AUTOSCALING"|"FORCE_STOPPING"|"ROLLING_BACK"|"MAINTENANCE"|"ROLLED_BACK",
        ApplicationVersionId = 123,
        CreateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ApplicationConfigurationDescription = list(
          SqlApplicationConfigurationDescription = list(
            InputDescriptions = list(
              list(
                InputId = "string",
                NamePrefix = "string",
                InAppStreamNames = list(
                  "string"
                ),
                InputProcessingConfigurationDescription = list(
                  InputLambdaProcessorDescription = list(
                    ResourceARN = "string",
                    RoleARN = "string"
                  )
                ),
                KinesisStreamsInputDescription = list(
                  ResourceARN = "string",
                  RoleARN = "string"
                ),
                KinesisFirehoseInputDescription = list(
                  ResourceARN = "string",
                  RoleARN = "string"
                ),
                InputSchema = list(
                  RecordFormat = list(
                    RecordFormatType = "JSON"|"CSV",
                    MappingParameters = list(
                      JSONMappingParameters = list(
                        RecordRowPath = "string"
                      ),
                      CSVMappingParameters = list(
                        RecordRowDelimiter = "string",
                        RecordColumnDelimiter = "string"
                      )
                    )
                  ),
                  RecordEncoding = "string",
                  RecordColumns = list(
                    list(
                      Name = "string",
                      Mapping = "string",
                      SqlType = "string"
                    )
                  )
                ),
                InputParallelism = list(
                  Count = 123
                ),
                InputStartingPositionConfiguration = list(
                  InputStartingPosition = "NOW"|"TRIM_HORIZON"|"LAST_STOPPED_POINT"
                )
              )
            ),
            OutputDescriptions = list(
              list(
                OutputId = "string",
                Name = "string",
                KinesisStreamsOutputDescription = list(
                  ResourceARN = "string",
                  RoleARN = "string"
                ),
                KinesisFirehoseOutputDescription = list(
                  ResourceARN = "string",
                  RoleARN = "string"
                ),
                LambdaOutputDescription = list(
                  ResourceARN = "string",
                  RoleARN = "string"
                ),
                DestinationSchema = list(
                  RecordFormatType = "JSON"|"CSV"
                )
              )
            ),
            ReferenceDataSourceDescriptions = list(
              list(
                ReferenceId = "string",
                TableName = "string",
                S3ReferenceDataSourceDescription = list(
                  BucketARN = "string",
                  FileKey = "string",
                  ReferenceRoleARN = "string"
                ),
                ReferenceSchema = list(
                  RecordFormat = list(
                    RecordFormatType = "JSON"|"CSV",
                    MappingParameters = list(
                      JSONMappingParameters = list(
                        RecordRowPath = "string"
                      ),
                      CSVMappingParameters = list(
                        RecordRowDelimiter = "string",
                        RecordColumnDelimiter = "string"
                      )
                    )
                  ),
                  RecordEncoding = "string",
                  RecordColumns = list(
                    list(
                      Name = "string",
                      Mapping = "string",
                      SqlType = "string"
                    )
                  )
                )
              )
            )
          ),
          ApplicationCodeConfigurationDescription = list(
            CodeContentType = "PLAINTEXT"|"ZIPFILE",
            CodeContentDescription = list(
              TextContent = "string",
              CodeMD5 = "string",
              CodeSize = 123,
              S3ApplicationCodeLocationDescription = list(
                BucketARN = "string",
                FileKey = "string",
                ObjectVersion = "string"
              )
            )
          ),
          RunConfigurationDescription = list(
            ApplicationRestoreConfigurationDescription = list(
              ApplicationRestoreType = "SKIP_RESTORE_FROM_SNAPSHOT"|"RESTORE_FROM_LATEST_SNAPSHOT"|"RESTORE_FROM_CUSTOM_SNAPSHOT",
              SnapshotName = "string"
            ),
            FlinkRunConfigurationDescription = list(
              AllowNonRestoredState = TRUE|FALSE
            )
          ),
          FlinkApplicationConfigurationDescription = list(
            CheckpointConfigurationDescription = list(
              ConfigurationType = "DEFAULT"|"CUSTOM",
              CheckpointingEnabled = TRUE|FALSE,
              CheckpointInterval = 123,
              MinPauseBetweenCheckpoints = 123
            ),
            MonitoringConfigurationDescription = list(
              ConfigurationType = "DEFAULT"|"CUSTOM",
              MetricsLevel = "APPLICATION"|"TASK"|"OPERATOR"|"PARALLELISM",
              LogLevel = "INFO"|"WARN"|"ERROR"|"DEBUG"
            ),
            ParallelismConfigurationDescription = list(
              ConfigurationType = "DEFAULT"|"CUSTOM",
              Parallelism = 123,
              ParallelismPerKPU = 123,
              CurrentParallelism = 123,
              AutoScalingEnabled = TRUE|FALSE
            ),
            JobPlanDescription = "string"
          ),
          EnvironmentPropertyDescriptions = list(
            PropertyGroupDescriptions = list(
              list(
                PropertyGroupId = "string",
                PropertyMap = list(
                  "string"
                )
              )
            )
          ),
          ApplicationSnapshotConfigurationDescription = list(
            SnapshotsEnabled = TRUE|FALSE
          ),
          VpcConfigurationDescriptions = list(
            list(
              VpcConfigurationId = "string",
              VpcId = "string",
              SubnetIds = list(
                "string"
              ),
              SecurityGroupIds = list(
                "string"
              )
            )
          ),
          ZeppelinApplicationConfigurationDescription = list(
            MonitoringConfigurationDescription = list(
              LogLevel = "INFO"|"WARN"|"ERROR"|"DEBUG"
            ),
            CatalogConfigurationDescription = list(
              GlueDataCatalogConfigurationDescription = list(
                DatabaseARN = "string"
              )
            ),
            DeployAsApplicationConfigurationDescription = list(
              S3ContentLocationDescription = list(
                BucketARN = "string",
                BasePath = "string"
              )
            ),
            CustomArtifactsConfigurationDescription = list(
              list(
                ArtifactType = "UDF"|"DEPENDENCY_JAR",
                S3ContentLocationDescription = list(
                  BucketARN = "string",
                  FileKey = "string",
                  ObjectVersion = "string"
                ),
                MavenReferenceDescription = list(
                  GroupId = "string",
                  ArtifactId = "string",
                  Version = "string"
                )
              )
            )
          )
        ),
        CloudWatchLoggingOptionDescriptions = list(
          list(
            CloudWatchLoggingOptionId = "string",
            LogStreamARN = "string",
            RoleARN = "string"
          )
        ),
        ApplicationMaintenanceConfigurationDescription = list(
          ApplicationMaintenanceWindowStartTime = "string",
          ApplicationMaintenanceWindowEndTime = "string"
        ),
        ApplicationVersionUpdatedFrom = 123,
        ApplicationVersionRolledBackFrom = 123,
        ConditionalToken = "string",
        ApplicationVersionRolledBackTo = 123,
        ApplicationMode = "STREAMING"|"INTERACTIVE"
      )
    )

### Request syntax

    svc$create_application(
      ApplicationName = "string",
      ApplicationDescription = "string",
      RuntimeEnvironment = "SQL-1_0"|"FLINK-1_6"|"FLINK-1_8"|"ZEPPELIN-FLINK-1_0"|"FLINK-1_11"|"FLINK-1_13"|"ZEPPELIN-FLINK-2_0"|"FLINK-1_15",
      ServiceExecutionRole = "string",
      ApplicationConfiguration = list(
        SqlApplicationConfiguration = list(
          Inputs = list(
            list(
              NamePrefix = "string",
              InputProcessingConfiguration = list(
                InputLambdaProcessor = list(
                  ResourceARN = "string"
                )
              ),
              KinesisStreamsInput = list(
                ResourceARN = "string"
              ),
              KinesisFirehoseInput = list(
                ResourceARN = "string"
              ),
              InputParallelism = list(
                Count = 123
              ),
              InputSchema = list(
                RecordFormat = list(
                  RecordFormatType = "JSON"|"CSV",
                  MappingParameters = list(
                    JSONMappingParameters = list(
                      RecordRowPath = "string"
                    ),
                    CSVMappingParameters = list(
                      RecordRowDelimiter = "string",
                      RecordColumnDelimiter = "string"
                    )
                  )
                ),
                RecordEncoding = "string",
                RecordColumns = list(
                  list(
                    Name = "string",
                    Mapping = "string",
                    SqlType = "string"
                  )
                )
              )
            )
          ),
          Outputs = list(
            list(
              Name = "string",
              KinesisStreamsOutput = list(
                ResourceARN = "string"
              ),
              KinesisFirehoseOutput = list(
                ResourceARN = "string"
              ),
              LambdaOutput = list(
                ResourceARN = "string"
              ),
              DestinationSchema = list(
                RecordFormatType = "JSON"|"CSV"
              )
            )
          ),
          ReferenceDataSources = list(
            list(
              TableName = "string",
              S3ReferenceDataSource = list(
                BucketARN = "string",
                FileKey = "string"
              ),
              ReferenceSchema = list(
                RecordFormat = list(
                  RecordFormatType = "JSON"|"CSV",
                  MappingParameters = list(
                    JSONMappingParameters = list(
                      RecordRowPath = "string"
                    ),
                    CSVMappingParameters = list(
                      RecordRowDelimiter = "string",
                      RecordColumnDelimiter = "string"
                    )
                  )
                ),
                RecordEncoding = "string",
                RecordColumns = list(
                  list(
                    Name = "string",
                    Mapping = "string",
                    SqlType = "string"
                  )
                )
              )
            )
          )
        ),
        FlinkApplicationConfiguration = list(
          CheckpointConfiguration = list(
            ConfigurationType = "DEFAULT"|"CUSTOM",
            CheckpointingEnabled = TRUE|FALSE,
            CheckpointInterval = 123,
            MinPauseBetweenCheckpoints = 123
          ),
          MonitoringConfiguration = list(
            ConfigurationType = "DEFAULT"|"CUSTOM",
            MetricsLevel = "APPLICATION"|"TASK"|"OPERATOR"|"PARALLELISM",
            LogLevel = "INFO"|"WARN"|"ERROR"|"DEBUG"
          ),
          ParallelismConfiguration = list(
            ConfigurationType = "DEFAULT"|"CUSTOM",
            Parallelism = 123,
            ParallelismPerKPU = 123,
            AutoScalingEnabled = TRUE|FALSE
          )
        ),
        EnvironmentProperties = list(
          PropertyGroups = list(
            list(
              PropertyGroupId = "string",
              PropertyMap = list(
                "string"
              )
            )
          )
        ),
        ApplicationCodeConfiguration = list(
          CodeContent = list(
            TextContent = "string",
            ZipFileContent = raw,
            S3ContentLocation = list(
              BucketARN = "string",
              FileKey = "string",
              ObjectVersion = "string"
            )
          ),
          CodeContentType = "PLAINTEXT"|"ZIPFILE"
        ),
        ApplicationSnapshotConfiguration = list(
          SnapshotsEnabled = TRUE|FALSE
        ),
        VpcConfigurations = list(
          list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          )
        ),
        ZeppelinApplicationConfiguration = list(
          MonitoringConfiguration = list(
            LogLevel = "INFO"|"WARN"|"ERROR"|"DEBUG"
          ),
          CatalogConfiguration = list(
            GlueDataCatalogConfiguration = list(
              DatabaseARN = "string"
            )
          ),
          DeployAsApplicationConfiguration = list(
            S3ContentLocation = list(
              BucketARN = "string",
              BasePath = "string"
            )
          ),
          CustomArtifactsConfiguration = list(
            list(
              ArtifactType = "UDF"|"DEPENDENCY_JAR",
              S3ContentLocation = list(
                BucketARN = "string",
                FileKey = "string",
                ObjectVersion = "string"
              ),
              MavenReference = list(
                GroupId = "string",
                ArtifactId = "string",
                Version = "string"
              )
            )
          )
        )
      ),
      CloudWatchLoggingOptions = list(
        list(
          LogStreamARN = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ApplicationMode = "STREAMING"|"INTERACTIVE"
    )
