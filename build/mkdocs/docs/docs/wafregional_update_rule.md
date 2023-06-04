<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_update_rule</td>
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

Inserts or deletes Predicate objects in a `Rule`. Each `Predicate`
object identifies a predicate, such as a ByteMatchSet or an IPSet, that
specifies the web requests that you want to allow, block, or count. If
you add more than one predicate to a `Rule`, a request must match all of
the specifications to be allowed, blocked, or counted. For example,
suppose that you add the following to a `Rule`:

-   A `ByteMatchSet` that matches the value `BadBot` in the `User-Agent`
    header

-   An `IPSet` that matches the IP address `⁠192.0.2.44⁠`

You then add the `Rule` to a `WebACL` and specify that you want to block
requests that satisfy the `Rule`. For a request to be blocked, the
`User-Agent` header in the request must contain the value `BadBot` *and*
the request must originate from the IP address 192.0.2.44.

To create and configure a `Rule`, perform the following steps:

1.  Create and update the predicates that you want to include in the
    `Rule`.

2.  Create the `Rule`. See `create_rule`.

3.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_rule` request.

4.  Submit an `update_rule` request to add predicates to the `Rule`.

5.  Create and update a `WebACL` that contains the `Rule`. See
    `create_web_acl`.

If you want to replace one `ByteMatchSet` or `IPSet` with another, you
delete the existing one and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_update_rule(RuleId, ChangeToken, Updates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafregional_update_rule_:_RuleId">RuleId</code></td>
<td><p>[required] The <code>RuleId</code> of the <code>Rule</code> that
you want to update. <code>RuleId</code> is returned by
<code>create_rule</code> and by <code>list_rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_update_rule_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="wafregional_update_rule_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>RuleUpdate</code> objects that you
want to insert into or delete from a Rule. For more information, see the
applicable data types:</p>
<ul>
<li><p>RuleUpdate: Contains <code>Action</code> and
<code>Predicate</code></p></li>
<li><p>Predicate: Contains <code>DataId</code>, <code>Negated</code>,
and <code>Type</code></p></li>
<li><p>FieldToMatch: Contains <code>Data</code> and
<code>Type</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$update_rule(
      RuleId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          Predicate = list(
            Negated = TRUE|FALSE,
            Type = "IPMatch"|"ByteMatch"|"SqlInjectionMatch"|"GeoMatch"|"SizeConstraint"|"XssMatch"|"RegexMatch",
            DataId = "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example deletes a Predicate object in a rule with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$update_rule(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      RuleId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
      Updates = list(
        list(
          Action = "DELETE",
          Predicate = list(
            DataId = "MyByteMatchSetID",
            Negated = FALSE,
            Type = "ByteMatch"
          )
        )
      )
    )

    ## End(Not run)
