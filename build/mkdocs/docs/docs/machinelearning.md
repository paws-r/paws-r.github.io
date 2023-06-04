<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Machine Learning

### Description

Definition of the public APIs exposed by Amazon Machine Learning

### Usage

    machinelearning(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="machinelearning_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- machinelearning(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds one or more tags to an object, up to
a limit of 10</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_create_batch_prediction/"> create_batch_prediction </a></td>
<td style="text-align: left;">Generates predictions for a group of
observations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_create_data_source_from_rds/"> create_data_source_from_rds </a></td>
<td style="text-align: left;">Creates a DataSource object from an Amazon
Relational Database Service (Amazon RDS)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_create_data_source_from_redshift/"> create_data_source_from_redshift </a></td>
<td style="text-align: left;">Creates a DataSource from a database
hosted on an Amazon Redshift cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_create_data_source_from_s3/"> create_data_source_from_s3 </a></td>
<td style="text-align: left;">Creates a DataSource object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_create_evaluation/"> create_evaluation </a></td>
<td style="text-align: left;">Creates a new Evaluation of an
MLModel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_create_ml_model/"> create_ml_model </a></td>
<td style="text-align: left;">Creates a new MLModel using the DataSource
and the recipe as information sources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_create_realtime_endpoint/"> create_realtime_endpoint </a></td>
<td style="text-align: left;">Creates a real-time endpoint for the
MLModel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_delete_batch_prediction/"> delete_batch_prediction </a></td>
<td style="text-align: left;">Assigns the DELETED status to a
BatchPrediction, rendering it unusable</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_delete_data_source/"> delete_data_source </a></td>
<td style="text-align: left;">Assigns the DELETED status to a
DataSource, rendering it unusable</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_delete_evaluation/"> delete_evaluation </a></td>
<td style="text-align: left;">Assigns the DELETED status to an
Evaluation, rendering it unusable</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_delete_ml_model/"> delete_ml_model </a></td>
<td style="text-align: left;">Assigns the DELETED status to an MLModel,
rendering it unusable</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_delete_realtime_endpoint/"> delete_realtime_endpoint </a></td>
<td style="text-align: left;">Deletes a real time endpoint of an
MLModel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Deletes the specified tags associated with
an ML object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_describe_batch_predictions/"> describe_batch_predictions </a></td>
<td style="text-align: left;">Returns a list of BatchPrediction
operations that match the search criteria in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_describe_data_sources/"> describe_data_sources </a></td>
<td style="text-align: left;">Returns a list of DataSource that match
the search criteria in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_describe_evaluations/"> describe_evaluations </a></td>
<td style="text-align: left;">Returns a list of DescribeEvaluations that
match the search criteria in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_describe_ml_models/"> describe_ml_models </a></td>
<td style="text-align: left;">Returns a list of MLModel that match the
search criteria in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes one or more of the tags for your
Amazon ML object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_get_batch_prediction/"> get_batch_prediction </a></td>
<td style="text-align: left;">Returns a BatchPrediction that includes
detailed metadata, status, and data file information for a Batch
Prediction request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_get_data_source/"> get_data_source </a></td>
<td style="text-align: left;">Returns a DataSource that includes
metadata and data file information, as well as the current status of the
DataSource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_get_evaluation/"> get_evaluation </a></td>
<td style="text-align: left;">Returns an Evaluation that includes
metadata as well as the current status of the Evaluation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_get_ml_model/"> get_ml_model </a></td>
<td style="text-align: left;">Returns an MLModel that includes detailed
metadata, data source information, and the current status of the
MLModel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_predict/"> predict </a></td>
<td style="text-align: left;">Generates a prediction for the observation
using the specified ML Model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_update_batch_prediction/"> update_batch_prediction </a></td>
<td style="text-align: left;">Updates the BatchPredictionName of a
BatchPrediction</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_update_data_source/"> update_data_source </a></td>
<td style="text-align: left;">Updates the DataSourceName of a
DataSource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../machinelearning_update_evaluation/"> update_evaluation </a></td>
<td style="text-align: left;">Updates the EvaluationName of an
Evaluation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../machinelearning_update_ml_model/"> update_ml_model </a></td>
<td style="text-align: left;">Updates the MLModelName and the
ScoreThreshold of an MLModel</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- machinelearning()
    svc$add_tags(
      Foo = 123
    )

    ## End(Not run)
