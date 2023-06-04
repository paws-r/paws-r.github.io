<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_delete_rule</td>
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

Permanently deletes a Rule. You can't delete a `Rule` if it's still used
in any `WebACL` objects or if it still includes any predicates, such as
`ByteMatchSet` objects.

If you just want to remove a `Rule` from a `WebACL`, use
`update_web_acl`.

To permanently delete a `Rule` from AWS WAF, perform the following
steps:

1.  Update the `Rule` to remove predicates, if any. For more
    information, see `update_rule`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_rule` request.

3.  Submit a `delete_rule` request.

### Usage

    wafregional_delete_rule(RuleId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafregional_delete_rule_:_RuleId">RuleId</code></td>
<td><p>[required] The <code>RuleId</code> of the Rule that you want to
delete. <code>RuleId</code> is returned by <code>create_rule</code> and
by <code>list_rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_delete_rule_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$delete_rule(
      RuleId = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a rule with the ID WAFRule-1-Example.
    svc$delete_rule(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      RuleId = "WAFRule-1-Example"
    )

    ## End(Not run)
