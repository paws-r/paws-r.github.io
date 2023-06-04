<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_what_if_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A what-if forecast is a forecast that is created from a modified version of the baseline forecast

### Description

A what-if forecast is a forecast that is created from a modified version
of the baseline forecast. Each what-if forecast incorporates either a
replacement dataset or a set of transformations to the original dataset.

### Usage

    forecastservice_create_what_if_forecast(WhatIfForecastName,
      WhatIfAnalysisArn, TimeSeriesTransformations,
      TimeSeriesReplacementsDataSource, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_what_if_forecast_:_WhatIfForecastName">WhatIfForecastName</code></td>
<td><p>[required] The name of the what-if forecast. Names must be unique
within each what-if analysis.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_what_if_forecast_:_WhatIfAnalysisArn">WhatIfAnalysisArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if
analysis.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_what_if_forecast_:_TimeSeriesTransformations">TimeSeriesTransformations</code></td>
<td><p>The transformations that are applied to the baseline time series.
Each transformation contains an action and a set of conditions. An
action is applied only when all conditions are met. If no conditions are
provided, the action is applied to all items.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_what_if_forecast_:_TimeSeriesReplacementsDataSource">TimeSeriesReplacementsDataSource</code></td>
<td><p>The replacement time series dataset, which contains the rows that
you want to change in the related time series dataset. A replacement
time series does not need to contain all rows that are in the baseline
related time series. Include only the rows (measure-dimension
combinations) that you want to include in the what-if forecast.</p>
<p>This dataset is merged with the original time series to create a
transformed dataset that is used for the what-if analysis.</p>
<p>This dataset should contain the items to modify (such as item_id or
workforce_type), any relevant dimensions, the timestamp column, and at
least one of the related time series columns. This file should not
contain duplicate timestamps for the same time series.</p>
<p>Timestamps and item_ids not included in this dataset are not included
in the what-if analysis.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_what_if_forecast_:_Tags">Tags</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a>
to apply to the what if forecast.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WhatIfForecastArn = "string"
    )

### Request syntax

    svc$create_what_if_forecast(
      WhatIfForecastName = "string",
      WhatIfAnalysisArn = "string",
      TimeSeriesTransformations = list(
        list(
          Action = list(
            AttributeName = "string",
            Operation = "ADD"|"SUBTRACT"|"MULTIPLY"|"DIVIDE",
            Value = 123.0
          ),
          TimeSeriesConditions = list(
            list(
              AttributeName = "string",
              AttributeValue = "string",
              Condition = "EQUALS"|"NOT_EQUALS"|"LESS_THAN"|"GREATER_THAN"
            )
          )
        )
      ),
      TimeSeriesReplacementsDataSource = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        ),
        Schema = list(
          Attributes = list(
            list(
              AttributeName = "string",
              AttributeType = "string"|"integer"|"float"|"timestamp"|"geolocation"
            )
          )
        ),
        Format = "string",
        TimestampFormat = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
