<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_auto_predictor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Forecast predictor

### Description

Creates an Amazon Forecast predictor.

Amazon Forecast creates predictors with AutoPredictor, which involves
applying the optimal combination of algorithms to each time series in
your datasets. You can use `create_auto_predictor` to create new
predictors or upgrade/retrain existing predictors.

**Creating new predictors**

The following parameters are required when creating a new predictor:

-   `PredictorName` - A unique name for the predictor.

-   `DatasetGroupArn` - The ARN of the dataset group used to train the
    predictor.

-   `ForecastFrequency` - The granularity of your forecasts (hourly,
    daily, weekly, etc).

-   `ForecastHorizon` - The number of time-steps that the model
    predicts. The forecast horizon is also called the prediction length.

When creating a new predictor, do not specify a value for
`ReferencePredictorArn`.

**Upgrading and retraining predictors**

The following parameters are required when retraining or upgrading a
predictor:

-   `PredictorName` - A unique name for the predictor.

-   `ReferencePredictorArn` - The ARN of the predictor to retrain or
    upgrade.

When upgrading or retraining a predictor, only specify values for the
`ReferencePredictorArn` and `PredictorName`.

### Usage

    forecastservice_create_auto_predictor(PredictorName, ForecastHorizon,
      ForecastTypes, ForecastDimensions, ForecastFrequency, DataConfig,
      EncryptionConfig, ReferencePredictorArn, OptimizationMetric,
      ExplainPredictor, Tags, MonitorConfig, TimeAlignmentBoundary)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_PredictorName">PredictorName</code></td>
