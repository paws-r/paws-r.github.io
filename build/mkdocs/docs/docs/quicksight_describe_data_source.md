<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a data source

### Description

Describes a data source.

### Usage

    quicksight_describe_data_source(AwsAccountId, DataSourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_data_source_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID of the data source. This ID is unique per
Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSource = list(
        Arn = "string",
        DataSourceId = "string",
        Name = "string",
        Type = "ADOBE_ANALYTICS"|"AMAZON_ELASTICSEARCH"|"ATHENA"|"AURORA"|"AURORA_POSTGRESQL"|"AWS_IOT_ANALYTICS"|"GITHUB"|"JIRA"|"MARIADB"|"MYSQL"|"ORACLE"|"POSTGRESQL"|"PRESTO"|"REDSHIFT"|"S3"|"SALESFORCE"|"SERVICENOW"|"SNOWFLAKE"|"SPARK"|"SQLSERVER"|"TERADATA"|"TWITTER"|"TIMESTREAM"|"AMAZON_OPENSEARCH"|"EXASOL"|"DATABRICKS",
        Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
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
        AlternateDataSourceParameters = list(
          list(
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
          )
        ),
        VpcConnectionProperties = list(
          VpcConnectionArn = "string"
        ),
        SslProperties = list(
          DisableSsl = TRUE|FALSE
        ),
        ErrorInfo = list(
          Type = "ACCESS_DENIED"|"COPY_SOURCE_NOT_FOUND"|"TIMEOUT"|"ENGINE_VERSION_NOT_SUPPORTED"|"UNKNOWN_HOST"|"GENERIC_SQL_FAILURE"|"CONFLICT"|"UNKNOWN",
          Message = "string"
        ),
        SecretArn = "string"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_data_source(
      AwsAccountId = "string",
      DataSourceId = "string"
    )
