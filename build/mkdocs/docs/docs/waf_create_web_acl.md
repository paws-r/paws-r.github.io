<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_create_web_acl</td>
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

Creates a `WebACL`, which contains the `Rules` that identify the
CloudFront web requests that you want to allow, block, or count. AWS WAF
evaluates `Rules` in order based on the value of `Priority` for each
`Rule`.

You also specify a default action, either `ALLOW` or `BLOCK`. If a web
request doesn't match any of the `Rules` in a `WebACL`, AWS WAF responds
to the request with the default action.

To create and configure a `WebACL`, perform the following steps:

1.  Create and update the `ByteMatchSet` objects and other predicates
    that you want to include in `Rules`. For more information, see
    `create_byte_match_set`, `update_byte_match_set`, `create_ip_set`,
    `update_ip_set`, `create_sql_injection_match_set`, and
    `update_sql_injection_match_set`.

2.  Create and update the `Rules` that you want to include in the
    `WebACL`. For more information, see `create_rule` and `update_rule`.

3.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_web_acl` request.

4.  Submit a `create_web_acl` request.

5.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_web_acl` request.

6.  Submit an `update_web_acl` request to specify the `Rules` that you
    want to include in the `WebACL`, to specify the default action, and
    to associate the `WebACL` with a CloudFront distribution.

For more information about how to use the AWS WAF API, see the [AWS WAF
Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_create_web_acl(Name, MetricName, DefaultAction, ChangeToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_create_web_acl_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the WebACL. You
can't change <code>Name</code> after you create the
<code>WebACL</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_web_acl_:_MetricName">MetricName</code></td>
<td><p>[required] A friendly name or description for the metrics for
this <code>WebACL</code>.The name can contain only alphanumeric
characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length
one. It can't contain whitespace or metric names reserved for AWS WAF,
including "All" and "Default_Action." You can't change
<code>MetricName</code> after you create the
<code>WebACL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="waf_create_web_acl_:_DefaultAction">DefaultAction</code></td>
<td><p>[required] The action that you want AWS WAF to take when a
request doesn't match the criteria specified in any of the
<code>Rule</code> objects that are associated with the
<code>WebACL</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_web_acl_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="waf_create_web_acl_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WebACL = list(
        WebACLId = "string",
        Name = "string",
        MetricName = "string",
        DefaultAction = list(
          Type = "BLOCK"|"ALLOW"|"COUNT"
        ),
        Rules = list(
          list(
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
        ),
        WebACLArn = "string"
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_web_acl(
      Name = "string",
      MetricName = "string",
      DefaultAction = list(
        Type = "BLOCK"|"ALLOW"|"COUNT"
      ),
      ChangeToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example creates a web ACL named CreateExample.
    svc$create_web_acl(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      DefaultAction = list(
        Type = "ALLOW"
      ),
      MetricName = "CreateExample",
      Name = "CreateExample"
    )

    ## End(Not run)
