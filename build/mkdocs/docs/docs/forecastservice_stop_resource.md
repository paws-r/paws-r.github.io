<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_stop_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a resource

### Description

Stops a resource.

The resource undergoes the following states: `CREATE_STOPPING` and
`CREATE_STOPPED`. You cannot resume a resource once it has been stopped.

This operation can be applied to the following resources (and their
corresponding child resources):

-   Dataset Import Job

-   Predictor Job

-   Forecast Job

-   Forecast Export Job

-   Predictor Backtest Export Job

-   Explainability Job

-   Explainability Export Job

### Usage

    forecastservice_stop_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_stop_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource to stop. The supported ARNs are
<code>DatasetImportJobArn</code>, <code>PredictorArn</code>,
<code>PredictorBacktestExportJobArn</code>, <code>ForecastArn</code>,
<code>ForecastExportJobArn</code>, <code>ExplainabilityArn</code>, and
<code>ExplainabilityExportArn</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_resource(
      ResourceArn = "string"
    )
