<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_predictor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation creates a legacy predictor that does not include all the predictor functionalities provided by Amazon Forecast

### Description

This operation creates a legacy predictor that does not include all the
predictor functionalities provided by Amazon Forecast. To create a
predictor that is compatible with all aspects of Forecast, use
`create_auto_predictor`.

Creates an Amazon Forecast predictor.

In the request, provide a dataset group and either specify an algorithm
or let Amazon Forecast choose an algorithm for you using AutoML. If you
specify an algorithm, you also can override algorithm-specific
hyperparameters.

Amazon Forecast uses the algorithm to train a predictor using the latest
version of the datasets in the specified dataset group. You can then
generate a forecast using the `create_forecast` operation.

To see the evaluation metrics, use the `get_accuracy_metrics` operation.

You can specify a featurization configuration to fill and aggregate the
data fields in the `TARGET_TIME_SERIES` dataset to improve model
training. For more information, see FeaturizationConfig.

For RELATED\_TIME\_SERIES datasets, `create_predictor` verifies that the
`DataFrequency` specified when the dataset was created matches the
`ForecastFrequency`. TARGET\_TIME\_SERIES datasets don't have this
restriction. Amazon Forecast also verifies the delimiter and timestamp
format. For more information, see howitworks-datasets-groups.

By default, predictors are trained and evaluated at the 0.1 (P10), 0.5
(P50), and 0.9 (P90) quantiles. You can choose custom forecast types to
train and evaluate your predictor by setting the `ForecastTypes`.

**AutoML**

If you want Amazon Forecast to evaluate each algorithm and choose the
one that minimizes the `⁠objective function⁠`, set `PerformAutoML` to
`true`. The `⁠objective function⁠` is defined as the mean of the weighted
losses over the forecast types. By default, these are the p10, p50, and
p90 quantile losses. For more information, see EvaluationResult.

When AutoML is enabled, the following properties are disallowed:

-   `AlgorithmArn`

-   `HPOConfig`

-   `PerformHPO`

-   `TrainingParameters`

To get a list of all of your predictors, use the `list_predictors`
operation.

Before you can use the predictor to create a forecast, the `Status` of
the predictor must be `ACTIVE`, signifying that training has completed.
To get the status, use the `describe_predictor` operation.

### Usage

    forecastservice_create_predictor(PredictorName, AlgorithmArn,
      ForecastHorizon, ForecastTypes, PerformAutoML, AutoMLOverrideStrategy,
      PerformHPO, TrainingParameters, EvaluationParameters, HPOConfig,
      InputDataConfig, FeaturizationConfig, EncryptionConfig, Tags,
      OptimizationMetric)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_PredictorName">PredictorName</code></td>
