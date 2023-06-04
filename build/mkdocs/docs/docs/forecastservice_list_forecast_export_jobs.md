<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_list_forecast_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of forecast export jobs created using the CreateForecastExportJob operation

### Description

Returns a list of forecast export jobs created using the
`create_forecast_export_job` operation. For each forecast export job,
this operation returns a summary of its properties, including its Amazon
Resource Name (ARN). To retrieve the complete set of properties, use the
ARN with the `describe_forecast_export_job` operation. You can filter
the list using an array of Filter objects.

### Usage

    forecastservice_list_forecast_export_jobs(NextToken, MaxResults,
      Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_list_forecast_export_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_forecast_export_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The number of items to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_list_forecast_export_jobs_:_Filters">Filters</code></td>
<td><p>An array of filters. For each filter, you provide a condition and
a match statement. The condition is either <code>IS</code> or
<code>IS_NOT</code>, which specifies whether to include or exclude the
forecast export jobs that match the statement from the list,
respectively. The match statement consists of a key and a value.</p>
<p><strong>Filter properties</strong></p>
<ul>
<li><p><code>Condition</code> - The condition to apply. Valid values are
<code>IS</code> and <code>IS_NOT</code>. To include the forecast export
jobs that match the statement, specify <code>IS</code>. To exclude
matching forecast export jobs, specify <code>IS_NOT</code>.</p></li>
<li><p><code>Key</code> - The name of the parameter to filter on. Valid
values are <code>ForecastArn</code> and <code>Status</code>.</p></li>
<li><p><code>Value</code> - The value to match.</p></li>
</ul>
<p>For example, to list all jobs that export a forecast named
<em>electricityforecast</em>, specify the following filter:</p>
<p><code
style="white-space: pre;">⁠"Filters": [ { "Condition": "IS", "Key": "ForecastArn", "Value": "arn:aws:forecast:us-west-2:&lt;acct-id&gt;:forecast/electricityforecast" } ]⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ForecastExportJobs = list(
        list(
          ForecastExportJobArn = "string",
          ForecastExportJobName = "string",
          Destination = list(
            S3Config = list(
              Path = "string",
              RoleArn = "string",
              KMSKeyArn = "string"
            )
          ),
          Status = "string",
          Message = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModificationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_forecast_export_jobs(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Key = "string",
          Value = "string",
          Condition = "IS"|"IS_NOT"
        )
      )
    )
