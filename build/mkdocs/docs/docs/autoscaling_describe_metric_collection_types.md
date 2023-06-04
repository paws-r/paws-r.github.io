<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_metric_collection_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling

### Description

Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.

### Usage

    autoscaling_describe_metric_collection_types()

### Value

A list with the following syntax:

    list(
      Metrics = list(
        list(
          Metric = "string"
        )
      ),
      Granularities = list(
        list(
          Granularity = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example describes the available metric collection types.
    svc$describe_metric_collection_types()

    ## End(Not run)
