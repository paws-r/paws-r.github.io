<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_describe_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a detector

### Description

Describes a detector.

Amazon Lookout for Metrics API actions are eventually consistent. If you
do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.

### Usage

    lookoutmetrics_describe_anomaly_detector(AnomalyDetectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_describe_anomaly_detector_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The ARN of the detector to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyDetectorArn = "string",
      AnomalyDetectorName = "string",
      AnomalyDetectorDescription = "string",
      AnomalyDetectorConfig = list(
        AnomalyDetectorFrequency = "P1D"|"PT1H"|"PT10M"|"PT5M"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      Status = "ACTIVE"|"ACTIVATING"|"DELETING"|"FAILED"|"INACTIVE"|"LEARNING"|"BACK_TEST_ACTIVATING"|"BACK_TEST_ACTIVE"|"BACK_TEST_COMPLETE"|"DEACTIVATED"|"DEACTIVATING",
      FailureReason = "string",
      KmsKeyArn = "string",
      FailureType = "ACTIVATION_FAILURE"|"BACK_TEST_ACTIVATION_FAILURE"|"DELETION_FAILURE"|"DEACTIVATION_FAILURE"
    )

### Request syntax

    svc$describe_anomaly_detector(
      AnomalyDetectorArn = "string"
    )
