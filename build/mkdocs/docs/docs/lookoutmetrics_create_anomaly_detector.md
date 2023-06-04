<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_create_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an anomaly detector

### Description

Creates an anomaly detector.

### Usage

    lookoutmetrics_create_anomaly_detector(AnomalyDetectorName,
      AnomalyDetectorDescription, AnomalyDetectorConfig, KmsKeyArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_create_anomaly_detector_:_AnomalyDetectorName">AnomalyDetectorName</code></td>
<td><p>[required] The name of the detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_anomaly_detector_:_AnomalyDetectorDescription">AnomalyDetectorDescription</code></td>
<td><p>A description of the detector.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_anomaly_detector_:_AnomalyDetectorConfig">AnomalyDetectorConfig</code></td>
<td><p>[required] Contains information about the configuration of the
anomaly detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_anomaly_detector_:_KmsKeyArn">KmsKeyArn</code></td>
<td><p>The ARN of the KMS key to use to encrypt your data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_anomaly_detector_:_Tags">Tags</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>
to apply to the anomaly detector.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyDetectorArn = "string"
    )

### Request syntax

    svc$create_anomaly_detector(
      AnomalyDetectorName = "string",
      AnomalyDetectorDescription = "string",
      AnomalyDetectorConfig = list(
        AnomalyDetectorFrequency = "P1D"|"PT1H"|"PT10M"|"PT5M"
      ),
      KmsKeyArn = "string",
      Tags = list(
        "string"
      )
    )
