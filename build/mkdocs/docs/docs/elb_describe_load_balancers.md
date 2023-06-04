<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified the load balancers

### Description

Describes the specified the load balancers. If no load balancers are
specified, the call describes all of your load balancers.

### Usage

    elb_describe_load_balancers(LoadBalancerNames, Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_describe_load_balancers_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>The names of the load balancers.</p></td>
</tr>
<tr class="even">
<td><code id="elb_describe_load_balancers_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_describe_load_balancers_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call (a number
from 1 to 400). The default is 400.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBalancerDescriptions = list(
        list(
          LoadBalancerName = "string",
          DNSName = "string",
          CanonicalHostedZoneName = "string",
          CanonicalHostedZoneNameID = "string",
          ListenerDescriptions = list(
            list(
              Listener = list(
                Protocol = "string",
                LoadBalancerPort = 123,
                InstanceProtocol = "string",
                InstancePort = 123,
                SSLCertificateId = "string"
              ),
              PolicyNames = list(
                "string"
              )
            )
          ),
          Policies = list(
            AppCookieStickinessPolicies = list(
              list(
                PolicyName = "string",
                CookieName = "string"
              )
            ),
            LBCookieStickinessPolicies = list(
              list(
                PolicyName = "string",
                CookieExpirationPeriod = 123
              )
            ),
            OtherPolicies = list(
              "string"
            )
          ),
          BackendServerDescriptions = list(
            list(
              InstancePort = 123,
              PolicyNames = list(
                "string"
              )
            )
          ),
          AvailabilityZones = list(
            "string"
          ),
          Subnets = list(
            "string"
          ),
          VPCId = "string",
          Instances = list(
            list(
              InstanceId = "string"
            )
          ),
          HealthCheck = list(
            Target = "string",
            Interval = 123,
            Timeout = 123,
            UnhealthyThreshold = 123,
            HealthyThreshold = 123
          ),
          SourceSecurityGroup = list(
            OwnerAlias = "string",
            GroupName = "string"
          ),
          SecurityGroups = list(
            "string"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Scheme = "string"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_load_balancers(
      LoadBalancerNames = list(
        "string"
      ),
      Marker = "string",
      PageSize = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified load balancer.
    svc$describe_load_balancers(
      LoadBalancerNames = list(
        "my-load-balancer"
      )
    )

    ## End(Not run)
