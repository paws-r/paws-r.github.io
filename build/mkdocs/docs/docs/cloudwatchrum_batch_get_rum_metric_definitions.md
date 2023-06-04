<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_batch_get_rum_metric_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the list of metrics and dimensions that a RUM app monitor is sending to a single destination

### Description

Retrieves the list of metrics and dimensions that a RUM app monitor is
sending to a single destination.

### Usage

    cloudwatchrum_batch_get_rum_metric_definitions(AppMonitorName,
      Destination, DestinationArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_get_rum_metric_definitions_:_AppMonitorName">AppMonitorName</code></td>
<td><p>[required] The name of the CloudWatch RUM app monitor that is
sending the metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_batch_get_rum_metric_definitions_:_Destination">Destination</code></td>
<td><p>[required] The type of destination that you want to view metrics
for. Valid values are <code>CloudWatch</code> and
<code>Evidently</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_get_rum_metric_definitions_:_DestinationArn">DestinationArn</code></td>
<td><p>This parameter is required if <code>Destination</code> is
<code>Evidently</code>. If <code>Destination</code> is
<code>CloudWatch</code>, do not use this parameter.</p>
<p>This parameter specifies the ARN of the Evidently experiment that
corresponds to the destination.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_batch_get_rum_metric_definitions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one operation. The
default is 50. The maximum that you can specify is 100.</p>
<p>To retrieve the remaining results, make another call with the
returned <code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_get_rum_metric_definitions_:_NextToken">NextToken</code></td>
<td><p>Use the token returned by the previous operation to request the
next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricDefinitions = list(
        list(
          DimensionKeys = list(
            "string"
          ),
          EventPattern = "string",
          MetricDefinitionId = "string",
          Name = "string",
          Namespace = "string",
          UnitLabel = "string",
          ValueKey = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$batch_get_rum_metric_definitions(
      AppMonitorName = "string",
      Destination = "CloudWatch"|"Evidently",
      DestinationArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
