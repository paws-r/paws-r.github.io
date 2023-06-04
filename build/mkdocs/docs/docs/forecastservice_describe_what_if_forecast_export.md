<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_what_if_forecast_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the what-if forecast export created using the CreateWhatIfForecastExport operation

### Description

Describes the what-if forecast export created using the
`create_what_if_forecast_export` operation.

In addition to listing the properties provided in the
`create_what_if_forecast_export` request, this operation lists the
following properties:

-   `CreationTime`

-   `LastModificationTime`

-   `Message` - If an error occurred, information about the error.

-   `Status`

### Usage

    forecastservice_describe_what_if_forecast_export(
      WhatIfForecastExportArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_what_if_forecast_export_:_WhatIfForecastExportArn">WhatIfForecastExportArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if forecast
export that you are interested in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WhatIfForecastExportArn = "string",
      WhatIfForecastExportName = "string",
      WhatIfForecastArns = list(
        "string"
      ),
      Destination = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        )
      ),
      Message = "string",
      Status = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      EstimatedTimeRemainingInMinutes = 123,
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      Format = "string"
    )

### Request syntax

    svc$describe_what_if_forecast_export(
      WhatIfForecastExportArn = "string"
    )
