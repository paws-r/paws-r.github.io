<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_traffic_mirror_filter_network_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows or restricts mirroring network services

### Description

Allows or restricts mirroring network services.

By default, Amazon DNS network services are not eligible for Traffic
Mirror. Use `AddNetworkServices` to add network services to a Traffic
Mirror filter. When a network service is added to the Traffic Mirror
filter, all traffic related to that network service will be mirrored.
When you no longer want to mirror network services, use
`RemoveNetworkServices` to remove the network services from the Traffic
Mirror filter.

### Usage

    ec2_modify_traffic_mirror_filter_network_services(TrafficMirrorFilterId,
      AddNetworkServices, RemoveNetworkServices, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_network_services_:_TrafficMirrorFilterId">TrafficMirrorFilterId</code></td>
<td><p>[required] The ID of the Traffic Mirror filter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_network_services_:_AddNetworkServices">AddNetworkServices</code></td>
<td><p>The network service, for example Amazon DNS, that you want to
mirror.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_network_services_:_RemoveNetworkServices">RemoveNetworkServices</code></td>
<td><p>The network service, for example Amazon DNS, that you no longer
want to mirror.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_network_services_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorFilter = list(
        TrafficMirrorFilterId = "string",
        IngressFilterRules = list(
          list(
            TrafficMirrorFilterRuleId = "string",
            TrafficMirrorFilterId = "string",
            TrafficDirection = "ingress"|"egress",
            RuleNumber = 123,
            RuleAction = "accept"|"reject",
            Protocol = 123,
            DestinationPortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            SourcePortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            DestinationCidrBlock = "string",
            SourceCidrBlock = "string",
            Description = "string"
          )
        ),
        EgressFilterRules = list(
          list(
            TrafficMirrorFilterRuleId = "string",
            TrafficMirrorFilterId = "string",
            TrafficDirection = "ingress"|"egress",
            RuleNumber = 123,
            RuleAction = "accept"|"reject",
            Protocol = 123,
            DestinationPortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            SourcePortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            DestinationCidrBlock = "string",
            SourceCidrBlock = "string",
            Description = "string"
          )
        ),
        NetworkServices = list(
          "amazon-dns"
        ),
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_traffic_mirror_filter_network_services(
      TrafficMirrorFilterId = "string",
      AddNetworkServices = list(
        "amazon-dns"
      ),
      RemoveNetworkServices = list(
        "amazon-dns"
      ),
      DryRun = TRUE|FALSE
    )
