<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_modify_target_group_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified attributes of the specified target group

### Description

Modifies the specified attributes of the specified target group.

### Usage

    elbv2_modify_target_group_attributes(TargetGroupArn, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_modify_target_group_attributes_:_TargetGroupArn">TargetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
group.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_modify_target_group_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] The attributes.</p></td>
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

    svc$modify_target_group_attributes(
      TargetGroupArn = "string",
      Attributes = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example sets the deregistration delay timeout to the specified
    # value for the specified target group.
    svc$modify_target_group_attributes(
      Attributes = list(
        list(
          Key = "deregistration_delay.timeout_seconds",
          Value = "600"
        )
      ),
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
    )

    ## End(Not run)
