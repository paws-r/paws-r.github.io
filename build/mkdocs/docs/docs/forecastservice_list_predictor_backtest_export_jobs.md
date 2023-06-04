<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_list_predictor_backtest_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of predictor backtest export jobs created using the CreatePredictorBacktestExportJob operation

### Description

Returns a list of predictor backtest export jobs created using the
`create_predictor_backtest_export_job` operation. This operation returns
a summary for each backtest export job. You can filter the list using an
array of Filter objects.

To retrieve the complete set of properties for a particular backtest
export job, use the ARN with the
`describe_predictor_backtest_export_job` operation.

### Usage

    forecastservice_list_predictor_backtest_export_jobs(NextToken,
      MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_list_predictor_backtest_export_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a NextToken. To retrieve the next set of results, use the token
in the next request. Tokens expire after 24 hours.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_predictor_backtest_export_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The number of items to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_list_predictor_backtest_export_jobs_:_Filters">Filters</code></td>
<td><p>An array of filters. For each filter, provide a condition and a
match statement. The condition is either <code>IS</code> or
<code>IS_NOT</code>, which specifies whether to include or exclude the
predictor backtest export jobs that match the statement from the list.
The match statement consists of a key and a value.</p>
<p><strong>Filter properties</strong></p>
<ul>
<li><p><code>Condition</code> - The condition to apply. Valid values are
<code>IS</code> and <code>IS_NOT</code>. To include the predictor
backtest export jobs that match the statement, specify <code>IS</code>.
To exclude matching predictor backtest export jobs, specify
<code>IS_NOT</code>.</p></li>
<li><p><code>Key</code> - The name of the parameter to filter on. Valid
values are <code>PredictorArn</code> and <code>Status</code>.</p></li>
<li><p><code>Value</code> - The value to match.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PredictorBacktestExportJobs = list(
        list(
          PredictorBacktestExportJobArn = "string",
          PredictorBacktestExportJobName = "string",
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

    svc$list_predictor_backtest_export_jobs(
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
