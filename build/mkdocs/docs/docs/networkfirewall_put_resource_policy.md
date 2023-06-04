<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an IAM policy for your rule group or firewall policy

### Description

Creates or updates an IAM policy for your rule group or firewall policy.
Use this to share rule groups and firewall policies between accounts.
This operation works in conjunction with the Amazon Web Services
Resource Access Manager (RAM) service to manage resource sharing for
Network Firewall.

Use this operation to create or update a resource policy for your rule
group or firewall policy. In the policy, you specify the accounts that
you want to share the resource with and the operations that you want the
accounts to be able to perform.

When you add an account in the resource policy, you then run the
following Resource Access Manager (RAM) operations to access and accept
the shared rule group or firewall policy.

-   [GetResourceShareInvitations](https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html) -
    Returns the Amazon Resource Names (ARNs) of the resource share
    invitations.

-   [AcceptResourceShareInvitation](https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html) -
    Accepts the share invitation for a specified resource share.

For additional information about resource sharing using RAM, see
[Resource Access Manager User
Guide](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html).

### Usage

    networkfirewall_put_resource_policy(ResourceArn, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the account that you
want to share rule groups and firewall policies with.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_put_resource_policy_:_Policy">Policy</code></td>
<td><p>[required] The IAM policy statement that lists the accounts that
you want to share your rule group or firewall policy with and the
operations that you want the accounts to be able to perform.</p>
<p>For a rule group resource, you can specify the following operations
in the Actions section of the statement:</p>
<ul>
<li><p>network-firewall:CreateFirewallPolicy</p></li>
<li><p>network-firewall:UpdateFirewallPolicy</p></li>
<li><p>network-firewall:ListRuleGroups</p></li>
</ul>
<p>For a firewall policy resource, you can specify the following
operations in the Actions section of the statement:</p>
<ul>
<li><p>network-firewall:AssociateFirewallPolicy</p></li>
<li><p>network-firewall:ListFirewallPolicies</p></li>
</ul>
<p>In the Resource section of the statement, you specify the ARNs for
the rule groups and firewall policies that you want to share with the
account that you specified in <code>Arn</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_resource_policy(
      ResourceArn = "string",
      Policy = "string"
    )
