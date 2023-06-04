<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_ml_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new MLModel using the DataSource and the recipe as information sources

### Description

Creates a new `MLModel` using the `DataSource` and the recipe as
information sources.

An `MLModel` is nearly immutable. Users can update only the
`MLModelName` and the `ScoreThreshold` in an `MLModel` without creating
a new `MLModel`.

`create_ml_model` is an asynchronous operation. In response to
`create_ml_model`, Amazon Machine Learning (Amazon ML) immediately
returns and sets the `MLModel` status to `PENDING`. After the `MLModel`
has been created and ready is for use, Amazon ML sets the status to
`COMPLETED`.

You can use the `get_ml_model` operation to check the progress of the
`MLModel` during the creation operation.

`create_ml_model` requires a `DataSource` with computed statistics,
which can be created by setting `ComputeStatistics` to `true` in
`create_data_source_from_rds`, `create_data_source_from_s3`, or
`create_data_source_from_redshift` operations.

### Usage

    machinelearning_create_ml_model(MLModelId, MLModelName, MLModelType,
      Parameters, TrainingDataSourceId, Recipe, RecipeUri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_ml_model_:_MLModelId">MLModelId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>MLModel</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_ml_model_:_MLModelName">MLModelName</code></td>
<td><p>A user-supplied name or description of the
<code>MLModel</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_ml_model_:_MLModelType">MLModelType</code></td>
<td><p>[required] The category of supervised learning that this
<code>MLModel</code> will address. Choose from the following types:</p>
<ul>
<li><p>Choose <code>REGRESSION</code> if the <code>MLModel</code> will
be used to predict a numeric value.</p></li>
<li><p>Choose <code>BINARY</code> if the <code>MLModel</code> result has
two possible values.</p></li>
<li><p>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result
has a limited number of values.</p></li>
</ul>
<p>For more information, see the <a
href="https://docs.aws.amazon.com/machine-learning/latest/dg/">Amazon
Machine Learning Developer Guide</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_ml_model_:_Parameters">Parameters</code></td>
<td><p>A list of the training parameters in the <code>MLModel</code>.
The list is implemented as a map of key-value pairs.</p>
<p>The following is the current set of training parameters:</p>
<ul>
<li><p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size
of the model. Depending on the input data, the size of the model might
affect its performance.</p>
<p>The value is an integer that ranges from <code>100000</code> to
<code>2147483648</code>. The default value is
<code>33554432</code>.</p></li>
<li><p><code>sgd.maxPasses</code> - The number of times that the
training process traverses the observations to build the
<code>MLModel</code>. The value is an integer that ranges from
<code>1</code> to <code>10000</code>. The default value is
<code>10</code>.</p></li>
<li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the
training data. Shuffling the data improves a model's ability to find the
optimal solution for a variety of data types. The valid values are
<code>auto</code> and <code>none</code>. The default value is
<code>none</code>. We strongly recommend that you shuffle your
data.</p></li>
<li><p><code>sgd.l1RegularizationAmount</code> - The coefficient
regularization L1 norm. It controls overfitting the data by penalizing
large coefficients. This tends to drive coefficients to zero, resulting
in a sparse feature set. If you use this parameter, start by specifying
a small value, such as <code>1.0E-08</code>.</p>
<p>The value is a double that ranges from <code>0</code> to
<code>MAX_DOUBLE</code>. The default is to not use L1 normalization.
This parameter can't be used when <code>L2</code> is specified. Use this
parameter sparingly.</p></li>
<li><p><code>sgd.l2RegularizationAmount</code> - The coefficient
regularization L2 norm. It controls overfitting the data by penalizing
large coefficients. This tends to drive coefficients to small, nonzero
values. If you use this parameter, start by specifying a small value,
such as <code>1.0E-08</code>.</p>
<p>The value is a double that ranges from <code>0</code> to
<code>MAX_DOUBLE</code>. The default is to not use L2 normalization.
This parameter can't be used when <code>L1</code> is specified. Use this
parameter sparingly.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_ml_model_:_TrainingDataSourceId">TrainingDataSourceId</code></td>
<td><p>[required] The <code>DataSource</code> that points to the
training data.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_create_ml_model_:_Recipe">Recipe</code></td>
<td><p>The data recipe for creating the <code>MLModel</code>. You must
specify either the recipe or its URI. If you don't specify a recipe or
its URI, Amazon ML creates a default.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_create_ml_model_:_RecipeUri">RecipeUri</code></td>
<td><p>The Amazon Simple Storage Service (Amazon S3) location and file
name that contains the <code>MLModel</code> recipe. You must specify
either the recipe or its URI. If you don't specify a recipe or its URI,
Amazon ML creates a default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MLModelId = "string"
    )

### Request syntax

    svc$create_ml_model(
      MLModelId = "string",
      MLModelName = "string",
      MLModelType = "REGRESSION"|"BINARY"|"MULTICLASS",
      Parameters = list(
        "string"
      ),
      TrainingDataSourceId = "string",
      Recipe = "string",
      RecipeUri = "string"
    )
