<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_modify_load_balancer_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the attributes of the specified load balancer

### Description

Modifies the attributes of the specified load balancer.

You can modify the load balancer attributes, such as `AccessLogs`,
`ConnectionDraining`, and `CrossZoneLoadBalancing` by either enabling or
disabling them. Or, you can modify the load balancer attribute
`ConnectionSettings` by specifying an idle connection timeout value for
your load balancer.

For more information, see the following in the *Classic Load Balancers
Guide*:

-   [Cross-Zone Load
    Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html)

-   [Connection
    Draining](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html)

-   [Access
    Logs](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html)

-   [Idle Connection
    Timeout](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html)

### Usage

    elb_modify_load_balancer_attributes(LoadBalancerName,
      LoadBalancerAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_modify_load_balancer_attributes_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_modify_load_balancer_attributes_:_LoadBalancerAttributes">LoadBalancerAttributes</code></td>
<td><p>[required] The attributes for the load balancer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBalancerName = "string",
      LoadBalancerAttributes = list(
        CrossZoneLoadBalancing = list(
          Enabled = TRUE|FALSE
        ),
        AccessLog = list(
          Enabled = TRUE|FALSE,
          S3BucketName = "string",
          EmitInterval = 123,
          S3BucketPrefix = "string"
        ),
        ConnectionDraining = list(
          Enabled = TRUE|FALSE,
          Timeout = 123
        ),
        ConnectionSettings = list(
          IdleTimeout = 123
        ),
        AdditionalAttributes = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_load_balancer_attributes(
      LoadBalancerName = "string",
      LoadBalancerAttributes = list(
        CrossZoneLoadBalancing = list(
          Enabled = TRUE|FALSE
        ),
        AccessLog = list(
          Enabled = TRUE|FALSE,
          S3BucketName = "string",
          EmitInterval = 123,
          S3BucketPrefix = "string"
        ),
        ConnectionDraining = list(
          Enabled = TRUE|FALSE,
          Timeout = 123
        ),
        ConnectionSettings = list(
          IdleTimeout = 123
        ),
        AdditionalAttributes = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # This example enables cross-zone load balancing for the specified load
    # balancer.
    svc$modify_load_balancer_attributes(
      LoadBalancerAttributes = list(
        CrossZoneLoadBalancing = list(
          Enabled = TRUE
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    # This example enables connection draining for the specified load
    # balancer.
    svc$modify_load_balancer_attributes(
      LoadBalancerAttributes = list(
        ConnectionDraining = list(
          Enabled = TRUE,
          Timeout = 300L
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
