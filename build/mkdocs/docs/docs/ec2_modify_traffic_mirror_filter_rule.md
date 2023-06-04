<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_traffic_mirror_filter_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified Traffic Mirror rule

### Description

Modifies the specified Traffic Mirror rule.

`DestinationCidrBlock` and `SourceCidrBlock` must both be an IPv4 range
or an IPv6 range.

### Usage

    ec2_modify_traffic_mirror_filter_rule(TrafficMirrorFilterRuleId,
      TrafficDirection, RuleNumber, RuleAction, DestinationPortRange,
      SourcePortRange, Protocol, DestinationCidrBlock, SourceCidrBlock,
      Description, RemoveFields, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_TrafficMirrorFilterRuleId">TrafficMirrorFilterRuleId</code></td>
<td><p>[required] The ID of the Traffic Mirror rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_TrafficDirection">TrafficDirection</code></td>
<td><p>The type of traffic to assign to the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_RuleNumber">RuleNumber</code></td>
<td><p>The number of the Traffic Mirror rule. This number must be unique
for each Traffic Mirror rule in a given direction. The rules are
processed in ascending order by rule number.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_RuleAction">RuleAction</code></td>
<td><p>The action to assign to the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_DestinationPortRange">DestinationPortRange</code></td>
<td><p>The destination ports that are associated with the Traffic Mirror
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_SourcePortRange">SourcePortRange</code></td>
<td><p>The port range to assign to the Traffic Mirror rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_Protocol">Protocol</code></td>
<td><p>The protocol, for example TCP, to assign to the Traffic Mirror
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>The destination CIDR block to assign to the Traffic Mirror
rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_SourceCidrBlock">SourceCidrBlock</code></td>
<td><p>The source CIDR block to assign to the Traffic Mirror
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_Description">Description</code></td>
<td><p>The description to assign to the Traffic Mirror rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_RemoveFields">RemoveFields</code></td>
<td><p>The properties that you want to remove from the Traffic Mirror
filter rule.</p>
<p>When you remove a property from a Traffic Mirror filter rule, the
property is set to the default.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_filter_rule_:_DryRun">DryRun</code></td>
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
      TrafficMirrorFilterRule = list(
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
    )

### Request syntax

    svc$modify_traffic_mirror_filter_rule(
      TrafficMirrorFilterRuleId = "string",
      TrafficDirection = "ingress"|"egress",
      RuleNumber = 123,
      RuleAction = "accept"|"reject",
      DestinationPortRange = list(
        FromPort = 123,
        ToPort = 123
      ),
      SourcePortRange = list(
        FromPort = 123,
        ToPort = 123
      ),
      Protocol = 123,
      DestinationCidrBlock = "string",
      SourceCidrBlock = "string",
      Description = "string",
      RemoveFields = list(
        "destination-port-range"|"source-port-range"|"protocol"|"description"
      ),
      DryRun = TRUE|FALSE
    )
