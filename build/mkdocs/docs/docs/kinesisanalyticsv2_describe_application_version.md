<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_describe_application_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a detailed description of a specified version of the application

### Description

Provides a detailed description of a specified version of the
application. To see a list of all the versions of an application, invoke
the `list_application_versions` operation.

This operation is supported only for Amazon Kinesis Data Analytics for
Apache Flink.

### Usage

    kinesisanalyticsv2_describe_application_version(ApplicationName,
      ApplicationVersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_describe_application_version_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application for which you want to get
the version description.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_describe_application_version_:_ApplicationVersionId">ApplicationVersionId</code></td>
<td><p>[required] The ID of the application version for which you want
to get the description.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationVersionDetail = list(
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

    svc$describe_application_version(
      ApplicationName = "string",
      ApplicationVersionId = 123
    )
