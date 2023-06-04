<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_what_if_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a what-if forecast created using the CreateWhatIfForecast operation

### Description

Deletes a what-if forecast created using the `create_what_if_forecast`
operation. You can delete only what-if forecasts that have a status of
`ACTIVE` or `CREATE_FAILED`. To get the status, use the
`describe_what_if_forecast` operation.

You can't delete a what-if forecast while it is being exported. After a
what-if forecast is deleted, you can no longer query the what-if
analysis.

### Usage

    forecastservice_delete_what_if_forecast(WhatIfForecastArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_what_if_forecast_:_WhatIfForecastArn">WhatIfForecastArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if forecast
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_what_if_forecast(
      WhatIfForecastArn = "string"
    )
