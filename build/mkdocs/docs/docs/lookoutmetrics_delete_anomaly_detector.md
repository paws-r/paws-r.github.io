<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_delete_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a detector

### Description

Deletes a detector. Deleting an anomaly detector will delete all of its
corresponding resources including any configured datasets and alerts.

### Usage

    lookoutmetrics_delete_anomaly_detector(AnomalyDetectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_delete_anomaly_detector_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The ARN of the detector to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_anomaly_detector(
      AnomalyDetectorArn = "string"
    )
