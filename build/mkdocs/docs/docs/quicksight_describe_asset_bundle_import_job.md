<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_asset_bundle_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing import job

### Description

Describes an existing import job.

Poll job descriptions after starting a job to know when it has succeeded
or failed. Job descriptions are available for 14 days after job starts.

### Usage

    quicksight_describe_asset_bundle_import_job(AwsAccountId,
      AssetBundleImportJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_asset_bundle_import_job_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account the import
job was executed in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_asset_bundle_import_job_:_AssetBundleImportJobId">AssetBundleImportJobId</code></td>
<td><p>[required] The ID of the job. The job ID is set when you start a
new job with a <code>start_asset_bundle_import_job</code> API
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobStatus = "QUEUED_FOR_IMMEDIATE_EXECUTION"|"IN_PROGRESS"|"SUCCESSFUL"|"FAILED"|"FAILED_ROLLBACK_IN_PROGRESS"|"FAILED_ROLLBACK_COMPLETED"|"FAILED_ROLLBACK_ERROR",
      Errors = list(
        list(
          Arn = "string",
          Type = "string",
          Message = "string"
        )
      ),
      RollbackErrors = list(
        list(
          Arn = "string",
          Type = "string",
          Message = "string"
        )
      ),
      Arn = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      AssetBundleImportJobId = "string",
      AwsAccountId = "string",
      AssetBundleImportSource = list(
        Body = "string",
        S3Uri = "string"
      ),
      OverrideParameters = list(
        ResourceIdOverrideConfiguration = list(
          PrefixForAllResources = "string"
        ),
        VPCConnections = list(
          list(
            VPCConnectionId = "string",
            Name = "string",
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            ),
            DnsResolvers = list(
              "string"
            ),
            RoleArn = "string"
          )
        ),
        RefreshSchedules = list(
          list(
            DataSetId = "string",
            ScheduleId = "string",
            StartAfterDateTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        DataSources = list(
          list(
            DataSourceId = "string",
            Name = "string",
            DataSourceParameters = list(
              AmazonElasticsearchParameters = list(
                Domain = "string"
              ),
              AthenaParameters = list(
                WorkGroup = "string",
                RoleArn = "string"
              ),
              AuroraParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              AuroraPostgreSqlParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              AwsIotAnalyticsParameters = list(
                DataSetName = "string"
              ),
              JiraParameters = list(
                SiteBaseUrl = "string"
              ),
              MariaDbParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              MySqlParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              OracleParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              PostgreSqlParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              PrestoParameters = list(
                Host = "string",
                Port = 123,
                Catalog = "string"
              ),
              RdsParameters = list(
                InstanceId = "string",
                Database = "string"
              ),
              RedshiftParameters = list(
                Host = "string",
                Port = 123,
                Database = "string",
                ClusterId = "string"
              ),
              S3Parameters = list(
                ManifestFileLocation = list(
                  Bucket = "string",
                  Key = "string"
                ),
                RoleArn = "string"
              ),
              ServiceNowParameters = list(
                SiteBaseUrl = "string"
              ),
              SnowflakeParameters = list(
                Host = "string",
                Database = "string",
                Warehouse = "string"
              ),
              SparkParameters = list(
                Host = "string",
                Port = 123
              ),
              SqlServerParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              TeradataParameters = list(
                Host = "string",
                Port = 123,
                Database = "string"
              ),
              TwitterParameters = list(
                Query = "string",
                MaxRows = 123
              ),
              AmazonOpenSearchParameters = list(
                Domain = "string"
              ),
              ExasolParameters = list(
                Host = "string",
                Port = 123
              ),
              DatabricksParameters = list(
                Host = "string",
                Port = 123,
                SqlEndpointPath = "string"
              )
            ),
            VpcConnectionProperties = list(
              VpcConnectionArn = "string"
            ),
            SslProperties = list(
              DisableSsl = TRUE|FALSE
            ),
            Credentials = list(
              CredentialPair = list(
                Username = "string",
                Password = "string"
              ),
              SecretArn = "string"
            )
          )
        ),
        DataSets = list(
          list(
            DataSetId = "string",
            Name = "string"
          )
        ),
        Themes = list(
          list(
            ThemeId = "string",
            Name = "string"
          )
        ),
        Analyses = list(
          list(
            AnalysisId = "string",
            Name = "string"
          )
        ),
        Dashboards = list(
          list(
            DashboardId = "string",
            Name = "string"
          )
        )
      ),
      FailureAction = "DO_NOTHING"|"ROLLBACK",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_asset_bundle_import_job(
      AwsAccountId = "string",
      AssetBundleImportJobId = "string"
    )
