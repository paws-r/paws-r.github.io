<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_metric_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the datasets in the current AWS Region

### Description

Lists the datasets in the current AWS Region.

Amazon Lookout for Metrics API actions are eventually consistent. If you
do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.

### Usage

    lookoutmetrics_list_metric_sets(AnomalyDetectorArn, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_metric_sets_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>The ARN of the anomaly detector containing the metrics sets to
list.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_metric_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_metric_sets_:_NextToken">NextToken</code></td>
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
      MetricSetSummaryList = list(
        list(
          MetricSetArn = "string",
          AnomalyDetectorArn = "string",
          MetricSetDescription = "string",
          MetricSetName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModificationTime = as.POSIXct(
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

    svc$list_metric_sets(
      AnomalyDetectorArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
