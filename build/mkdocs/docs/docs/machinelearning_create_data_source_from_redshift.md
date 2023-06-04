<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_data_source_from_redshift</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a DataSource from a database hosted on an Amazon Redshift cluster

### Description

Creates a `DataSource` from a database hosted on an Amazon Redshift
cluster. A `DataSource` references data that can be used to perform
either `create_ml_model`, `create_evaluation`, or
`create_batch_prediction` operations.

`create_data_source_from_redshift` is an asynchronous operation. In
response to `create_data_source_from_redshift`, Amazon Machine Learning
(Amazon ML) immediately returns and sets the `DataSource` status to
`PENDING`. After the `DataSource` is created and ready for use, Amazon
ML sets the `Status` parameter to `COMPLETED`. `DataSource` in
`COMPLETED` or `PENDING` states can be used to perform only
`create_ml_model`, `create_evaluation`, or `create_batch_prediction`
operations.

If Amazon ML can't accept the input source, it sets the `Status`
parameter to `FAILED` and includes an error message in the `Message`
attribute of the `get_data_source` operation response.

The observations should be contained in the database hosted on an Amazon
Redshift cluster and should be specified by a `SelectSqlQuery` query.
Amazon ML executes an `Unload` command in Amazon Redshift to transfer
the result set of the `SelectSqlQuery` query to `S3StagingLocation`.

After the `DataSource` has been created, it's ready for use in
evaluations and batch predictions. If you plan to use the `DataSource`
to train an `MLModel`, the `DataSource` also requires a recipe. A recipe
describes how each input variable will be used in training an `MLModel`.
Will the variable be included or excluded from training? Will the
variable be manipulated; for example, will it be combined with another
variable or will it be split apart into word combinations? The recipe
provides answers to these questions.

You can't change an existing datasource, but you can copy and modify the
settings from an existing Amazon Redshift datasource to create a new
datasource. To do so, call `get_data_source` for an existing datasource
and copy the values to a `CreateDataSource` call. Change the settings
that you want to change and make sure that all required fields have the
appropriate values.

### Usage

    machinelearning_create_data_source_from_redshift(DataSourceId,
      DataSourceName, DataSpec, RoleARN, ComputeStatistics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_redshift_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>DataSource</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_data_source_from_redshift_:_DataSourceName">DataSourceName</code></td>
<td><p>A user-supplied name or description of the
<code>DataSource</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_redshift_:_DataSpec">DataSpec</code></td>
<td><p>[required] The data specification of an Amazon Redshift
<code>DataSource</code>:</p>
<ul>
<li><p>DatabaseInformation -</p>
<ul>
<li><p><code>DatabaseName</code> - The name of the Amazon Redshift
database.</p></li>
<li><p><code> ClusterIdentifier</code> - The unique ID for the Amazon
Redshift cluster.</p></li>
</ul></li>
<li><p>DatabaseCredentials - The AWS Identity and Access Management
(IAM) credentials that are used to connect to the Amazon Redshift
database.</p></li>
<li><p>SelectSqlQuery - The query that is used to retrieve the
observation data for the <code>Datasource</code>.</p></li>
<li><p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3)
location for staging Amazon Redshift data. The data retrieved from
Amazon Redshift using the <code>SelectSqlQuery</code> query is stored in
this location.</p></li>
<li><p>DataSchemaUri - The Amazon S3 location of the
<code>DataSchema</code>.</p></li>
<li><p>DataSchema - A JSON string representing the schema. This is not
required if <code>DataSchemaUri</code> is specified.</p></li>
<li><p>DataRearrangement - A JSON string that represents the splitting
and rearrangement requirements for the <code>DataSource</code>.</p>
<p>Sample - <code
style="white-space: pre;">⁠ "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"⁠</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_data_source_from_redshift_:_RoleARN">RoleARN</code></td>
<td><p>[required] A fully specified role Amazon Resource Name (ARN).
Amazon ML assumes the role on behalf of the user to create the
following:</p>
<ul>
<li><p>A security group to allow Amazon ML to execute the
<code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p></li>
<li><p>An Amazon S3 bucket policy to grant Amazon ML read/write
permissions on the <code>S3StagingLocation</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_redshift_:_ComputeStatistics">ComputeStatistics</code></td>
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

    svc$create_data_source_from_redshift(
      DataSourceId = "string",
      DataSourceName = "string",
      DataSpec = list(
        DatabaseInformation = list(
          DatabaseName = "string",
          ClusterIdentifier = "string"
        ),
        SelectSqlQuery = "string",
        DatabaseCredentials = list(
          Username = "string",
          Password = "string"
        ),
        S3StagingLocation = "string",
        DataRearrangement = "string",
        DataSchema = "string",
        DataSchemaUri = "string"
      ),
      RoleARN = "string",
      ComputeStatistics = TRUE|FALSE
    )
