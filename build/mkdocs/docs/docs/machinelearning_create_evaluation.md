<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Evaluation of an MLModel

### Description

Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated on
a set of observations associated to a `DataSource`. Like a `DataSource`
for an `MLModel`, the `DataSource` for an `Evaluation` contains values
for the `⁠Target Variable⁠`. The `Evaluation` compares the predicted
result for each observation to the actual outcome and provides a summary
so that you know how effective the `MLModel` functions on the test data.
Evaluation generates a relevant performance metric, such as BinaryAUC,
RegressionRMSE or MulticlassAvgFScore based on the corresponding
`MLModelType`: `BINARY`, `REGRESSION` or `MULTICLASS`.

`create_evaluation` is an asynchronous operation. In response to
`create_evaluation`, Amazon Machine Learning (Amazon ML) immediately
returns and sets the evaluation status to `PENDING`. After the
`Evaluation` is created and ready for use, Amazon ML sets the status to
`COMPLETED`.

You can use the `get_evaluation` operation to check progress of the
evaluation during the creation operation.

### Usage

    machinelearning_create_evaluation(EvaluationId, EvaluationName,
      MLModelId, EvaluationDataSourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>Evaluation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_evaluation_:_EvaluationName">EvaluationName</code></td>
<td><p>A user-supplied name or description of the
<code>Evaluation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_evaluation_:_MLModelId">MLModelId</code></td>
<td><p>[required] The ID of the <code>MLModel</code> to evaluate.</p>
<p>The schema used in creating the <code>MLModel</code> must match the
schema of the <code>DataSource</code> used in the
<code>Evaluation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_evaluation_:_EvaluationDataSourceId">EvaluationDataSourceId</code></td>
<td><p>[required] The ID of the <code>DataSource</code> for the
evaluation. The schema of the <code>DataSource</code> must match the
schema used to create the <code>MLModel</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationId = "string"
    )

### Request syntax

    svc$create_evaluation(
      EvaluationId = "string",
      EvaluationName = "string",
      MLModelId = "string",
      EvaluationDataSourceId = "string"
    )
