<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_adjustment_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the available adjustment types for step scaling and simple scaling policies

### Description

Describes the available adjustment types for step scaling and simple
scaling policies.

The following adjustment types are supported:

-   `ChangeInCapacity`

-   `ExactCapacity`

-   `PercentChangeInCapacity`

### Usage

    autoscaling_describe_adjustment_types()

### Value

A list with the following syntax:

    list(
      AdjustmentTypes = list(
        list(
          AdjustmentType = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example describes the available adjustment types.
    svc$describe_adjustment_types()

    ## End(Not run)
