<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_start_asset_bundle_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an Asset Bundle import job

### Description

Starts an Asset Bundle import job.

An Asset Bundle import job imports specified Amazon QuickSight assets
into an Amazon QuickSight account. You can also choose to import a
naming prefix and specified configuration overrides. The assets that are
contained in the bundle file that you provide are used to create or
update a new or existing asset in your Amazon QuickSight account. Each
Amazon QuickSight account can run up to 10 import jobs concurrently.

The API caller must have the necessary `"create"`, `"describe"`, and
`"update"` permissions in their IAM role to access each resource type
that is contained in the bundle file before the resources can be
imported.

### Usage

    quicksight_start_asset_bundle_import_job(AwsAccountId,
      AssetBundleImportJobId, AssetBundleImportSource, OverrideParameters,
      FailureAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_start_asset_bundle_import_job_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account to import
assets into.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_start_asset_bundle_import_job_:_AssetBundleImportJobId">AssetBundleImportJobId</code></td>
<td><p>[required] The ID of the job. This ID is unique while the job is
running. After the job is completed, you can reuse this ID for another
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_start_asset_bundle_import_job_:_AssetBundleImportSource">AssetBundleImportSource</code></td>
<td><p>[required] The source of the asset bundle zip file that contains
the data that you want to import.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_start_asset_bundle_import_job_:_OverrideParameters">OverrideParameters</code></td>
<td><p>Optional overrides to be applied to the resource configuration
before import.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_start_asset_bundle_import_job_:_FailureAction">FailureAction</code></td>
<td><p>The failure action for the import job.</p>
<p>If you choose <code>ROLLBACK</code>, failed import jobs will attempt
to undo any asset changes caused by the failed job.</p>
<p>If you choose <code>DO_NOTHING</code>, failed import jobs will not
attempt to roll back any asset changes caused by the failed job,
possibly leaving the Amazon QuickSight account in an inconsistent
state.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      AssetBundleImportJobId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$start_asset_bundle_import_job(
      AwsAccountId = "string",
      AssetBundleImportJobId = "string",
      AssetBundleImportSource = list(
        Body = raw,
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
      FailureAction = "DO_NOTHING"|"ROLLBACK"
    )
