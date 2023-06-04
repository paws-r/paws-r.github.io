<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_ssl_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified policies or all policies used for SSL negotiation

### Description

Describes the specified policies or all policies used for SSL
negotiation.

For more information, see [Security
policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
in the *Application Load Balancers Guide* or [Security
policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies)
in the *Network Load Balancers Guide*.

### Usage

    elbv2_describe_ssl_policies(Names, Marker, PageSize, LoadBalancerType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_describe_ssl_policies_:_Names">Names</code></td>
<td><p>The names of the policies.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_describe_ssl_policies_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_describe_ssl_policies_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_ssl_policies_:_LoadBalancerType">LoadBalancerType</code></td>
<td><p>The type of load balancer. The default lists the SSL policies for
all load balancers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SslPolicies = list(
        list(
          SslProtocols = list(
            "string"
          ),
          Ciphers = list(
            list(
              Name = "string",
              Priority = 123
            )
          ),
          Name = "string",
          SupportedLoadBalancerTypes = list(
            "string"
          )
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_ssl_policies(
      Names = list(
        "string"
      ),
      Marker = "string",
      PageSize = 123,
      LoadBalancerType = "application"|"network"|"gateway"
    )

### Examples

    ## Not run: 
    # This example describes the specified policy used for SSL negotiation.
    svc$describe_ssl_policies(
      Names = list(
        "ELBSecurityPolicy-2015-05"
      )
    )

    ## End(Not run)
