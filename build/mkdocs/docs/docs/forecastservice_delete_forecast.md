<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a forecast created using the CreateForecast operation

### Description

Deletes a forecast created using the `create_forecast` operation. You
can delete only forecasts that have a status of `ACTIVE` or
`CREATE_FAILED`. To get the status, use the `describe_forecast`
operation.

You can't delete a forecast while it is being exported. After a forecast
is deleted, you can no longer query the forecast.

### Usage

    forecastservice_delete_forecast(ForecastArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_forecast_:_ForecastArn">ForecastArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the forecast to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_forecast(
      ForecastArn = "string"
    )
