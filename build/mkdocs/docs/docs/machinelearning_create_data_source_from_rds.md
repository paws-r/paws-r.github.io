<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_data_source_from_rds</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a DataSource object from an Amazon Relational Database Service (Amazon RDS)

### Description

Creates a `DataSource` object from an [Amazon Relational Database
Service](https://aws.amazon.com/rds/) (Amazon RDS). A `DataSource`
references data that can be used to perform `create_ml_model`,
`create_evaluation`, or `create_batch_prediction` operations.

`create_data_source_from_rds` is an asynchronous operation. In response
to `create_data_source_from_rds`, Amazon Machine Learning (Amazon ML)
immediately returns and sets the `DataSource` status to `PENDING`. After
the `DataSource` is created and ready for use, Amazon ML sets the
`Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or
`PENDING` state can be used only to perform `⁠>CreateMLModel⁠`\\,
`create_evaluation`, or `create_batch_prediction` operations.

If Amazon ML cannot accept the input source, it sets the `Status`
parameter to `FAILED` and includes an error message in the `Message`
attribute of the `get_data_source` operation response.

### Usage

    machinelearning_create_data_source_from_rds(DataSourceId,
      DataSourceName, RDSData, RoleARN, ComputeStatistics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_rds_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>DataSource</code>. Typically, an Amazon Resource Number (ARN)
becomes the ID for a <code>DataSource</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_data_source_from_rds_:_DataSourceName">DataSourceName</code></td>
<td><p>A user-supplied name or description of the
<code>DataSource</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_rds_:_RDSData">RDSData</code></td>
<td><p>[required] The data specification of an Amazon RDS
<code>DataSource</code>:</p>
<ul>
<li><p>DatabaseInformation -</p>
<ul>
<li><p><code>DatabaseName</code> - The name of the Amazon RDS
database.</p></li>
<li><p><code>InstanceIdentifier </code> - A unique identifier for the
Amazon RDS database instance.</p></li>
</ul></li>
<li><p>DatabaseCredentials - AWS Identity and Access Management (IAM)
credentials that are used to connect to the Amazon RDS
database.</p></li>
<li><p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed
by an EC2 instance to carry out the copy task from Amazon RDS to Amazon
Simple Storage Service (Amazon S3). For more information, see <a
href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role
templates</a> for data pipelines.</p></li>
<li><p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS
Data Pipeline service to monitor the progress of the copy task from
Amazon RDS to Amazon S3. For more information, see <a
href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role
templates</a> for data pipelines.</p></li>
<li><p>SecurityInfo - The security information to use to access an RDS
DB instance. You need to set up appropriate ingress rules for the
security entity IDs provided to allow access to the Amazon RDS instance.
Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair
for a VPC-based RDS DB instance.</p></li>
<li><p>SelectSqlQuery - A query that is used to retrieve the observation
data for the <code>Datasource</code>.</p></li>
<li><p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS
data. The data retrieved from Amazon RDS using
<code>SelectSqlQuery</code> is stored in this location.</p></li>
<li><p>DataSchemaUri - The Amazon S3 location of the
<code>DataSchema</code>.</p></li>
<li><p>DataSchema - A JSON string representing the schema. This is not
required if <code>DataSchemaUri</code> is specified.</p></li>
<li><p>DataRearrangement - A JSON string that represents the splitting
and rearrangement requirements for the <code>Datasource</code>.</p>
<p>Sample - <code
style="white-space: pre;">⁠ "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"⁠</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_data_source_from_rds_:_RoleARN">RoleARN</code></td>
<td><p>[required] The role that Amazon ML assumes on behalf of the user
to create and activate a data pipeline in the user's account and copy
data using the <code>SelectSqlQuery</code> query from Amazon RDS to
Amazon S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_rds_:_ComputeStatistics">ComputeStatistics</code></td>
<td><p>The compute statistics for a <code>DataSource</code>. The
statistics are generated from the observation data referenced by a
<code>DataSource</code>. Amazon ML uses the statistics internally during
<code>MLModel</code> training. This parameter must be set to
<code>true</code> if the <code>DataSource</code> needs to be used for
<code>MLModel</code> training.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSourceId = "string"
    )

### Request syntax

    svc$create_data_source_from_rds(
      DataSourceId = "string",
      DataSourceName = "string",
      RDSData = list(
        DatabaseInformation = list(
          InstanceIdentifier = "string",
          DatabaseName = "string"
        ),
        SelectSqlQuery = "string",
        DatabaseCredentials = list(
          Username = "string",
          Password = "string"
        ),
        S3StagingLocation = "string",
        DataRearrangement = "string",
        DataSchema = "string",
        DataSchemaUri = "string",
        ResourceRole = "string",
        ServiceRole = "string",
        SubnetId = "string",
        SecurityGroupIds = list(
          "string"
        )
      ),
      RoleARN = "string",
      ComputeStatistics = TRUE|FALSE
    )
