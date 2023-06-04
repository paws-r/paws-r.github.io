<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_anomaly_detectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the detectors in the current AWS Region

### Description

Lists the detectors in the current AWS Region.

Amazon Lookout for Metrics API actions are eventually consistent. If you
do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.

### Usage

    lookoutmetrics_list_anomaly_detectors(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_detectors_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_detectors_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyDetectorSummaryList = list(
        list(
          AnomalyDetectorArn = "string",
          AnomalyDetectorName = "string",
          AnomalyDetectorDescription = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModificationTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "ACTIVE"|"ACTIVATING"|"DELETING"|"FAILED"|"INACTIVE"|"LEARNING"|"BACK_TEST_ACTIVATING"|"BACK_TEST_ACTIVE"|"BACK_TEST_COMPLETE"|"DEACTIVATED"|"DEACTIVATING",
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_anomaly_detectors(
      MaxResults = 123,
      NextToken = "string"
    )
