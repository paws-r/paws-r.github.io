<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_target_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified target groups or all of your target groups

### Description

Describes the specified target groups or all of your target groups. By
default, all target groups are described. Alternatively, you can specify
one of the following to filter the results: the ARN of the load
balancer, the names of one or more target groups, or the ARNs of one or
more target groups.

### Usage

    elbv2_describe_target_groups(LoadBalancerArn, TargetGroupArns, Names,
      Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_target_groups_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_target_groups_:_TargetGroupArns">TargetGroupArns</code></td>
<td><p>The Amazon Resource Names (ARN) of the target groups.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_describe_target_groups_:_Names">Names</code></td>
<td><p>The names of the target groups.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_describe_target_groups_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_describe_target_groups_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TargetGroups = list(
        list(
          TargetGroupArn = "string",
          TargetGroupName = "string",
          Protocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
          Port = 123,
          VpcId = "string",
          HealthCheckProtocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
          HealthCheckPort = "string",
          HealthCheckEnabled = TRUE|FALSE,
          HealthCheckIntervalSeconds = 123,
          HealthCheckTimeoutSeconds = 123,
          HealthyThresholdCount = 123,
          UnhealthyThresholdCount = 123,
          HealthCheckPath = "string",
          Matcher = list(
            HttpCode = "string",
            GrpcCode = "string"
          ),
          LoadBalancerArns = list(
            "string"
          ),
          TargetType = "instance"|"ip"|"lambda"|"alb",
          ProtocolVersion = "string",
          IpAddressType = "ipv4"|"ipv6"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_target_groups(
      LoadBalancerArn = "string",
      TargetGroupArns = list(
        "string"
      ),
      Names = list(
        "string"
      ),
      Marker = "string",
      PageSize = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified target group.
    svc$describe_target_groups(
      TargetGroupArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-tar..."
      )
    )

    ## End(Not run)
