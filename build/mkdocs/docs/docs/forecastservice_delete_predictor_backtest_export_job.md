<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_predictor_backtest_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a predictor backtest export job

### Description

Deletes a predictor backtest export job.

### Usage

    forecastservice_delete_predictor_backtest_export_job(
      PredictorBacktestExportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_predictor_backtest_export_job_:_PredictorBacktestExportJobArn">PredictorBacktestExportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the predictor
backtest export job to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_predictor_backtest_export_job(
      PredictorBacktestExportJobArn = "string"
    )
