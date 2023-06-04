<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_what_if_forecast_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports a forecast created by the CreateWhatIfForecast operation to your Amazon Simple Storage Service (Amazon S3) bucket

### Description

Exports a forecast created by the `create_what_if_forecast` operation to
your Amazon Simple Storage Service (Amazon S3) bucket. The forecast file
name will match the following conventions:

`⁠≈<ForecastExportJobName>_<ExportTimestamp>_<PartNumber>⁠`

The \\ExportTimestamp\\ component is in Java SimpleDateFormat
(yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the Amazon S3 bucket. For more information, see aws-forecast-iam-roles.

For more information, see howitworks-forecast.

To get a list of all your what-if forecast export jobs, use the
`list_what_if_forecast_exports` operation.

The `Status` of the forecast export job must be `ACTIVE` before you can
access the forecast in your Amazon S3 bucket. To get the status, use the
`describe_what_if_forecast_export` operation.

### Usage

    forecastservice_create_what_if_forecast_export(WhatIfForecastExportName,
      WhatIfForecastArns, Destination, Tags, Format)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_what_if_forecast_export_:_WhatIfForecastExportName">WhatIfForecastExportName</code></td>
<td><p>[required] The name of the what-if forecast to export.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_what_if_forecast_export_:_WhatIfForecastArns">WhatIfForecastArns</code></td>
<td><p>[required] The list of what-if forecast Amazon Resource Names
(ARNs) to export.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_what_if_forecast_export_:_Destination">Destination</code></td>
<td><p>[required] The location where you want to save the forecast and
an Identity and Access Management (IAM) role that Amazon Forecast can
assume to access the location. The forecast must be exported to an
Amazon S3 bucket.</p>
<p>If encryption is used, <code>Destination</code> must include an Key
Management Service (KMS) key. The IAM role must allow Amazon Forecast
permission to access the key.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_what_if_forecast_export_:_Tags">Tags</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a>
to apply to the what if forecast.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_what_if_forecast_export_:_Format">Format</code></td>
<td><p>The format of the exported data, CSV or PARQUET.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WhatIfForecastExportArn = "string"
    )

### Request syntax

    svc$create_what_if_forecast_export(
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Format = "string"
    )
