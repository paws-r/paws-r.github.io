<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_forecast_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a forecast export job created using the CreateForecastExportJob operation

### Description

Deletes a forecast export job created using the
`create_forecast_export_job` operation. You can delete only export jobs
that have a status of `ACTIVE` or `CREATE_FAILED`. To get the status,
use the `describe_forecast_export_job` operation.

### Usage

    forecastservice_delete_forecast_export_job(ForecastExportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_forecast_export_job_:_ForecastExportJobArn">ForecastExportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the forecast export
job to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_forecast_export_job(
      ForecastExportJobArn = "string"
    )
