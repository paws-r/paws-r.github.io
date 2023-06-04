<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_batch_prediction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates predictions for a group of observations

### Description

Generates predictions for a group of observations. The observations to
process exist in one or more data files referenced by a `DataSource`.
This operation creates a new `BatchPrediction`, and uses an `MLModel`
and the data files referenced by the `DataSource` as information
sources.

`create_batch_prediction` is an asynchronous operation. In response to
`create_batch_prediction`, Amazon Machine Learning (Amazon ML)
immediately returns and sets the `BatchPrediction` status to `PENDING`.
After the `BatchPrediction` completes, Amazon ML sets the status to
`COMPLETED`.

You can poll for status updates by using the `get_batch_prediction`
operation and checking the `Status` parameter of the result. After the
`COMPLETED` status appears, the results are available in the location
specified by the `OutputUri` parameter.

### Usage

    machinelearning_create_batch_prediction(BatchPredictionId,
      BatchPredictionName, MLModelId, BatchPredictionDataSourceId, OutputUri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_batch_prediction_:_BatchPredictionId">BatchPredictionId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>BatchPrediction</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_batch_prediction_:_BatchPredictionName">BatchPredictionName</code></td>
<td><p>A user-supplied name or description of the
<code>BatchPrediction</code>. <code>BatchPredictionName</code> can only
use the UTF-8 character set.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_batch_prediction_:_MLModelId">MLModelId</code></td>
<td><p>[required] The ID of the <code>MLModel</code> that will generate
predictions for the group of observations.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_batch_prediction_:_BatchPredictionDataSourceId">BatchPredictionDataSourceId</code></td>
<td><p>[required] The ID of the <code>DataSource</code> that points to
the group of observations to predict.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_batch_prediction_:_OutputUri">OutputUri</code></td>
<td><p>[required] The location of an Amazon Simple Storage Service
(Amazon S3) bucket or directory to store the batch prediction results.
The following substrings are not allowed in the <code
style="white-space: pre;">⁠s3 key⁠</code> portion of the
<code>outputURI</code> field: ':', '//', '/./', '/../'.</p>
<p>Amazon ML needs permissions to store and retrieve the logs on your
behalf. For information about how to set permissions, see the <a
href="https://docs.aws.amazon.com/machine-learning/latest/dg/">Amazon
Machine Learning Developer Guide</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BatchPredictionId = "string"
    )

### Request syntax

    svc$create_batch_prediction(
      BatchPredictionId = "string",
      BatchPredictionName = "string",
      MLModelId = "string",
      BatchPredictionDataSourceId = "string",
      OutputUri = "string"
    )
