<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_update_rule_group</td>
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

Inserts or deletes ActivatedRule objects in a `RuleGroup`.

You can only insert `REGULAR` rules into a rule group.

You can have a maximum of ten rules per rule group.

To create and configure a `RuleGroup`, perform the following steps:

1.  Create and update the `Rules` that you want to include in the
    `RuleGroup`. See `create_rule`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_rule_group` request.

3.  Submit an `update_rule_group` request to add `Rules` to the
    `RuleGroup`.

4.  Create and update a `WebACL` that contains the `RuleGroup`. See
    `create_web_acl`.

If you want to replace one `Rule` with another, you delete the existing
one and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_update_rule_group(RuleGroupId, Updates, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_update_rule_group_:_RuleGroupId">RuleGroupId</code></td>
<td><p>[required] The <code>RuleGroupId</code> of the RuleGroup that you
want to update. <code>RuleGroupId</code> is returned by
<code>create_rule_group</code> and by
<code>list_rule_groups</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_update_rule_group_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>RuleGroupUpdate</code> objects that
you want to insert into or delete from a RuleGroup.</p>
<p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
<p><code>ActivatedRule|OverrideAction</code> applies only when updating
or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this
case you do not use <code>ActivatedRule|Action</code>. For all other
update requests, <code>ActivatedRule|Action</code> is used instead of
<code>ActivatedRule|OverrideAction</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="waf_update_rule_group_:_ChangeToken">ChangeToken</code></td>
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

    svc$update_rule_group(
      RuleGroupId = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          ActivatedRule = list(
            Priority = 123,
            RuleId = "string",
            Action = list(
              Type = "BLOCK"|"ALLOW"|"COUNT"
            ),
            OverrideAction = list(
              Type = "NONE"|"COUNT"
            ),
            Type = "REGULAR"|"RATE_BASED"|"GROUP",
            ExcludedRules = list(
              list(
                RuleId = "string"
              )
            )
          )
        )
      ),
      ChangeToken = "string"
    )
