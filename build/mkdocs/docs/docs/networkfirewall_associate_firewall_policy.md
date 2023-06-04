<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_associate_firewall_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a FirewallPolicy to a Firewall

### Description

Associates a FirewallPolicy to a Firewall.

A firewall policy defines how to monitor and manage your VPC network
traffic, using a collection of inspection rule groups and other
settings. Each firewall requires one firewall policy association, and
you can use the same firewall policy for multiple firewalls.

### Usage

    networkfirewall_associate_firewall_policy(UpdateToken, FirewallArn,
      FirewallName, FirewallPolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_associate_firewall_policy_:_UpdateToken">UpdateToken</code></td>
<td><p>An optional token that you can use for optimistic locking.
Network Firewall returns a token to your requests that access the
firewall. The token marks the state of the firewall resource at the time
of the request.</p>
<p>To make an unconditional change to the firewall, omit the token in
your update request. Without the token, Network Firewall performs your
updates regardless of whether the firewall has changed since you last
retrieved it.</p>
<p>To make a conditional change to the firewall, provide the token in
your update request. Network Firewall uses the token to ensure that the
firewall hasn't changed since you last retrieved it. If it has changed,
the operation fails with an <code>InvalidTokenException</code>. If this
happens, retrieve the firewall again to get a current copy of it with a
new token. Reapply your changes as needed, then try the operation again
using the new token.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_associate_firewall_policy_:_FirewallArn">FirewallArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_associate_firewall_policy_:_FirewallName">FirewallName</code></td>
<td><p>The descriptive name of the firewall. You can't change the name
of a firewall after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_associate_firewall_policy_:_FirewallPolicyArn">FirewallPolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the firewall
policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallArn = "string",
      FirewallName = "string",
      FirewallPolicyArn = "string",
      UpdateToken = "string"
    )

### Request syntax

    svc$associate_firewall_policy(
      UpdateToken = "string",
      FirewallArn = "string",
      FirewallName = "string",
      FirewallPolicyArn = "string"
    )
