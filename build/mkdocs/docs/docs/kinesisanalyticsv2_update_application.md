<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Kinesis Data Analytics application

### Description

Updates an existing Kinesis Data Analytics application. Using this
operation, you can update application code, input configuration, and
output configuration.

Kinesis Data Analytics updates the `ApplicationVersionId` each time you
update your application.

You cannot update the `RuntimeEnvironment` of an existing application.
If you need to update an application's `RuntimeEnvironment`, you must
delete the application and create it again.

### Usage

    kinesisanalyticsv2_update_application(ApplicationName,
      CurrentApplicationVersionId, ApplicationConfigurationUpdate,
      ServiceExecutionRoleUpdate, RunConfigurationUpdate,
      CloudWatchLoggingOptionUpdates, ConditionalToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_update_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to update.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_update_application_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>The current application version ID. You must provide the
<code>CurrentApplicationVersionId</code> or the
<code>ConditionalToken</code>.You can retrieve the application version
ID using <code>describe_application</code>. For better concurrency
support, use the <code>ConditionalToken</code> parameter instead of
<code>CurrentApplicationVersionId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_update_application_:_ApplicationConfigurationUpdate">ApplicationConfigurationUpdate</code></td>
<td><p>Describes application configuration updates.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_update_application_:_ServiceExecutionRoleUpdate">ServiceExecutionRoleUpdate</code></td>
<td><p>Describes updates to the service execution role.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_update_application_:_RunConfigurationUpdate">RunConfigurationUpdate</code></td>
<td><p>Describes updates to the application's starting
parameters.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_update_application_:_CloudWatchLoggingOptionUpdates">CloudWatchLoggingOptionUpdates</code></td>
<td><p>Describes application Amazon CloudWatch logging option updates.
You can only update existing CloudWatch logging options with this
action. To add a new CloudWatch logging option, use
<code>add_application_cloud_watch_logging_option</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_update_application_:_ConditionalToken">ConditionalToken</code></td>
<td><p>A value you use to implement strong concurrency for application
updates. You must provide the <code>CurrentApplicationVersionId</code>
or the <code>ConditionalToken</code>. You get the application's current
<code>ConditionalToken</code> using <code>describe_application</code>.
For better concurrency support, use the <code>ConditionalToken</code>
parameter instead of <code>CurrentApplicationVersionId</code>.</p></td>
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

    svc$update_application(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      ApplicationConfigurationUpdate = list(
        SqlApplicationConfigurationUpdate = list(
          InputUpdates = list(
            list(
              InputId = "string",
              NamePrefixUpdate = "string",
              InputProcessingConfigurationUpdate = list(
                InputLambdaProcessorUpdate = list(
                  ResourceARNUpdate = "string"
                )
              ),
              KinesisStreamsInputUpdate = list(
                ResourceARNUpdate = "string"
              ),
              KinesisFirehoseInputUpdate = list(
                ResourceARNUpdate = "string"
              ),
              InputSchemaUpdate = list(
                RecordFormatUpdate = list(
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
                RecordEncodingUpdate = "string",
                RecordColumnUpdates = list(
                  list(
                    Name = "string",
                    Mapping = "string",
                    SqlType = "string"
                  )
                )
              ),
              InputParallelismUpdate = list(
                CountUpdate = 123
              )
            )
          ),
          OutputUpdates = list(
            list(
              OutputId = "string",
              NameUpdate = "string",
              KinesisStreamsOutputUpdate = list(
                ResourceARNUpdate = "string"
              ),
              KinesisFirehoseOutputUpdate = list(
                ResourceARNUpdate = "string"
              ),
              LambdaOutputUpdate = list(
                ResourceARNUpdate = "string"
              ),
              DestinationSchemaUpdate = list(
                RecordFormatType = "JSON"|"CSV"
              )
            )
          ),
          ReferenceDataSourceUpdates = list(
            list(
              ReferenceId = "string",
              TableNameUpdate = "string",
              S3ReferenceDataSourceUpdate = list(
                BucketARNUpdate = "string",
                FileKeyUpdate = "string"
              ),
              ReferenceSchemaUpdate = list(
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
        ApplicationCodeConfigurationUpdate = list(
          CodeContentTypeUpdate = "PLAINTEXT"|"ZIPFILE",
          CodeContentUpdate = list(
            TextContentUpdate = "string",
            ZipFileContentUpdate = raw,
            S3ContentLocationUpdate = list(
              BucketARNUpdate = "string",
              FileKeyUpdate = "string",
              ObjectVersionUpdate = "string"
            )
          )
        ),
        FlinkApplicationConfigurationUpdate = list(
          CheckpointConfigurationUpdate = list(
            ConfigurationTypeUpdate = "DEFAULT"|"CUSTOM",
            CheckpointingEnabledUpdate = TRUE|FALSE,
            CheckpointIntervalUpdate = 123,
            MinPauseBetweenCheckpointsUpdate = 123
          ),
          MonitoringConfigurationUpdate = list(
            ConfigurationTypeUpdate = "DEFAULT"|"CUSTOM",
            MetricsLevelUpdate = "APPLICATION"|"TASK"|"OPERATOR"|"PARALLELISM",
            LogLevelUpdate = "INFO"|"WARN"|"ERROR"|"DEBUG"
          ),
          ParallelismConfigurationUpdate = list(
            ConfigurationTypeUpdate = "DEFAULT"|"CUSTOM",
            ParallelismUpdate = 123,
            ParallelismPerKPUUpdate = 123,
            AutoScalingEnabledUpdate = TRUE|FALSE
          )
        ),
        EnvironmentPropertyUpdates = list(
          PropertyGroups = list(
            list(
              PropertyGroupId = "string",
              PropertyMap = list(
                "string"
              )
            )
          )
        ),
        ApplicationSnapshotConfigurationUpdate = list(
          SnapshotsEnabledUpdate = TRUE|FALSE
        ),
        VpcConfigurationUpdates = list(
          list(
            VpcConfigurationId = "string",
            SubnetIdUpdates = list(
              "string"
            ),
            SecurityGroupIdUpdates = list(
              "string"
            )
          )
        ),
        ZeppelinApplicationConfigurationUpdate = list(
          MonitoringConfigurationUpdate = list(
            LogLevelUpdate = "INFO"|"WARN"|"ERROR"|"DEBUG"
          ),
          CatalogConfigurationUpdate = list(
            GlueDataCatalogConfigurationUpdate = list(
              DatabaseARNUpdate = "string"
            )
          ),
          DeployAsApplicationConfigurationUpdate = list(
            S3ContentLocationUpdate = list(
              BucketARNUpdate = "string",
              BasePathUpdate = "string"
            )
          ),
          CustomArtifactsConfigurationUpdate = list(
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
      ServiceExecutionRoleUpdate = "string",
      RunConfigurationUpdate = list(
        FlinkRunConfiguration = list(
          AllowNonRestoredState = TRUE|FALSE
        ),
        ApplicationRestoreConfiguration = list(
          ApplicationRestoreType = "SKIP_RESTORE_FROM_SNAPSHOT"|"RESTORE_FROM_LATEST_SNAPSHOT"|"RESTORE_FROM_CUSTOM_SNAPSHOT",
          SnapshotName = "string"
        )
      ),
      CloudWatchLoggingOptionUpdates = list(
        list(
          CloudWatchLoggingOptionId = "string",
          LogStreamARNUpdate = "string"
        )
      ),
      ConditionalToken = "string"
    )
