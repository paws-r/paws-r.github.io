<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_load_balancer_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the attributes for the specified load balancer

### Description

Describes the attributes for the specified load balancer.

### Usage

    elb_describe_load_balancer_attributes(LoadBalancerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_describe_load_balancer_attributes_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$describe_load_balancer_attributes(
      LoadBalancerName = "string"
    )

### Examples

    ## Not run: 
    # This example describes the attributes of the specified load balancer.
    svc$describe_load_balancer_attributes(
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
