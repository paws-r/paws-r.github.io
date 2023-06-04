<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_target_group_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the attributes for the specified target group

### Description

Describes the attributes for the specified target group.

For more information, see the following:

-   [Target group
    attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes)
    in the *Application Load Balancers Guide*

-   [Target group
    attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes)
    in the *Network Load Balancers Guide*

-   [Target group
    attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes)
    in the *Gateway Load Balancers Guide*

### Usage

    elbv2_describe_target_group_attributes(TargetGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_target_group_attributes_:_TargetGroupArn">TargetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_target_group_attributes(
      TargetGroupArn = "string"
    )

### Examples

    ## Not run: 
    # This example describes the attributes of the specified target group.
    svc$describe_target_group_attributes(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
    )

    ## End(Not run)
