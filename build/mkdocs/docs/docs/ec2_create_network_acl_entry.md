<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_network_acl_entry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an entry (a rule) in a network ACL with the specified rule number

### Description

Creates an entry (a rule) in a network ACL with the specified rule
number. Each network ACL has a set of numbered ingress rules and a
separate set of numbered egress rules. When determining whether a packet
should be allowed in or out of a subnet associated with the ACL, we
process the entries in the ACL according to the rule numbers, in
ascending order. Each network ACL has a set of ingress rules and a
separate set of egress rules.

We recommend that you leave room between the rule numbers (for example,
100, 110, 120, ...), and not number them one right after the other (for
example, 101, 102, 103, ...). This makes it easier to add a rule between
existing ones without having to renumber the rules.

After you add an entry, you can't modify it; you must either replace it,
or create an entry and delete the old one.

For more information about network ACLs, see [Network
ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/) in the *Amazon
Virtual Private Cloud User Guide*.

### Usage

    ec2_create_network_acl_entry(CidrBlock, DryRun, Egress, IcmpTypeCode,
      Ipv6CidrBlock, NetworkAclId, PortRange, Protocol, RuleAction,
      RuleNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_network_acl_entry_:_CidrBlock">CidrBlock</code></td>
<td><p>The IPv4 network range to allow or deny, in CIDR notation (for
example <code style="white-space: pre;">⁠172.16.0.0/24⁠</code>). We modify
the specified CIDR block to its canonical form; for example, if you
specify <code style="white-space: pre;">⁠100.68.0.18/18⁠</code>, we modify
it to <code style="white-space: pre;">⁠100.68.0.0/18⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_network_acl_entry_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_network_acl_entry_:_Egress">Egress</code></td>
<td><p>[required] Indicates whether this is an egress rule (rule is
applied to traffic leaving the subnet).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_acl_entry_:_IcmpTypeCode">IcmpTypeCode</code></td>
<td><p>ICMP protocol: The ICMP or ICMPv6 type and code. Required if
specifying protocol 1 (ICMP) or protocol 58 (ICMPv6) with an IPv6 CIDR
block.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_acl_entry_:_Ipv6CidrBlock">Ipv6CidrBlock</code></td>
<td><p>The IPv6 network range to allow or deny, in CIDR notation (for
example <code
style="white-space: pre;">⁠2001:db8:1234:1a00::/64⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_acl_entry_:_NetworkAclId">NetworkAclId</code></td>
<td><p>[required] The ID of the network ACL.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_acl_entry_:_PortRange">PortRange</code></td>
<td><p>TCP or UDP protocols: The range of ports the rule applies to.
Required if specifying protocol 6 (TCP) or 17 (UDP).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_acl_entry_:_Protocol">Protocol</code></td>
<td><p>[required] The protocol number. A value of "-1" means all
protocols. If you specify "-1" or a protocol number other than "6"
(TCP), "17" (UDP), or "1" (ICMP), traffic on all ports is allowed,
regardless of any ports or ICMP types or codes that you specify. If you
specify protocol "58" (ICMPv6) and specify an IPv4 CIDR block, traffic
for all ICMP types and codes allowed, regardless of any that you
specify. If you specify protocol "58" (ICMPv6) and specify an IPv6 CIDR
block, you must specify an ICMP type and code.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_acl_entry_:_RuleAction">RuleAction</code></td>
<td><p>[required] Indicates whether to allow or deny the traffic that
matches the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_acl_entry_:_RuleNumber">RuleNumber</code></td>
<td><p>[required] The rule number for the entry (for example, 100). ACL
entries are processed in ascending order by rule number.</p>
<p>Constraints: Positive integer from 1 to 32766. The range 32767 to
65535 is reserved for internal use.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_network_acl_entry(
      CidrBlock = "string",
      DryRun = TRUE|FALSE,
      Egress = TRUE|FALSE,
      IcmpTypeCode = list(
        Code = 123,
        Type = 123
      ),
      Ipv6CidrBlock = "string",
      NetworkAclId = "string",
      PortRange = list(
        From = 123,
        To = 123
      ),
      Protocol = "string",
      RuleAction = "allow"|"deny",
      RuleNumber = 123
    )

### Examples

    ## Not run: 
    # This example creates an entry for the specified network ACL. The rule
    # allows ingress traffic from anywhere (0.0.0.0/0) on UDP port 53 (DNS)
    # into any associated subnet.
    svc$create_network_acl_entry(
      CidrBlock = "0.0.0.0/0",
      Egress = FALSE,
      NetworkAclId = "acl-5fb85d36",
      PortRange = list(
        From = 53L,
        To = 53L
      ),
      Protocol = "17",
      RuleAction = "allow",
      RuleNumber = 100L
    )

    ## End(Not run)
