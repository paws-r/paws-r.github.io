<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_what_if_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the what-if forecast created using the CreateWhatIfForecast operation

### Description

Describes the what-if forecast created using the
`create_what_if_forecast` operation.

In addition to listing the properties provided in the
`create_what_if_forecast` request, this operation lists the following
properties:

-   `CreationTime`

-   `LastModificationTime`

-   `Message` - If an error occurred, information about the error.

-   `Status`

### Usage

    forecastservice_describe_what_if_forecast(WhatIfForecastArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_what_if_forecast_:_WhatIfForecastArn">WhatIfForecastArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if forecast
that you are interested in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WhatIfForecastName = "string",
      WhatIfForecastArn = "string",
      WhatIfAnalysisArn = "string",
      EstimatedTimeRemainingInMinutes = 123,
      Status = "string",
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
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
      ForecastTypes = list(
        "string"
      )
    )

### Request syntax

    svc$describe_what_if_forecast(
      WhatIfForecastArn = "string"
    )
