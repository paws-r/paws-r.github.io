<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_resource_tree</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an entire resource tree

### Description

Deletes an entire resource tree. This operation will delete the parent
resource and its child resources.

Child resources are resources that were created from another resource.
For example, when a forecast is generated from a predictor, the forecast
is the child resource and the predictor is the parent resource.

Amazon Forecast resources possess the following parent-child resource
hierarchies:

-   **Dataset**: dataset import jobs

-   **Dataset Group**: predictors, predictor backtest export jobs,
    forecasts, forecast export jobs

-   **Predictor**: predictor backtest export jobs, forecasts, forecast
    export jobs

-   **Forecast**: forecast export jobs

`delete_resource_tree` will only delete Amazon Forecast resources, and
will not delete datasets or exported files stored in Amazon S3.

### Usage

    forecastservice_delete_resource_tree(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_resource_tree_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the parent resource
to delete. All child resources of the parent resource will also be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_tree(
      ResourceArn = "string"
    )
