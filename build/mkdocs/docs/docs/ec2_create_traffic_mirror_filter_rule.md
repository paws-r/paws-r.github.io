<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_traffic_mirror_filter_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Traffic Mirror filter rule

### Description

Creates a Traffic Mirror filter rule.

A Traffic Mirror rule defines the Traffic Mirror source traffic to
mirror.

You need the Traffic Mirror filter ID when you create the rule.

### Usage

    ec2_create_traffic_mirror_filter_rule(TrafficMirrorFilterId,
      TrafficDirection, RuleNumber, RuleAction, DestinationPortRange,
      SourcePortRange, Protocol, DestinationCidrBlock, SourceCidrBlock,
      Description, DryRun, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_TrafficMirrorFilterId">TrafficMirrorFilterId</code></td>
<td><p>[required] The ID of the filter that this rule is associated
with.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_TrafficDirection">TrafficDirection</code></td>
<td><p>[required] The type of traffic.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_RuleNumber">RuleNumber</code></td>
<td><p>[required] The number of the Traffic Mirror rule. This number
must be unique for each Traffic Mirror rule in a given direction. The
rules are processed in ascending order by rule number.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_RuleAction">RuleAction</code></td>
<td><p>[required] The action to take on the filtered traffic.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_DestinationPortRange">DestinationPortRange</code></td>
<td><p>The destination port range.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_SourcePortRange">SourcePortRange</code></td>
<td><p>The source port range.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_Protocol">Protocol</code></td>
<td><p>The protocol, for example UDP, to assign to the Traffic Mirror
rule.</p>
<p>For information about the protocol value, see <a
href="https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml">Protocol
Numbers</a> on the Internet Assigned Numbers Authority (IANA)
website.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>[required] The destination CIDR block to assign to the Traffic
Mirror rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_SourceCidrBlock">SourceCidrBlock</code></td>
<td><p>[required] The source CIDR block to assign to the Traffic Mirror
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_Description">Description</code></td>
<td><p>The description of the Traffic Mirror rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_rule_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
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
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_traffic_mirror_filter_rule(
      TrafficMirrorFilterId = "string",
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
      DryRun = TRUE|FALSE,
      ClientToken = "string"
    )
