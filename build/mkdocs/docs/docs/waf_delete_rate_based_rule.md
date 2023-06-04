<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_delete_rate_based_rule</td>
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

Permanently deletes a RateBasedRule. You can't delete a rule if it's
still used in any `WebACL` objects or if it still includes any
predicates, such as `ByteMatchSet` objects.

If you just want to remove a rule from a `WebACL`, use `update_web_acl`.

To permanently delete a `RateBasedRule` from AWS WAF, perform the
following steps:

1.  Update the `RateBasedRule` to remove predicates, if any. For more
    information, see `update_rate_based_rule`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_rate_based_rule` request.

3.  Submit a `delete_rate_based_rule` request.

### Usage

    waf_delete_rate_based_rule(RuleId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_delete_rate_based_rule_:_RuleId">RuleId</code></td>
<td><p>[required] The <code>RuleId</code> of the RateBasedRule that you
want to delete. <code>RuleId</code> is returned by
<code>create_rate_based_rule</code> and by
<code>list_rate_based_rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_delete_rate_based_rule_:_ChangeToken">ChangeToken</code></td>
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

    svc$delete_rate_based_rule(
      RuleId = "string",
      ChangeToken = "string"
    )