<td><p>[required] A unique name for the predictor</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_auto_predictor_:_ForecastHorizon">ForecastHorizon</code></td>
<td><p>The number of time-steps that the model predicts. The forecast
horizon is also called the prediction length.</p>
<p>The maximum forecast horizon is the lesser of 500 time-steps or 1/4
of the TARGET_TIME_SERIES dataset length. If you are retraining an
existing AutoPredictor, then the maximum forecast horizon is the lesser
of 500 time-steps or 1/3 of the TARGET_TIME_SERIES dataset length.</p>
<p>If you are upgrading to an AutoPredictor or retraining an existing
AutoPredictor, you cannot update the forecast horizon parameter. You can
meet this requirement by providing longer time-series in the
dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_ForecastTypes">ForecastTypes</code></td>
<td><p>The forecast types used to train a predictor. You can specify up
to five forecast types. Forecast types can be quantiles from 0.01 to
0.99, by increments of 0.01 or higher. You can also specify the mean
forecast with <code>mean</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_auto_predictor_:_ForecastDimensions">ForecastDimensions</code></td>
<td><p>An array of dimension (field) names that specify how to group the
generated forecast.</p>
<p>For example, if you are generating forecasts for item sales across
all your stores, and your dataset contains a <code>store_id</code>
field, you would specify <code>store_id</code> as a dimension to group
sales forecasts for each store.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_ForecastFrequency">ForecastFrequency</code></td>
<td><p>The frequency of predictions in a forecast.</p>
<p>Valid intervals are an integer followed by Y (Year), M (Month), W
(Week), D (Day), H (Hour), and min (Minute). For example, "1D" indicates
every day and "15min" indicates every 15 minutes. You cannot specify a
value that would overlap with the next larger frequency. That means, for
example, you cannot specify a frequency of 60 minutes, because that is
equivalent to 1 hour. The valid values for each frequency are the
following:</p>
<ul>
<li><p>Minute - 1-59</p></li>
<li><p>Hour - 1-23</p></li>
<li><p>Day - 1-6</p></li>
<li><p>Week - 1-4</p></li>
<li><p>Month - 1-11</p></li>
<li><p>Year - 1</p></li>
</ul>
<p>Thus, if you want every other week forecasts, specify "2W". Or, if
you want quarterly forecasts, you specify "3M".</p>
<p>The frequency must be greater than or equal to the TARGET_TIME_SERIES
dataset frequency.</p>
<p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be
equal to the RELATED_TIME_SERIES dataset frequency.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_auto_predictor_:_DataConfig">DataConfig</code></td>
<td><p>The data configuration for your dataset group and any additional
datasets.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_EncryptionConfig">EncryptionConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_auto_predictor_:_ReferencePredictorArn">ReferencePredictorArn</code></td>
<td><p>The ARN of the predictor to retrain or upgrade. This parameter is
only used when retraining or upgrading a predictor. When creating a new
predictor, do not specify a value for this parameter.</p>
<p>When upgrading or retraining a predictor, only specify values for the
<code>ReferencePredictorArn</code> and <code>PredictorName</code>. The
value for <code>PredictorName</code> must be a unique predictor
name.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_OptimizationMetric">OptimizationMetric</code></td>
<td><p>The accuracy metric used to optimize the predictor.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_auto_predictor_:_ExplainPredictor">ExplainPredictor</code></td>
<td><p>Create an Explainability resource for the predictor.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_Tags">Tags</code></td>
<td><p>Optional metadata to help you categorize and organize your
predictors. Each tag consists of a key and an optional value, both of
which you define. Tag keys and values are case sensitive.</p>
<p>The following restrictions apply to tags:</p>
<ul>
<li><p>For each resource, each tag key must be unique and each tag key
must have one value.</p></li>
<li><p>Maximum number of tags per resource: 50.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8.</p></li>
<li><p>Accepted characters: all letters and numbers, spaces
representable in UTF-8, and + - = . _ : / @. If your tagging schema is
used across other services and resources, the character restrictions of
those services also apply.</p></li>
<li><p>Key prefixes cannot include any upper or lowercase combination of
<code style="white-space: pre;">⁠aws:⁠</code> or <code
style="white-space: pre;">⁠AWS:⁠</code>. Values can have this prefix. If a
tag value has <code>aws</code> as its prefix but the key does not,
Forecast considers it to be a user tag and will count against the limit
of 50 tags. Tags with only the key prefix of <code>aws</code> do not
count against your tags per resource limit. You cannot edit or delete
tag keys with this prefix.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_auto_predictor_:_MonitorConfig">MonitorConfig</code></td>
<td><p>The configuration details for predictor monitoring. Provide a
name for the monitor resource to enable predictor monitoring.</p>
<p>Predictor monitoring allows you to see how your predictor's
performance changes over time. For more information, see <a
href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html">Predictor
Monitoring</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_auto_predictor_:_TimeAlignmentBoundary">TimeAlignmentBoundary</code></td>
<td><p>The time boundary Forecast uses to align and aggregate any data
that doesn't align with your forecast frequency. Provide the unit of
time and the time boundary as a key value pair. For more information on
specifying a time boundary, see <a
href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#specifying-time-boundary">Specifying
a Time Boundary</a>. If you don't provide a time boundary, Forecast uses
a set of <a
href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#default-time-boundaries">Default
Time Boundaries</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PredictorArn = "string"
    )

### Request syntax

    svc$create_auto_predictor(
      PredictorName = "string",
      ForecastHorizon = 123,
      ForecastTypes = list(
        "string"
      ),
      ForecastDimensions = list(
        "string"
      ),
      ForecastFrequency = "string",
      DataConfig = list(
        DatasetGroupArn = "string",
        AttributeConfigs = list(
          list(
            AttributeName = "string",
            Transformations = list(
              "string"
            )
          )
        ),
        AdditionalDatasets = list(
          list(
            Name = "string",
            Configuration = list(
              list(
                "string"
              )
            )
          )
        )
      ),
      EncryptionConfig = list(
        RoleArn = "string",
        KMSKeyArn = "string"
      ),
      ReferencePredictorArn = "string",
      OptimizationMetric = "WAPE"|"RMSE"|"AverageWeightedQuantileLoss"|"MASE"|"MAPE",
      ExplainPredictor = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      MonitorConfig = list(
        MonitorName = "string"
      ),
      TimeAlignmentBoundary = list(
        Month = "JANUARY"|"FEBRUARY"|"MARCH"|"APRIL"|"MAY"|"JUNE"|"JULY"|"AUGUST"|"SEPTEMBER"|"OCTOBER"|"NOVEMBER"|"DECEMBER",
        DayOfMonth = 123,
        DayOfWeek = "MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"|"SUNDAY",
        Hour = 123
      )
    )
