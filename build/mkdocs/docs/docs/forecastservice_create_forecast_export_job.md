<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_forecast_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports a forecast created by the CreateForecast operation to your Amazon Simple Storage Service (Amazon S3) bucket

### Description

Exports a forecast created by the `create_forecast` operation to your
Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name
will match the following conventions:

\\ForecastExportJobName\\*\\ExportTimestamp\\*\\PartNumber\\

where the \\ExportTimestamp\\ component is in Java SimpleDateFormat
(yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the Amazon S3 bucket. For more information, see aws-forecast-iam-roles.

For more information, see howitworks-forecast.

To get a list of all your forecast export jobs, use the
`list_forecast_export_jobs` operation.

The `Status` of the forecast export job must be `ACTIVE` before you can
access the forecast in your Amazon S3 bucket. To get the status, use the
`describe_forecast_export_job` operation.

### Usage

    forecastservice_create_forecast_export_job(ForecastExportJobName,
      ForecastArn, Destination, Tags, Format)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_forecast_export_job_:_ForecastExportJobName">ForecastExportJobName</code></td>
<td><p>[required] The name for the forecast export job.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_forecast_export_job_:_ForecastArn">ForecastArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the forecast that
you want to export.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_forecast_export_job_:_Destination">Destination</code></td>
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
id="forecastservice_create_forecast_export_job_:_Tags">Tags</code></td>
<td><p>The optional metadata that you apply to the forecast export job
to help you categorize and organize them. Each tag consists of a key and
an optional value, both of which you define.</p>
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
id="forecastservice_create_forecast_export_job_:_Format">Format</code></td>
<td><p>The format of the exported data, CSV or PARQUET. The default
value is CSV.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ForecastExportJobArn = "string"
    )

### Request syntax

    svc$create_forecast_export_job(
      ForecastExportJobName = "string",
      ForecastArn = "string",
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
