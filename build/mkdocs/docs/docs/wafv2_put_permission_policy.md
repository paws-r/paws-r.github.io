<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_put_permission_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an IAM policy to the specified resource

### Description

Attaches an IAM policy to the specified resource. Use this to share a
rule group across accounts.

You must be the owner of the rule group to perform this operation.

This action is subject to the following restrictions:

-   You can attach only one policy with each `put_permission_policy`
    request.

-   The ARN in the request must be a valid WAF RuleGroup ARN and the
    rule group must exist in the same Region.

-   The user making the request must be the owner of the rule group.

### Usage

    wafv2_put_permission_policy(ResourceArn, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_put_permission_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the RuleGroup to
which you want to attach the policy.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_put_permission_policy_:_Policy">Policy</code></td>
<td><p>[required] The policy to attach to the specified rule group.</p>
<p>The policy specifications must conform to the following:</p>
<ul>
<li><p>The policy must be composed using IAM Policy version
2012-10-17.</p></li>
<li><p>The policy must include specifications for <code>Effect</code>,
<code>Action</code>, and <code>Principal</code>.</p></li>
<li><p><code>Effect</code> must specify <code>Allow</code>.</p></li>
<li><p><code>Action</code> must specify <code>wafv2:CreateWebACL</code>,
<code>wafv2:UpdateWebACL</code>, and
<code>wafv2:PutFirewallManagerRuleGroups</code> and may optionally
specify <code>wafv2:GetRuleGroup</code>. WAF rejects any extra actions
or wildcard actions in the policy.</p></li>
<li><p>The policy must not include a <code>Resource</code>
parameter.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM
Policies</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_permission_policy(
      ResourceArn = "string",
      Policy = "string"
    )
