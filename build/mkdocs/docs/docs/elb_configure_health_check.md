<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_configure_health_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies the health check settings to use when evaluating the health state of your EC2 instances

### Description

Specifies the health check settings to use when evaluating the health
state of your EC2 instances.

For more information, see [Configure Health Checks for Your Load
Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_configure_health_check(LoadBalancerName, HealthCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_configure_health_check_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_configure_health_check_:_HealthCheck">HealthCheck</code></td>
<td><p>[required] The configuration information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HealthCheck = list(
        Target = "string",
        Interval = 123,
        Timeout = 123,
        UnhealthyThreshold = 123,
        HealthyThreshold = 123
      )
    )

### Request syntax

    svc$configure_health_check(
      LoadBalancerName = "string",
      HealthCheck = list(
        Target = "string",
        Interval = 123,
        Timeout = 123,
        UnhealthyThreshold = 123,
        HealthyThreshold = 123
      )
    )

### Examples

    ## Not run: 
    # This example specifies the health check settings used to evaluate the
    # health of your backend EC2 instances.
    svc$configure_health_check(
      HealthCheck = list(
        HealthyThreshold = 2L,
        Interval = 30L,
        Target = "HTTP:80/png",
        Timeout = 3L,
        UnhealthyThreshold = 2L
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
