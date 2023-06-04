<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_anomaly_group_related_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of measures that are potential causes or effects of an anomaly group

### Description

Returns a list of measures that are potential causes or effects of an
anomaly group.

### Usage

    lookoutmetrics_list_anomaly_group_related_metrics(AnomalyDetectorArn,
      AnomalyGroupId, RelationshipTypeFilter, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_related_metrics_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_group_related_metrics_:_AnomalyGroupId">AnomalyGroupId</code></td>
<td><p>[required] The ID of the anomaly group.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_related_metrics_:_RelationshipTypeFilter">RelationshipTypeFilter</code></td>
<td><p>Filter for potential causes
(<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>) or downstream effects
(<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>) of the anomaly
group.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_group_related_metrics_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_related_metrics_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InterMetricImpactList = list(
        list(
          MetricName = "string",
          AnomalyGroupId = "string",
          RelationshipType = "CAUSE_OF_INPUT_ANOMALY_GROUP"|"EFFECT_OF_INPUT_ANOMALY_GROUP",
          ContributionPercentage = 123.0
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_anomaly_group_related_metrics(
      AnomalyDetectorArn = "string",
      AnomalyGroupId = "string",
      RelationshipTypeFilter = "CAUSE_OF_INPUT_ANOMALY_GROUP"|"EFFECT_OF_INPUT_ANOMALY_GROUP",
      MaxResults = 123,
      NextToken = "string"
    )
