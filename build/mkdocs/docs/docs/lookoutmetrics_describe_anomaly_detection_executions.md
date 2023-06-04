<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_describe_anomaly_detection_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the status of the specified anomaly detection jobs

### Description

Returns information about the status of the specified anomaly detection
jobs.

### Usage

    lookoutmetrics_describe_anomaly_detection_executions(AnomalyDetectorArn,
      Timestamp, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_describe_anomaly_detection_executions_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_describe_anomaly_detection_executions_:_Timestamp">Timestamp</code></td>
<td><p>The timestamp of the anomaly detection job.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_describe_anomaly_detection_executions_:_MaxResults">MaxResults</code></td>
<td><p>The number of items to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_describe_anomaly_detection_executions_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExecutionList = list(
        list(
          Timestamp = "string",
          Status = "PENDING"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"FAILED_TO_SCHEDULE",
          FailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_anomaly_detection_executions(
      AnomalyDetectorArn = "string",
      Timestamp = "string",
      MaxResults = 123,
      NextToken = "string"
    )
