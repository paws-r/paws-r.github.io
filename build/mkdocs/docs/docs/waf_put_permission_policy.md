<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_put_permission_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic documentation

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Attaches an IAM policy to the specified resource. The only supported use
for this action is to share a RuleGroup across accounts.

The `put_permission_policy` is subject to the following restrictions:

-   You can attach only one policy with each `put_permission_policy`
    request.

-   The policy must include an `Effect`, `Action` and `Principal`.

-   `Effect` must specify `Allow`.

-   The `Action` in the policy must be `waf:UpdateWebACL`,
    `waf-regional:UpdateWebACL`, `waf:GetRuleGroup` and
    `waf-regional:GetRuleGroup` . Any extra or wildcard actions in the
    policy will be rejected.

-   The policy cannot include a `Resource` parameter.

-   The ARN in the request must be a valid WAF RuleGroup ARN and the
    RuleGroup must exist in the same region.

-   The user making the request must be the owner of the RuleGroup.

-   Your policy must be composed using IAM Policy version 2012-10-17.

For more information, see [IAM
Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

An example of a valid policy parameter is shown in the Examples section
below.

### Usage

    waf_put_permission_policy(ResourceArn, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_put_permission_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the RuleGroup to
which you want to attach the policy.</p></td>
</tr>
<tr class="even">
<td><code id="waf_put_permission_policy_:_Policy">Policy</code></td>
<td><p>[required] The policy to attach to the specified
RuleGroup.</p></td>
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
