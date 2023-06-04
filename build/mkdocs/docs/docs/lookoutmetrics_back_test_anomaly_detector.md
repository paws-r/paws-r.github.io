<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_back_test_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs a backtest for anomaly detection for the specified resource

### Description

Runs a backtest for anomaly detection for the specified resource.

### Usage

    lookoutmetrics_back_test_anomaly_detector(AnomalyDetectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_back_test_anomaly_detector_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$back_test_anomaly_detector(
      AnomalyDetectorArn = "string"
    )
