<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the tags for the specified Elastic Load Balancing resources

### Description

Describes the tags for the specified Elastic Load Balancing resources.
You can describe the tags for one or more Application Load Balancers,
Network Load Balancers, Gateway Load Balancers, target groups,
listeners, or rules.

### Usage

    elbv2_describe_tags(ResourceArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_tags_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] The Amazon Resource Names (ARN) of the resources. You
can specify up to 20 resources in a single call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagDescriptions = list(
        list(
          ResourceArn = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_tags(
      ResourceArns = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the tags assigned to the specified load balancer.
    svc$describe_tags(
      ResourceArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/m..."
      )
    )

    ## End(Not run)
