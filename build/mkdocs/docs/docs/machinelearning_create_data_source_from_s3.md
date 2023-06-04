<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_data_source_from_s3</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a DataSource object

### Description

Creates a `DataSource` object. A `DataSource` references data that can
be used to perform `create_ml_model`, `create_evaluation`, or
`create_batch_prediction` operations.

`create_data_source_from_s3` is an asynchronous operation. In response
to `create_data_source_from_s3`, Amazon Machine Learning (Amazon ML)
immediately returns and sets the `DataSource` status to `PENDING`. After
the `DataSource` has been created and is ready for use, Amazon ML sets
the `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED`
or `PENDING` state can be used to perform only `create_ml_model`,
`create_evaluation` or `create_batch_prediction` operations.

If Amazon ML can't accept the input source, it sets the `Status`
parameter to `FAILED` and includes an error message in the `Message`
attribute of the `get_data_source` operation response.

The observation data used in a `DataSource` should be ready to use; that
is, it should have a consistent structure, and missing data values
should be kept to a minimum. The observation data must reside in one or
more .csv files in an Amazon Simple Storage Service (Amazon S3)
location, along with a schema that describes the data items by name and
type. The same schema must be used for all of the data files referenced
by the `DataSource`.

After the `DataSource` has been created, it's ready to use in
evaluations and batch predictions. If you plan to use the `DataSource`
to train an `MLModel`, the `DataSource` also needs a recipe. A recipe
describes how each input variable will be used in training an `MLModel`.
Will the variable be included or excluded from training? Will the
variable be manipulated; for example, will it be combined with another
variable or will it be split apart into word combinations? The recipe
provides answers to these questions.

### Usage

    machinelearning_create_data_source_from_s3(DataSourceId, DataSourceName,
      DataSpec, ComputeStatistics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_s3_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] A user-supplied identifier that uniquely identifies
the <code>DataSource</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_data_source_from_s3_:_DataSourceName">DataSourceName</code></td>
<td><p>A user-supplied name or description of the
<code>DataSource</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_data_source_from_s3_:_DataSpec">DataSpec</code></td>
<td><p>[required] The data specification of a
<code>DataSource</code>:</p>
<ul>
<li><p>DataLocationS3 - The Amazon S3 location of the observation
data.</p></li>
<li><p>DataSchemaLocationS3 - The Amazon S3 location of the
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
id="machinelearning_create_data_source_from_s3_:_ComputeStatistics">ComputeStatistics</code></td>
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

    svc$create_data_source_from_s3(
      DataSourceId = "string",
      DataSourceName = "string",
      DataSpec = list(
        DataLocationS3 = "string",
        DataRearrangement = "string",
        DataSchema = "string",
        DataSchemaLocationS3 = "string"
      ),
      ComputeStatistics = TRUE|FALSE
    )
