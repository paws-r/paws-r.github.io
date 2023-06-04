<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_activate_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates an anomaly detector

### Description

Activates an anomaly detector.

### Usage

    lookoutmetrics_activate_anomaly_detector(AnomalyDetectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_activate_anomaly_detector_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The ARN of the anomaly detector.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$activate_anomaly_detector(
      AnomalyDetectorArn = "string"
    )
