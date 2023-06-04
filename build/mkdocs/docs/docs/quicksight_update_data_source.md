<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a data source

### Description

Updates a data source.

### Usage

    quicksight_update_data_source(AwsAccountId, DataSourceId, Name,
      DataSourceParameters, Credentials, VpcConnectionProperties,
      SslProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_data_source_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID of the data source. This ID is unique per
Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_update_data_source_:_Name">Name</code></td>
<td><p>[required] A display name for the data source.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_source_:_DataSourceParameters">DataSourceParameters</code></td>
<td><p>The parameters that Amazon QuickSight uses to connect to your
underlying source.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_data_source_:_Credentials">Credentials</code></td>
<td><p>The credentials that Amazon QuickSight that uses to connect to
your underlying source. Currently, only credentials based on user name
and password are supported.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_source_:_VpcConnectionProperties">VpcConnectionProperties</code></td>
<td><p>Use this parameter only when you want Amazon QuickSight to use a
VPC connection when connecting to your underlying source.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_data_source_:_SslProperties">SslProperties</code></td>
<td><p>Secure Socket Layer (SSL) properties that apply when Amazon
QuickSight connects to your underlying source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      DataSourceId = "string",
      UpdateStatus = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_data_source(
      AwsAccountId = "string",
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
      VpcConnectionProperties = list(
        VpcConnectionArn = "string"
      ),
      SslProperties = list(
        DisableSsl = TRUE|FALSE
      )
    )