<td><p>[required] A name for the predictor.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_predictor_:_AlgorithmArn">AlgorithmArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the algorithm to use for model
training. Required if <code>PerformAutoML</code> is not set to
<code>true</code>.</p>
<p><strong>Supported algorithms:</strong></p>
<ul>
<li><p><code>arn:aws:forecast:::algorithm/ARIMA</code></p></li>
<li><p><code>arn:aws:forecast:::algorithm/CNN-QR</code></p></li>
<li><p><code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code></p></li>
<li><p><code>arn:aws:forecast:::algorithm/ETS</code></p></li>
<li><p><code>arn:aws:forecast:::algorithm/NPTS</code></p></li>
<li><p><code>arn:aws:forecast:::algorithm/Prophet</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_ForecastHorizon">ForecastHorizon</code></td>
<td><p>[required] Specifies the number of time-steps that the model is
trained to predict. The forecast horizon is also called the prediction
length.</p>
<p>For example, if you configure a dataset for daily data collection
(using the <code>DataFrequency</code> parameter of the
<code>create_dataset</code> operation) and set the forecast horizon to
10, the model returns predictions for 10 days.</p>
<p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3
of the TARGET_TIME_SERIES dataset length.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_predictor_:_ForecastTypes">ForecastTypes</code></td>
<td><p>Specifies the forecast types used to train a predictor. You can
specify up to five forecast types. Forecast types can be quantiles from
0.01 to 0.99, by increments of 0.01 or higher. You can also specify the
mean forecast with <code>mean</code>.</p>
<p>The default value is <code
style="white-space: pre;">⁠["0.10", "0.50", "0.9"]⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_PerformAutoML">PerformAutoML</code></td>
<td><p>Whether to perform AutoML. When Amazon Forecast performs AutoML,
it evaluates the algorithms it provides and chooses the best algorithm
and configuration for your training dataset.</p>
<p>The default value is <code>false</code>. In this case, you are
required to specify an algorithm.</p>
<p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon
Forecast perform AutoML. This is a good option if you aren't sure which
algorithm is suitable for your training data. In this case,
<code>PerformHPO</code> must be false.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_predictor_:_AutoMLOverrideStrategy">AutoMLOverrideStrategy</code></td>
<td><p>The <code>LatencyOptimized</code> AutoML override strategy is
only available in private beta. Contact Amazon Web Services Support or
your account manager to learn more about access privileges.</p>
<p>Used to overide the default AutoML strategy, which is to optimize
predictor accuracy. To apply an AutoML strategy that minimizes training
time, use <code>LatencyOptimized</code>.</p>
<p>This parameter is only valid for predictors trained using
AutoML.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_PerformHPO">PerformHPO</code></td>
<td><p>Whether to perform hyperparameter optimization (HPO). HPO finds
optimal hyperparameter values for your training data. The process of
performing HPO is known as running a hyperparameter tuning job.</p>
<p>The default value is <code>false</code>. In this case, Amazon
Forecast uses default hyperparameter values from the chosen
algorithm.</p>
<p>To override the default values, set <code>PerformHPO</code> to
<code>true</code> and, optionally, supply the
HyperParameterTuningJobConfig object. The tuning job specifies a metric
to optimize, which hyperparameters participate in tuning, and the valid
range for each tunable hyperparameter. In this case, you are required to
specify an algorithm and <code>PerformAutoML</code> must be false.</p>
<p>The following algorithms support HPO:</p>
<ul>
<li><p>DeepAR+</p></li>
<li><p>CNN-QR</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_predictor_:_TrainingParameters">TrainingParameters</code></td>
<td><p>The hyperparameters to override for model training. The
hyperparameters that you can override are listed in the individual
algorithms. For the list of supported algorithms, see
aws-forecast-choosing-recipes.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_EvaluationParameters">EvaluationParameters</code></td>
<td><p>Used to override the default evaluation parameters of the
specified algorithm. Amazon Forecast evaluates a predictor by splitting
a dataset into training data and testing data. The evaluation parameters
define how to perform the split and the number of iterations.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_predictor_:_HPOConfig">HPOConfig</code></td>
<td><p>Provides hyperparameter override values for the algorithm. If you
don't provide this parameter, Amazon Forecast uses default values. The
individual algorithms specify which hyperparameters support
hyperparameter optimization (HPO). For more information, see
aws-forecast-choosing-recipes.</p>
<p>If you included the <code>HPOConfig</code> object, you must set
<code>PerformHPO</code> to true.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Describes the dataset group that contains the data to
use to train the predictor.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_predictor_:_FeaturizationConfig">FeaturizationConfig</code></td>
<td><p>[required] The featurization configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_EncryptionConfig">EncryptionConfig</code></td>
<td><p>An Key Management Service (KMS) key and the Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.</p></td>
</tr>
<tr class="even">
<td><code id="forecastservice_create_predictor_:_Tags">Tags</code></td>
<td><p>The optional metadata that you apply to the predictor to help you
categorize and organize them. Each tag consists of a key and an optional
value, both of which you define.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50.</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8.</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for keys as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys with this prefix.
Values can have this prefix. If a tag value has <code>aws</code> as its
prefix but the key does not, then Forecast considers it to be a user tag
and will count against the limit of 50 tags. Tags with only the key
prefix of <code>aws</code> do not count against your tags per resource
limit.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_predictor_:_OptimizationMetric">OptimizationMetric</code></td>
<td><p>The accuracy metric used to optimize the predictor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PredictorArn = "string"
    )

### Request syntax

    svc$create_predictor(
      PredictorName = "string",
      AlgorithmArn = "string",
      ForecastHorizon = 123,
      ForecastTypes = list(
        "string"
      ),
      PerformAutoML = TRUE|FALSE,
      AutoMLOverrideStrategy = "LatencyOptimized"|"AccuracyOptimized",
      PerformHPO = TRUE|FALSE,
      TrainingParameters = list(
        "string"
      ),
      EvaluationParameters = list(
        NumberOfBacktestWindows = 123,
        BackTestWindowOffset = 123
      ),
      HPOConfig = list(
        ParameterRanges = list(
          CategoricalParameterRanges = list(
            list(
              Name = "string",
              Values = list(
                "string"
              )
            )
          ),
          ContinuousParameterRanges = list(
            list(
              Name = "string",
              MaxValue = 123.0,
              MinValue = 123.0,
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          ),
          IntegerParameterRanges = list(
            list(
              Name = "string",
              MaxValue = 123,
              MinValue = 123,
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          )
        )
      ),
      InputDataConfig = list(
        DatasetGroupArn = "string",
        SupplementaryFeatures = list(
          list(
            Name = "string",
            Value = "string"
          )
        )
      ),
      FeaturizationConfig = list(
        ForecastFrequency = "string",
        ForecastDimensions = list(
          "string"
        ),
        Featurizations = list(
          list(
            AttributeName = "string",
            FeaturizationPipeline = list(
              list(
                FeaturizationMethodName = "filling",
                FeaturizationMethodParameters = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      EncryptionConfig = list(
        RoleArn = "string",
        KMSKeyArn = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      OptimizationMetric = "WAPE"|"RMSE"|"AverageWeightedQuantileLoss"|"MASE"|"MAPE"
    )
