<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastqueryservice_query_what_if_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a what-if forecast

### Description

Retrieves a what-if forecast.

### Usage

    forecastqueryservice_query_what_if_forecast(WhatIfForecastArn,
      StartDate, EndDate, Filters, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastqueryservice_query_what_if_forecast_:_WhatIfForecastArn">WhatIfForecastArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if forecast
to query.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastqueryservice_query_what_if_forecast_:_StartDate">StartDate</code></td>
<td><p>The start date for the what-if forecast. Specify the date using
this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
2015-01-01T08:00:00.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastqueryservice_query_what_if_forecast_:_EndDate">EndDate</code></td>
<td><p>The end date for the what-if forecast. Specify the date using
this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
2015-01-01T20:00:00.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastqueryservice_query_what_if_forecast_:_Filters">Filters</code></td>
<td><p>[required] The filtering criteria to apply when retrieving the
forecast. For example, to get the forecast for <code>client_21</code> in
the electricity usage dataset, specify the following:</p>
<p><code>{"item_id" : "client_21"}</code></p>
<p>To get the full what-if forecast, use the <a
href="https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateWhatIfForecastExport.html">CreateForecastExportJob</a>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastqueryservice_query_what_if_forecast_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Forecast = list(
        Predictions = list(
          list(
            list(
              Timestamp = "string",
              Value = 123.0
            )
          )
        )
      )
    )

### Request syntax

    svc$query_what_if_forecast(
      WhatIfForecastArn = "string",
      StartDate = "string",
      EndDate = "string",
      Filters = list(
        "string"
      ),
      NextToken = "string"
    )
