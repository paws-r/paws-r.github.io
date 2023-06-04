<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_create_rule</td>
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

Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet`
objects, and other predicates that identify the requests that you want
to block. If you add more than one predicate to a `Rule`, a request must
match all of the specifications to be allowed or blocked. For example,
suppose that you add the following to a `Rule`:

-   An `IPSet` that matches the IP address `⁠192.0.2.44/32⁠`

-   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

You then add the `Rule` to a `WebACL` and specify that you want to
blocks requests that satisfy the `Rule`. For a request to be blocked, it
must come from the IP address 192.0.2.44 *and* the `User-Agent` header
in the request must contain the value `BadBot`.

To create and configure a `Rule`, perform the following steps:

1.  Create and update the predicates that you want to include in the
    `Rule`. For more information, see `create_byte_match_set`,
    `create_ip_set`, and `create_sql_injection_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_rule` request.

3.  Submit a `create_rule` request.

4.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_rule` request.

5.  Submit an `update_rule` request to specify the predicates that you
    want to include in the `Rule`.

6.  Create and update a `WebACL` that contains the `Rule`. For more
    information, see `create_web_acl`.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_create_rule(Name, MetricName, ChangeToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_create_rule_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the Rule. You can't
change the name of a <code>Rule</code> after you create it.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_rule_:_MetricName">MetricName</code></td>
<td><p>[required] A friendly name or description for the metrics for
this <code>Rule</code>. The name can contain only alphanumeric
characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length
one. It can't contain whitespace or metric names reserved for AWS WAF,
including "All" and "Default_Action." You can't change the name of the
metric after you create the <code>Rule</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="waf_create_rule_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_rule_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rule = list(
        RuleId = "string",
        Name = "string",
        MetricName = "string",
        Predicates = list(
          list(
            Negated = TRUE|FALSE,
            Type = "IPMatch"|"ByteMatch"|"SqlInjectionMatch"|"GeoMatch"|"SizeConstraint"|"XssMatch"|"RegexMatch",
            DataId = "string"
          )
        )
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_rule(
      Name = "string",
      MetricName = "string",
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
    # The following example creates a rule named WAFByteHeaderRule.
    svc$create_rule(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      MetricName = "WAFByteHeaderRule",
      Name = "WAFByteHeaderRule"
    )

    ## End(Not run)
