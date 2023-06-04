<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_what_if_forecast_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a what-if forecast export created using the CreateWhatIfForecastExport operation

### Description

Deletes a what-if forecast export created using the
`create_what_if_forecast_export` operation. You can delete only what-if
forecast exports that have a status of `ACTIVE` or `CREATE_FAILED`. To
get the status, use the `describe_what_if_forecast_export` operation.

### Usage

    forecastservice_delete_what_if_forecast_export(WhatIfForecastExportArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_what_if_forecast_export_:_WhatIfForecastExportArn">WhatIfForecastExportArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if forecast
export that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_what_if_forecast_export(
      WhatIfForecastExportArn = "string"
    )
