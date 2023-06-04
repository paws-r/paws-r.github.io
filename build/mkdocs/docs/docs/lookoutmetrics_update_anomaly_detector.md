<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_update_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a detector

### Description

Updates a detector. After activation, you can only change a detector's
ingestion delay and description.

### Usage

    lookoutmetrics_update_anomaly_detector(AnomalyDetectorArn, KmsKeyArn,
      AnomalyDetectorDescription, AnomalyDetectorConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_update_anomaly_detector_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The ARN of the detector to update.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_anomaly_detector_:_KmsKeyArn">KmsKeyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an AWS KMS encryption
key.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_anomaly_detector_:_AnomalyDetectorDescription">AnomalyDetectorDescription</code></td>
<td><p>The updated detector description.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_anomaly_detector_:_AnomalyDetectorConfig">AnomalyDetectorConfig</code></td>
<td><p>Contains information about the configuration to which the
detector will be updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyDetectorArn = "string"
    )

### Request syntax

    svc$update_anomaly_detector(
      AnomalyDetectorArn = "string",
      KmsKeyArn = "string",
      AnomalyDetectorDescription = "string",
      AnomalyDetectorConfig = list(
        AnomalyDetectorFrequency = "P1D"|"PT1H"|"PT10M"|"PT5M"
      )
    )
