<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_forecast_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a forecast export job created using the CreateForecastExportJob operation

### Description

Describes a forecast export job created using the
`create_forecast_export_job` operation.

In addition to listing the properties provided by the user in the
`create_forecast_export_job` request, this operation lists the following
properties:

-   `CreationTime`

-   `LastModificationTime`

-   `Status`

-   `Message` - If an error occurred, information about the error.

### Usage

    forecastservice_describe_forecast_export_job(ForecastExportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_forecast_export_job_:_ForecastExportJobArn">ForecastExportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the forecast export
job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ForecastExportJobArn = "string",
      ForecastExportJobName = "string",
      ForecastArn = "string",
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
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      Format = "string"
    )

### Request syntax

    svc$describe_forecast_export_job(
      ForecastExportJobArn = "string"
    )
