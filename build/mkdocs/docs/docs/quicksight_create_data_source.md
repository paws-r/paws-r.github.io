<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a data source

### Description

Creates a data source.

### Usage

    quicksight_create_data_source(AwsAccountId, DataSourceId, Name, Type,
      DataSourceParameters, Credentials, Permissions, VpcConnectionProperties,
      SslProperties, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_data_source_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] An ID for the data source. This ID is unique per
Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_create_data_source_:_Name">Name</code></td>
<td><p>[required] A display name for the data source.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_data_source_:_Type">Type</code></td>
<td><p>[required] The type of the data source. To return a list of all
data sources, use <code>list_data_sources</code>.</p>
<p>Use <code>AMAZON_ELASTICSEARCH</code> for Amazon OpenSearch
Service.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_source_:_DataSourceParameters">DataSourceParameters</code></td>
<td><p>The parameters that Amazon QuickSight uses to connect to your
underlying source.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_source_:_Credentials">Credentials</code></td>
<td><p>The credentials Amazon QuickSight that uses to connect to your
underlying source. Currently, only credentials based on user name and
password are supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_source_:_Permissions">Permissions</code></td>
<td><p>A list of resource permissions on the data source.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_source_:_VpcConnectionProperties">VpcConnectionProperties</code></td>
<td><p>Use this parameter only when you want Amazon QuickSight to use a
VPC connection when connecting to your underlying source.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_source_:_SslProperties">SslProperties</code></td>
<td><p>Secure Socket Layer (SSL) properties that apply when Amazon
QuickSight connects to your underlying source.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_data_source_:_Tags">Tags</code></td>
<td><p>Contains a map of the key-value pairs for the resource tag or
tags assigned to the data source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      DataSourceId = "string",
      CreationStatus = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$create_data_source(
      AwsAccountId = "string",
      DataSourceId = "string",
      Name = "string",
      Type = "ADOBE_ANALYTICS"|"AMAZON_ELASTICSEARCH"|"ATHENA"|"AURORA"|"AURORA_POSTGRESQL"|"AWS_IOT_ANALYTICS"|"GITHUB"|"JIRA"|"MARIADB"|"MYSQL"|"ORACLE"|"POSTGRESQL"|"PRESTO"|"REDSHIFT"|"S3"|"SALESFORCE"|"SERVICENOW"|"SNOWFLAKE"|"SPARK"|"SQLSERVER"|"TERADATA"|"TWITTER"|"TIMESTREAM"|"AMAZON_OPENSEARCH"|"EXASOL"|"DATABRICKS",
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
      Credentials = list(
        CredentialPair = list(
          Username = "string",
          Password = "string",
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
          )
        ),
        CopySourceArn = "string",
        SecretArn = "string"
      ),
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      VpcConnectionProperties = list(
        VpcConnectionArn = "string"
      ),
      SslProperties = list(
        DisableSsl = TRUE|FALSE
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
