<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_alerts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the alerts attached to a detector

### Description

Lists the alerts attached to a detector.

Amazon Lookout for Metrics API actions are eventually consistent. If you
do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.

### Usage

    lookoutmetrics_list_alerts(AnomalyDetectorArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_alerts_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>The ARN of the alert's detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_alerts_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request is truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_alerts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that will be displayed by the
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlertSummaryList = list(
        list(
          AlertArn = "string",
          AnomalyDetectorArn = "string",
          AlertName = "string",
          AlertSensitivityThreshold = 123,
          AlertType = "SNS"|"LAMBDA",
          AlertStatus = "ACTIVE"|"INACTIVE",
          LastModificationTime = as.POSIXct(
            "2015-01-01"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_alerts(
      AnomalyDetectorArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
