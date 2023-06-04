<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_list_associated_route_53_health_checks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of all Amazon Route 53 health checks associated with a specific routing control

### Description

Returns an array of all Amazon Route 53 health checks associated with a
specific routing control.

### Usage

    route53recoverycontrolconfig_list_associated_route_53_health_checks(
      MaxResults, NextToken, RoutingControlArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_associated_route_53_health_checks_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_list_associated_route_53_health_checks_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_associated_route_53_health_checks_:_RoutingControlArn">RoutingControlArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the routing
control.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HealthCheckIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_associated_route_53_health_checks(
      MaxResults = 123,
      NextToken = "string",
      RoutingControlArn = "string"
    )
