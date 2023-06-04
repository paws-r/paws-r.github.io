<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_metric_attribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a metric attribution

### Description

Creates a metric attribution. A metric attribution creates reports on
the data that you import into Amazon Personalize. Depending on how you
imported the data, you can view reports in Amazon CloudWatch or Amazon
S3. For more information, see [Measuring impact of
recommendations](https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).

### Usage

    personalize_create_metric_attribution(name, datasetGroupArn, metrics,
      metricsOutputConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_create_metric_attribution_:_name">name</code></td>
<td><p>[required] A name for the metric attribution.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_metric_attribution_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the destination
dataset group for the metric attribution.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_metric_attribution_:_metrics">metrics</code></td>
<td><p>[required] A list of metric attributes for the metric
attribution. Each metric attribute specifies an event type to track and
a function. Available functions are <code>SUM()</code> or
<code>SAMPLECOUNT()</code>. For SUM() functions, provide the dataset
type (either Interactions or Items) and column to sum as a parameter.
For example SUM(Items.PRICE).</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_metric_attribution_:_metricsOutputConfig">metricsOutputConfig</code></td>
<td><p>[required] The output configuration details for the metric
attribution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricAttributionArn = "string"
    )

### Request syntax

    svc$create_metric_attribution(
      name = "string",
      datasetGroupArn = "string",
      metrics = list(
        list(
          eventType = "string",
          metricName = "string",
          expression = "string"
        )
      ),
      metricsOutputConfig = list(
        s3DataDestination = list(
          path = "string",
          kmsKeyArn = "string"
        ),
        roleArn = "string"
      )
    )
