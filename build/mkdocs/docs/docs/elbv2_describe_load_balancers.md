<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified load balancers or all of your load balancers

### Description

Describes the specified load balancers or all of your load balancers.

### Usage

    elbv2_describe_load_balancers(LoadBalancerArns, Names, Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_load_balancers_:_LoadBalancerArns">LoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARN) of the load balancers. You can
specify up to 20 load balancers in a single call.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_describe_load_balancers_:_Names">Names</code></td>
<td><p>The names of the load balancers.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_describe_load_balancers_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_load_balancers_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBalancers = list(
        list(
          LoadBalancerArn = "string",
          DNSName = "string",
          CanonicalHostedZoneId = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LoadBalancerName = "string",
          Scheme = "internet-facing"|"internal",
          VpcId = "string",
          State = list(
            Code = "active"|"provisioning"|"active_impaired"|"failed",
            Reason = "string"
          ),
          Type = "application"|"network"|"gateway",
          AvailabilityZones = list(
            list(
              ZoneName = "string",
              SubnetId = "string",
              OutpostId = "string",
              LoadBalancerAddresses = list(
                list(
                  IpAddress = "string",
                  AllocationId = "string",
                  PrivateIPv4Address = "string",
                  IPv6Address = "string"
                )
              )
            )
          ),
          SecurityGroups = list(
            "string"
          ),
          IpAddressType = "ipv4"|"dualstack",
          CustomerOwnedIpv4Pool = "string"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_load_balancers(
      LoadBalancerArns = list(
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
    # This example describes the specified load balancer.
    svc$describe_load_balancers(
      LoadBalancerArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/m..."
      )
    )

    ## End(Not run)
