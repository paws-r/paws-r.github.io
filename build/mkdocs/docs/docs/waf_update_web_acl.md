<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_update_web_acl</td>
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

Inserts or deletes ActivatedRule objects in a `WebACL`. Each `Rule`
identifies web requests that you want to allow, block, or count. When
you update a `WebACL`, you specify the following values:

-   A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS
    WAF performs the default action if a request doesn't match the
    criteria in any of the `Rules` in a `WebACL`.

-   The `Rules` that you want to add or delete. If you want to replace
    one `Rule` with another, you delete the existing `Rule` and add the
    new one.

-   For each `Rule`, whether you want AWS WAF to allow requests, block
    requests, or count requests that match the conditions in the `Rule`.

-   The order in which you want AWS WAF to evaluate the `Rules` in a
    `WebACL`. If you add more than one `Rule` to a `WebACL`, AWS WAF
    evaluates each request against the `Rules` in order based on the
    value of `Priority`. (The `Rule` that has the lowest value for
    `Priority` is evaluated first.) When a web request matches all the
    predicates (such as `ByteMatchSets` and `IPSets`) in a `Rule`, AWS
    WAF immediately takes the corresponding action, allow or block, and
    doesn't evaluate the request against the remaining `Rules` in the
    `WebACL`, if any.

To create and configure a `WebACL`, perform the following steps:

1.  Create and update the predicates that you want to include in
    `Rules`. For more information, see `create_byte_match_set`,
    `update_byte_match_set`, `create_ip_set`, `update_ip_set`,
    `create_sql_injection_match_set`, and
    `update_sql_injection_match_set`.

2.  Create and update the `Rules` that you want to include in the
    `WebACL`. For more information, see `create_rule` and `update_rule`.

3.  Create a `WebACL`. See `create_web_acl`.

4.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_web_acl` request.

5.  Submit an `update_web_acl` request to specify the `Rules` that you
    want to include in the `WebACL`, to specify the default action, and
    to associate the `WebACL` with a CloudFront distribution.

    The `ActivatedRule` can be a rule group. If you specify a rule group
    as your `ActivatedRule` , you can exclude specific rules from that
    rule group.

    If you already have a rule group associated with a web ACL and want
    to submit an `update_web_acl` request to exclude certain rules from
    that rule group, you must first remove the rule group from the web
    ACL, the re-insert it again, specifying the excluded rules. For
    details, see ActivatedRule$ExcludedRules .

Be aware that if you try to add a RATE\_BASED rule to a web ACL without
setting the rule type when first creating the rule, the `update_web_acl`
request will fail because the request tries to add a REGULAR rule (the
default rule type) with the specified ID, which does not exist.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_update_web_acl(WebACLId, ChangeToken, Updates, DefaultAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_update_web_acl_:_WebACLId">WebACLId</code></td>
<td><p>[required] The <code>WebACLId</code> of the WebACL that you want
to update. <code>WebACLId</code> is returned by
<code>create_web_acl</code> and by <code>list_web_ac_ls</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_update_web_acl_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="waf_update_web_acl_:_Updates">Updates</code></td>
<td><p>An array of updates to make to the WebACL.</p>
<p>An array of <code>WebACLUpdate</code> objects that you want to insert
into or delete from a WebACL. For more information, see the applicable
data types:</p>
<ul>
<li><p>WebACLUpdate: Contains <code>Action</code> and
<code>ActivatedRule</code></p></li>
<li><p>ActivatedRule: Contains <code>Action</code>,
<code>OverrideAction</code>, <code>Priority</code>, <code>RuleId</code>,
and <code>Type</code>. <code>ActivatedRule|OverrideAction</code> applies
only when updating or adding a <code>RuleGroup</code> to a
<code>WebACL</code>. In this case, you do not use
<code>ActivatedRule|Action</code>. For all other update requests,
<code>ActivatedRule|Action</code> is used instead of
<code>ActivatedRule|OverrideAction</code>.</p></li>
<li><p>WafAction: Contains <code>Type</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="waf_update_web_acl_:_DefaultAction">DefaultAction</code></td>
<td><p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF
performs the default action if a request doesn't match the criteria in
any of the rules in a web ACL.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$update_web_acl(
      WebACLId = "string",
      ChangeToken = "string",
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
      DefaultAction = list(
        Type = "BLOCK"|"ALLOW"|"COUNT"
      )
    )

### Examples

    ## Not run: 
    # The following example deletes an ActivatedRule object in a WebACL with
    # the ID webacl-1472061481310.
    svc$update_web_acl(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      DefaultAction = list(
        Type = "ALLOW"
      ),
      Updates = list(
        list(
          Action = "DELETE",
          ActivatedRule = list(
            Action = list(
              Type = "ALLOW"
            ),
            Priority = 1L,
            RuleId = "WAFRule-1-Example"
          )
        )
      ),
      WebACLId = "webacl-1472061481310"
    )

    ## End(Not run)
