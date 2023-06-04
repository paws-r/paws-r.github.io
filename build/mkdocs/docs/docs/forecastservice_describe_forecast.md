<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a forecast created using the CreateForecast operation

### Description

Describes a forecast created using the `create_forecast` operation.

In addition to listing the properties provided in the `create_forecast`
request, this operation lists the following properties:

-   `DatasetGroupArn` - The dataset group that provided the training
    data.

-   `CreationTime`

-   `LastModificationTime`

-   `Status`

-   `Message` - If an error occurred, information about the error.

### Usage

    forecastservice_describe_forecast(ForecastArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_forecast_:_ForecastArn">ForecastArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
forecast.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ForecastArn = "string",
      ForecastName = "string",
      ForecastTypes = list(
        "string"
      ),
      PredictorArn = "string",
      DatasetGroupArn = "string",
      EstimatedTimeRemainingInMinutes = 123,
      Status = "string",
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      TimeSeriesSelector = list(
        TimeSeriesIdentifiers = list(
          DataSource = list(
            S3Config = list(
              Path = "string",
              RoleArn = "string",
              KMSKeyArn = "string"
            )
          ),
          Schema = list(
            Attributes = list(
              list(
                AttributeName = "string",
                AttributeType = "string"|"integer"|"float"|"timestamp"|"geolocation"
              )
            )
          ),
          Format = "string"
        )
      )
    )

### Request syntax

    svc$describe_forecast(
      ForecastArn = "string"
    )
